package cn.tedu.bzrg.service;

import java.util.List;

import cn.tedu.bzrg.pojo.House;
import cn.tedu.bzrg.pojo.OrderItem;

public interface OrderService {
	/**
	 * 保存房屋订单
	 * @param house 房屋信息
	 * @param dayNumber	天数
	 * @param totalPrice	总价格
	 * @param userId	用户ID
	 */
	void saveOrderItem(House house, int dayNumber, Double totalPrice, String userId);
	/**
	 * 保存房屋订单
	 * @param orderItem 订单信息
 	 */
	void save(OrderItem orderItem,String userId,House house);
	/**
	 * 修改房屋状态
	 * @param state
	 */
	void updateHouseState(String orderId,int state);
	/**
	 * 根据订单id删除相关数据
	 * @param r6_Order
	 */
	void deleteOrderItem(String orderId);
	/**
	 * 根据用户id查询订单信息
	 * @param userId 用户id
	 * @return 订单信息
	 */
	List<OrderItem> findOrderItemByUserId(String userId);

}
