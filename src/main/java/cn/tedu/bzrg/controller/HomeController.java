package cn.tedu.bzrg.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {

	//转向欢迎页面
	@RequestMapping("/toLogin")
	public String homeIndex(){
		return "/home";
	}
	
	//转向注册页面
	@RequestMapping("/toRegist")
	public String toRegist(){
		return "/user/regist";
	}
	@RequestMapping("/story")
	public String toStory(){
		return "/story/story";
	}
	
	
}
