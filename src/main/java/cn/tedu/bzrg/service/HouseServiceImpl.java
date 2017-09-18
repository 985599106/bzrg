package cn.tedu.bzrg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.bzrg.mapper.HouseMapper;
import cn.tedu.bzrg.pojo.House;
@Service
public class HouseServiceImpl implements HouseService{

	@Autowired
	private HouseMapper houseMapper;
	
	@Override
	public List<House> findHouse(House house) {
		return houseMapper.findHouse(house.getCity(),house.getStartTime(),house.getHouseType());
	}

	@Override
	public House findHouseById(String houseId) {
		return houseMapper.findHouseById(houseId);
	}

	@Override
	public List<House> findAllHouse() {
		return houseMapper.findAllHouse();
	}
	

}
