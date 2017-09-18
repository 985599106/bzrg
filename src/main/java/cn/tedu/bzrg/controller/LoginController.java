package cn.tedu.bzrg.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.bzrg.pojo.User;
import cn.tedu.bzrg.service.UserService;
import cn.tedu.bzrg.tool.VerifyCode;


@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public void toLogin(String userName,String password,HttpServletRequest request,HttpServletResponse response) throws IOException{
		User user=userService.findUserByUserName(userName);
		if(user==null){
			response.getWriter().write("false");
		}else if(user.getPassword().equals(password)){
			request.getSession().setAttribute("user",user);
			response.getWriter().write("true");
		}else if(!user.getPassword().equals(password)){
			response.getWriter().write("false");
		}else{
			response.getWriter().write("error");
		}
	}
	
	//生成验证码
	@RequestMapping("/toVerifyCode")
	public void toVerifyCode(HttpServletResponse response,HttpSession session) throws IOException{
		VerifyCode vc=new VerifyCode();
		//2、绘制图片，生成验证码字符串
		vc.drawImage(response.getOutputStream());
		//3、获取验证码的字符串
		String code = vc.getCode();
		System.out.println(code);
		//将code保存到session中，以便注册的servlet中验证使用
		session.setAttribute("code", code);
	}
 	//注册
	@RequestMapping("/register")
	public void toRegister(User user,String valistr,HttpServletResponse response,HttpSession session) throws IOException{
		System.out.println("userName="+user.getUserName());
		//验证验证码
		String code = (String) session.getAttribute("code");
		if (!(code!=null && valistr.equalsIgnoreCase(code))) {
			System.out.println(valistr);
			response.getWriter().write("error");
			return;
		}
		//生成用户ID
		user.setUserId(UUID.randomUUID().toString());
		//添加用户
		userService.addUser(user);
	}
	
	@RequestMapping("/checkUserName")
	public void checkUserName(HttpServletResponse response,String userName) throws IOException{
		User user = userService.findUserByUserName(userName);
		if(user==null){
			response.getWriter().write("false");
		}else{
			response.getWriter().write("true");
		}
	}
}
