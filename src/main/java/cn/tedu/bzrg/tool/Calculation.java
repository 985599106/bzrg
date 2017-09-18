package cn.tedu.bzrg.tool;

import java.util.Date;

public class Calculation {
	/**
	 * 计算天数
	 * @param date1 开始天数
	 * @param date2 结束天数
	 * @return 相差天数
	 */
	public static int BetweenTwoDate(Date date1,Date date2){
		int days = (int)((date2.getTime()-date1.getTime())/(1000*3600*24));
		return days;
	}
	/**
	 * 计算总价钱
	 * @param dayNumber 天数
	 * @param price 每天钱数(单价)
	 * @return 总价钱
	 */
	public static double TotalPrice(int dayNumber,double price){
		return dayNumber*price;
	}
}
