package cn.tedu.bzrg.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.bzrg.mapper.HouseMapper;
import cn.tedu.bzrg.mapper.OrderMapper;
import cn.tedu.bzrg.mapper.UserMapper;
import cn.tedu.bzrg.pojo.House;
import cn.tedu.bzrg.pojo.OrderItem;



@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private HouseMapper houseMapper;
	
	@Override
	public void saveOrderItem(House house, int dayNumber, Double totalPrice, String userId) {
		String orderId = UUID.randomUUID().toString();
		userMapper.saveUserOrder(userId,orderId);
		houseMapper.saveHouseOrder(house.getHouseId(),orderId);
		orderMapper.saveOrderItem(orderId,house,dayNumber,totalPrice);
	}

	@Override
	public void save(OrderItem orderItem,String userId,House house) {
		userMapper.saveUserOrder(userId,orderItem.getOrderId());
		houseMapper.saveHouseOrder(house.getHouseId(),orderItem.getOrderId());
		orderMapper.saveOrderItem(orderItem.getOrderId(),house,orderItem.getDayNumber(),orderItem.getTotalPrice());
	}

	@Override
	public void updateHouseState(String orderId,int state) {
		orderMapper.updateHouseState(orderId,state);
	}

	@Override
	public void deleteOrderItem(String orderId) {
		userMapper.deleteUserOrder(orderId);
		houseMapper.deleteHouseOrder(orderId);
		orderMapper.deleteOrderItem(orderId);
	}

	@Override
	public List<OrderItem> findOrderItemByUserId(String userId) {
		return orderMapper.findOrderItemByUserId(userId);
	}

}
