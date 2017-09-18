<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />


<html>
  <head>
    <title>订单添加页</title>
 	<link href="${ctx }/css/addOrder.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="warp">
		<form name="form1" method="post" action="/pay">
			<h3>增加订单</h3>
			<div id="forminfo">
				<span class="lf">收货地址：</span> <label for="textarea"></label>
				<textarea name="receiverinfo" id="textarea" cols="45" rows="5"></textarea>
				<br> 支付方式：<input name="" type="radio" value="" checked="checked">&nbsp;在线支付
			</div>
			<div class="eXtremeTable" >
            <table id="ec_table" class="tableRegion" width="98%" >
	            <thead>
	   <tr>
		<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('orderId',this)"></td>
		<td class="tableHeader">订单id</td>
		<td class="tableHeader">商品id</td>
		<td class="tableHeader">商品单价</td>
		<td class="tableHeader">商品总价</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<c:forEach items="${orderItem}" var="order" varStatus="status">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
		<td><input type="checkbox" name="orderId" value="${order.orderId}"/></td>
		<td>${order.orderId}</td>
		<td>${order.houseId}</td>
		<td>${order.totalPrice}</td>
		<td>${order.daynumber}</td>
	</tr>
	</c:forEach>
	
	</tbody>
</table>
</div>
 
</div>
 
 
</form>

</body>
</html>

