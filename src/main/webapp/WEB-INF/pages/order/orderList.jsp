<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>宾至如归</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,300'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="${ctx }/staticfile/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="${ctx }/staticfile/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="${ctx }/staticfile/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="${ctx }/staticfile/css/superfish.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="${ctx }/staticfile/css/flexslider.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="${ctx }/staticfile/css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="${ctx }/staticfile/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="${ctx }/staticfile/css/cs-select.css">
<link rel="stylesheet" href="${ctx }/staticfile/css/cs-skin-border.css">

<link rel="stylesheet" href="${ctx }/staticfile/css/style.css">

<!--后加login/regist-->
<link href="${ctx }/staticfile/bootstrap3/css/bootstrap.css"
	rel="stylesheet" />

<link href="${ctx }/staticfile/css/login-register.css" rel="stylesheet" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<script type="text/javascript"
	src="${ctx}/staticfile/js/datepicker/WdatePicker.js"></script>
<script src="${ctx }/staticfile/jquery/jquery-1.10.2.js"
	type="text/javascript"></script>
<script src="${ctx }/staticfile/bootstrap3/js/bootstrap.js"
	type="text/javascript"></script>
<script src="${ctx }/staticfile/js/login-register.js"
	type="text/javascript"></script>
<!-- Modernizr JS -->
<script src="${ctx }/staticfile/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<header id="fh5co-header-section" class="sticky-banner">
				<div class="container">
					<div class="nav-header" style="padding-bottom: 20px">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="${ctx }/toLogin"><i class="icon-home"></i>宾至<span>如归</span></a>
						</h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active"><a href="${ctx }/toLogin">Home</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>
			<form action="/user/AllPay" method="post">
				<div class="container">
					<table class="table table-striped">
						<tr>
							<td style="width: 50px"></td>
							<td>订单ID</td>
							<td>城市</td>
							<td>房间类型</td>
							<td>价格</td>
							<td>地址</td>
							<td>入住时间</td>
							<td>退房时间</td>
							<td>总天数</td>
							<td>总价(￥)</td>
						</tr>
						<c:forEach items="${orderItemList }" var="o" varStatus="status">
							<tr>
								<td><input type="checkbox" name="orderId"
									onclick="addMoney(this)" /> <input type="hidden"
									value="${o.totalPrice }" /> <input type="hidden" value="0" />
									<input type="hidden" value="${o.orderId }"/>
								</td>
								<td>${o.orderId }</td>
								<td>${o.house.city }</td>
								<td>${o.house.houseType }</td>
								<td>${o.house.price }</td>
								<td>${o.house.address }</td>
								<td><fmt:formatDate value="${o.house.startTime}" pattern="yyyy/MM/dd" /></td>
								<td><fmt:formatDate value="${o.house.endTime }" pattern="yyyy/MM/dd" /></td>
								<td>${o.dayNumber }</td>
								<td>${o.totalPrice }</td>
								<c:set var="money" value="${money+o.totalPrice}" />
								<c:set var="sOrderId" value="${sOrderId },${o.orderId }"></c:set>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div id="total" class="container">
					<div id="total_1" class="row">
						<div class="col-xs-6">
							<input name="allC" type="checkbox"
								onclick="checkAll('orderId',this);addAll()" /> <span>全选</span>
						</div>
						<div class="col-xs-6 text-right">
							<a id="del_a" href="#">删除选中的商品</a> <span id="span_1">总价：(￥)</span>
							<span id="span_2"></span> 
							<input type="hidden" id="finalMoney" value="${money }" /> 
							<input type="hidden" id="final_flag" value="0" /> 
								<input type="hidden" id="pre" value="0" /> 
								<input type="hidden" name="submitOrderId" value="${sOrderId }"/>
								<input type="submit" id="goto_order" class="btn btn-danger" value="去结算"></input>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>


	<!-- jQuery -->

	<script src="${ctx }/staticfile/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="${ctx }/staticfile/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="${ctx }/staticfile/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="${ctx }/staticfile/js/jquery.waypoints.min.js"></script>
	<script src="${ctx }/staticfile/js/sticky.js"></script>
	<!-- Superfish -->
	<script src="${ctx }/staticfile/js/hoverIntent.js"></script>
	<script src="${ctx }/staticfile/js/superfish.js"></script>
	<!-- Flexslider -->
	<script src="${ctx }/staticfile/js/jquery.flexslider-min.js"></script>
	<!-- Date Picker -->
	<script src="${ctx }/staticfile/js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="${ctx }/staticfile/js/classie.js"></script>
	<script src="${ctx }/staticfile/js/selectFx.js"></script>

	<!-- Main JS -->
	<script src="${ctx }/staticfile/js/main.js"></script>
	<script type="text/javascript">
		function checkAll(who, obj) {
			var curCheckBox = document.getElementsByName(who);
			for (i = 0; i < curCheckBox.length; i++) {
				curCheckBox.item(i).checked = obj.checked;
			}
			var value = $("#finalMoney").val();
			var flag = $("#final_flag").val();
			if (flag == "0") {
				$("#span_2").text(value);
				$("#final_flag").val(1);
			} else {
				$("#span_2").text("");
				$("#final_flag").val(0);
			}
		}

		function addMoney(obj) {
			var a = $(obj);
			var m = a.next();
			var f = m.next();
			var money = m.val();
			var pre = $("#pre").val();
			if (f.val() == "0") {
				total = parseInt(pre) + parseInt(money);
				f.val("1");
			} else {
				total = parseInt(pre) - parseInt(money);
				f.val("0");
			}
			$("#pre").val(total);
			$("#span_2").text("");
			$("#span_2").text(total);
		}
	</script>
</body>

</html>