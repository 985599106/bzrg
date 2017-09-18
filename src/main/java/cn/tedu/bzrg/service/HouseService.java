package cn.tedu.bzrg.service;

import java.util.List;

import cn.tedu.bzrg.pojo.House;

public interface HouseService {

	/**
	 * 根据传入信息查询房子
	 * @param house
	 * @return 房子列表
	 */
	List<House> findHouse(House house);
	/**
	 * 根据房屋id查找房屋
	 * @param houseId 房屋id
	 * @return	房屋信息
	 */
	House findHouseById(String houseId);
	/**
	 * 查找所有房屋信息
	 * @return 房屋列表
	 */
	List<House> findAllHouse();

}
