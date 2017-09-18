package cn.tedu.bzrg.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;

import cn.tedu.bzrg.pojo.House;

public interface HouseMapper {
	/**
	 * 根据条件查找房屋
	 * @param city	城市
	 * @param startTime	入住时间
	 * @param houseType	退房时间
	 * @return	房屋列表
	 */
	List<House> findHouse(@Param("city")String city,@Param("startTime")Date startTime,@Param("houseType")String houseType);
	/**
	 * 根据房屋id查找房屋
	 * @param houseId	房屋id
	 * @return 房屋
	 */
	House findHouseById(@Param("houseId")String houseId);
	/**
	 * 添加房屋订单表
	 * @param houseId	房屋id
	 * @param orderId	订单id(订单号)
	 */
	void saveHouseOrder(@Param("houseId")String houseId,@Param("orderId")String orderId);
	/**
	 * 查找所有的房屋
	 * @return	返回房屋类表
	 */
	List<House> findAllHouse();
	/**
	 * 删除房屋订单表信息
	 * @param orderId
	 */
	@Delete("delete from house_order where order_id=#{orderId}")
	void deleteHouseOrder(String orderId);

}
