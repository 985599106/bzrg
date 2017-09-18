package cn.tedu.bzrg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.bzrg.pojo.House;
import cn.tedu.bzrg.service.HouseService;

@Controller
@RequestMapping("/house")
public class HouseController extends BaseController{
	
	@Autowired
	private HouseService houseService;
	
	@RequestMapping("/findCity")
	public String findHouse(House house,Model model){
		List<House> houseList = houseService.findHouse(house);
		for(House h : houseList){
			if(h.getRemark().length()>22){
				h.setRemark(h.getRemark().substring(0, 22));
			}
		}
		model.addAttribute("houseList",houseList);
		return "/house/jHouseList";
	}
	
	@RequestMapping("/toHouseInfo")
	public String toHouseInfo(String houseId,Model model){
		House house = houseService.findHouseById(houseId);
		model.addAttribute("house",house);
		return "/house/jHouseInfo";
	}
	
	@RequestMapping("/list")
	public String toHouseList(Model model){
		List<House> houseList = houseService.findAllHouse();
		for(House h : houseList){
			if(h.getRemark().length()>22){
				h.setRemark(h.getRemark().substring(0, 22));
			}
		}
		model.addAttribute("houseList",houseList);
		return "/house/jHouseList";
	}
}
