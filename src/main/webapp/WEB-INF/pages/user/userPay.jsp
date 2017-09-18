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
		<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

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

		<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,300' rel='stylesheet' type='text/css'>

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
		<link rel="stylesheet" href="${ctx }/staticfile/css/bootstrap-datepicker.min.css">
		<!-- CS Select -->
		<link rel="stylesheet" href="${ctx }/staticfile/css/cs-select.css">
		<link rel="stylesheet" href="${ctx }/staticfile/css/cs-skin-border.css">

		<link rel="stylesheet" href="${ctx }/staticfile/css/style.css">

		<!--后加login/regist-->
		<link href="${ctx }/staticfile/bootstrap3/css/bootstrap.css" rel="stylesheet" />
 
		<link href="${ctx }/staticfile/css/login-register.css" rel="stylesheet" />
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	
		<script src="${ctx }/staticfile/jquery/jquery-1.10.2.js" type="text/javascript"></script>
		<script src="${ctx }/staticfile/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
		<script src="${ctx }/staticfile/js/login-register.js" type="text/javascript"></script>
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
							<h1 id="fh5co-logo"><a href="${ctx }/toLogin"><i class="icon-home"></i>宾至<span>如归</span></a></h1>
							<!-- START #fh5co-menu-wrap -->
							<nav id="fh5co-menu-wrap" role="navigation">
								<ul class="sf-menu" id="fh5co-primary-menu">
									<li class="active">
										<a href="#">Home</a>
									</li>
									<c:if test="${empty sessionScope.user}" var="flagUser">
										<li>
											<!--<a href="javascript:void(0)">登录</a>-->
											<a data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">登录</a>
										</li>
										<li>
											<!--<a href="javascript:void(0)">注册</a>-->
											<a id="regist" href="${ctx }/toRegist">注册</a>
										</li>
									</c:if>
									<c:if test="${!flagUser }">
										<li>
											<a href="javascript:void(0)">欢迎 ${sessionScope.user.userName }</a>
										</li>
										<li>
											<a href="/house/list">退出</a>
										</li>
									</c:if>
								</ul>
							</nav>
						</div>
					</div>
				</header>
				<div class="container">
			<form action="/pay/true" method="post">
				<div class="row"  style="margin-top: 40px">
					<div class="col-xs-6">
						<strong>订单号：</strong>
						<input name="orderId" readonly="readonly" type="text" value="${orderId }">
					</div>
					<div class="col-xs-6">
						<strong>支付金额：</strong>
						<input type="text" readonly="readonly" value="${totalPrice }">元
					</div>
				</div>
				<div style="margin-bottom: 40px;margin-top: 40px;">
					<h3 class="text-center"><strong>请您选择在线支付银行 :</strong></h3>
				</div>
				<div class="row">
					<ul>
						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="ICBC-NET">
							<img src="${ctx}/staticfile/images/pay/01gs.jpg" width="130" height="52">
						</li>
						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="CMBCHINA-NET-B2C">
							<img src="${ctx}/staticfile/images/pay/02zs.jpg" width="130" height="52">
						</li>
						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="CCB-NET">
							<img src="${ctx}/staticfile/images/pay/03js.jpg" width="130" height="52">
						</li>
						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/04ny.jpg" width="130" height="52">
						</li>
						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/05zg.jpg" width="130" height="52">
						</li>
						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/06jt.jpg" width="130" height="52">
						</li>
						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/07hx.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/08xy.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="CEB-NET">
							<img src="${ctx}/staticfile/images/pay/09gd.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/10sz.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/11ms.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/12sh.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/13zx.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/14gd.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/15cq.jpg" width="130" height="52">
						</li>

						<li class="col-xs-3">
							<input name="pd_FrpId" type="radio" value="">
							<img src="${ctx}/staticfile/images/pay/16bh.jpg" width="130" height="52">
						</li>
					</ul>
				</div>
				<div class="text-right" style="margin-top: 70px;">
					<input class="btn btn-danger" type="submit" class="ok_pay" value="确认支付">
				</div>
				<div style="clear:both"></div>
			</form>
		</div>
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
	</body>

</html>