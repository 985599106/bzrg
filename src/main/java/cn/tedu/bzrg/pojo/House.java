package cn.tedu.bzrg.pojo;

import java.util.Date;

public class House {
	
	private String houseId;
	private String city;
	private String houseType;
	private Double price;
	private String imgUrl;
	private String address;
	private String remark;
	private Integer state;
	private Date startTime;
	private Date startTime1;
	private Date endTime1;
	private Date endTime;
	private User user;
	private UserInfo userInfo;
	
	
	public Date getStartTime1() {
		return startTime1;
	}
	public void setStartTime1(Date startTime1) {
		this.startTime1 = startTime1;
	}
	public Date getEndTime1() {
		return endTime1;
	}
	public void setEndTime1(Date endTime1) {
		this.endTime1 = endTime1;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public String getHouseId() {
		return houseId;
	}
	public void setHouseId(String houseId) {
		this.houseId = houseId;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	@Override
	public String toString() {
		return "House [houseId=" + houseId + ", city=" + city + ", houseType=" + houseType + ", price=" + price
				+ ", imgUrl=" + imgUrl + ", address=" + address + ", remark=" + remark + ", state=" + state
				+ ", startTime=" + startTime + ", endTime=" + endTime + ", userInfo=" + userInfo + "]";
	}
	
}