package cn.tedu.bzrg.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.bzrg.pojo.OrderItem;
import cn.tedu.bzrg.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/list")
	public String OrderList(String userId,Model model,HttpSession session){
		if (session.getAttribute("user")==null) {
			return "redirect:/index.jsp";
		}
		
		List<OrderItem> orderItemList = orderService.findOrderItemByUserId(userId);
		model.addAttribute("orderItemList",orderItemList);
		return "/order/orderList";
	}
}
