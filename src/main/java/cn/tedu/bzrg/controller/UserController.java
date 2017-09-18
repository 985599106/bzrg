package cn.tedu.bzrg.controller;

import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.bzrg.pojo.House;
import cn.tedu.bzrg.pojo.OrderItem;
import cn.tedu.bzrg.service.OrderService;
import cn.tedu.bzrg.tool.Calculation;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

	@Autowired
	private OrderService orderService;

	@RequestMapping("/toOrderItem")
	public String toOrderItem(House house, String userId) {
		int dayNumber = Calculation.BetweenTwoDate(house.getStartTime(), house.getEndTime());
		Double totalPrice = Calculation.TotalPrice(dayNumber, house.getPrice());
		orderService.saveOrderItem(house, dayNumber, totalPrice, userId);
		return "redirect:/order/list?userId="+userId;
	}

	@RequestMapping("/toPay")
	public String toPay(House house, String userId, Model model) {
		OrderItem orderItem = new OrderItem();
		Date startTime = null;
		Date endTime = null;
		if(house.getStartTime()!=null){
			startTime = house.getStartTime();
			endTime = house.getEndTime();
		}else{
			startTime = house.getStartTime1();
			endTime = house.getEndTime1();
		}
		int dayNumber = Calculation.BetweenTwoDate(startTime, endTime);
		Double totalPrice = Calculation.TotalPrice(dayNumber, house.getPrice());
		String orderId = UUID.randomUUID().toString();
		orderItem.setDayNumber(dayNumber);
		orderItem.setTotalPrice(totalPrice);
		orderItem.setOrderId(orderId);
		orderItem.setHouseId(house.getHouseId());
		orderService.save(orderItem, userId, house);
		model.addAttribute("orderId", orderId);
		model.addAttribute("totalPrice", totalPrice);
		return "/user/userPay";
	}
	
	@RequestMapping("/AllPay")
	public String AllPay(String submitOrderId,Model model){
		String orderId = submitOrderId.substring(1);
		model.addAttribute("orderId",orderId);
		model.addAttribute("totalPrice",0.01);
		return "/user/userPay";
	}
}
