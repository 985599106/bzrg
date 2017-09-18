package cn.tedu.bzrg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.tedu.bzrg.pojo.House;
import cn.tedu.bzrg.pojo.OrderItem;

public interface OrderMapper {
	/**
	 * 添加订单表
	 * @param orderId	订单id
	 * @param houseId	房屋信息
	 * @param dayNumber	天数
	 * @param totalPrice	总价钱
	 */
	void saveOrderItem(@Param("orderId")String orderId,@Param("house")House house,@Param("dayNumber")Integer dayNumber,@Param("totalPrice")Double totalPrice);
	/**
	 * 修改房屋状态
	 * @param state
	 */
	void updateHouseState(@Param("orderId")String orderId,@Param("state")int state);
	/**
	 * 删除订单信息
	 * @param orderId
	 */
	@Delete("delete from order_item where order_id=#{orderId}")
	void deleteOrderItem(String orderId);
	/**
	 * 根据用户id查询订单信息
	 * @param userId 用户id
	 * @return 返回订单信息
	 */
	List<OrderItem> findOrderItemByUserId(@Param("userId")String userId);
	
}
