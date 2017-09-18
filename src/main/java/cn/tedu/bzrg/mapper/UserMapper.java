package cn.tedu.bzrg.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.tedu.bzrg.pojo.User;

public interface UserMapper {
	/**
	 * 根据用户名查找用户
	 * @param userName 用户名
	 * @return 用户
	 */
	@Select("select * from user where user_name=#{userName}")
	public User findUserByUserName(String userName);
	/**
	 * 添加用户
	 * @param user 用户
	 */
	public void addUser(User user);
	/**
	 * 添加用户订单表
	 * @param userId 用户id
	 * @param orderId 订单id(订单号)
	 */
	public void saveUserOrder(@Param("userId")String userId,@Param("orderId")String orderId);
	/**
	 * 根据订单id删除用户订单表信息
	 * @param orderId
	 */
	@Delete("delete from user_order where order_id = #{orderId}")
	public void deleteUserOrder(String orderId);
	

}
