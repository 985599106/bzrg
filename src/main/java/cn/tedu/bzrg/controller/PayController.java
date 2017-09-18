package cn.tedu.bzrg.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.tedu.bzrg.service.OrderService;
import cn.tedu.bzrg.tool.PaymentUtil;

@Controller
@RequestMapping("/pay")
public class PayController {
	
	@Autowired
	private OrderService orderService;
	
	private static Properties prop;
	static {
		prop = new Properties();
		String path = PayController.class.getClassLoader().getResource("merchantInfo.properties").getPath();
		try {
			prop.load(new FileInputStream(new File(path)));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/true")
	public String TruePay(String orderId, @RequestParam(value = "pd_FrpId") String pf, Model model) {
		System.out.println(pf);
		System.out.println(prop.toString());
		System.out.println(orderId);
		// 3.准备第三方平台需要参数
		String p0_Cmd = "Buy";
		String p1_MerId = prop.getProperty("p1_MerId");
		String p2_Order = orderId;// 订单id
		// 测试使用0.01
		String p3_Amt = "0.01";// 支付金额
		// 正式使用改回来
		String p4_Cur = "CNY";// 人民币
		String p5_Pid = "";// 商品名称
		String p6_Pcat = "";// 商品种类
		String p7_Pdesc = "";// 商品描述
		String p8_Url = prop.getProperty("responseURL");
		String p9_SAF = "";
		String pa_MP = "";
		String pd_FrpId = pf;
		String pr_NeedResponse = "1";
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc,
				p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse, prop.getProperty("keyValue"));
		model.addAttribute("pd_FrpId", pd_FrpId);
		model.addAttribute("p0_Cmd", p0_Cmd);
		model.addAttribute("p1_MerId", p1_MerId);
		model.addAttribute("p2_Order", p2_Order);
		model.addAttribute("p3_Amt", p3_Amt);
		model.addAttribute("p4_Cur", p4_Cur);
		model.addAttribute("p5_Pid", p5_Pid);
		model.addAttribute("p6_Pcat", p6_Pcat);
		model.addAttribute("p7_Pdesc", p7_Pdesc);
		model.addAttribute("p8_Url", p8_Url);
		model.addAttribute("p9_SAF", p9_SAF);
		model.addAttribute("pa_MP", pa_MP);
		model.addAttribute("pr_NeedResponse", pr_NeedResponse);
		model.addAttribute("hmac", hmac);
		return "/user/confirm";
	}

	@RequestMapping("/CallBack")
	public String CallBack(HttpServletRequest request,Model model) {
		String p1_MerId = request.getParameter("p1_MerId");
		String r0_Cmd = request.getParameter("r0_Cmd");
		String r1_Code = request.getParameter("r1_Code");
		String r2_TrxId = request.getParameter("r2_TrxId");
		String r3_Amt = request.getParameter("r3_Amt");
		String r4_Cur = request.getParameter("r4_Cur");
		String r5_Pid = request.getParameter("r5_Pid");
		String r6_Order = request.getParameter("r6_Order");
		String r7_Uid = request.getParameter("r7_Uid");
		String r8_MP = request.getParameter("r8_MP");
		String r9_BType = request.getParameter("r9_BType");
		String rb_BankId = request.getParameter("rb_BankId");
		String ro_BankOrderId = request.getParameter("ro_BankOrderId");
		String rp_PayDate = request.getParameter("rp_PayDate");
		String rq_CardNo = request.getParameter("rq_CardNo");
		String ru_Trxtime = request.getParameter("ru_Trxtime");
		String hmac = request.getParameter("hmac");
		String keyValue = prop.getProperty("keyValue");
		boolean result = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd, r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid,
				r6_Order, r7_Uid, r8_MP, r9_BType, keyValue);
		if (result) {
			if ("1".equals(r9_BType)) {
				// 测试保留，部署前删除！！！！
				// 修改库存
				// 1表示已经支付
				orderService.updateHouseState(r6_Order,1);
				model.addAttribute("result",1);
				return "/pay/success";
			} else if ("2".equals(r9_BType)) {// 点对点通讯
				if ("1".equals(r1_Code)) {
					// 1表示已经支付
					orderService.updateHouseState(r6_Order,1);
					model.addAttribute("result",1);
					return "/pay/success";
				} else {// 支付失败
					orderService.deleteOrderItem(r6_Order);
					System.out.println("支付失败！");
					model.addAttribute("result",2);
					return "/pay/success";
				}
			}
		} else {
			orderService.deleteOrderItem(r6_Order);
			System.out.println("数据被篡改！！");
			return "/pay/success";
		}
		return "/pay/success";
	}
	
}
 
