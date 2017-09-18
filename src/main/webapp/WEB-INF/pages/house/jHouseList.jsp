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
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="${ctx }/toLogin"><i class="icon-home"></i>Home<span>state</span></a>
						</h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active"><a href="#">Home</a></li>
								<c:if test="${sessionScope.user!=null }">
									<li>
										<a data-toggle="modal" href="/order/list?userId=${sessionScope.user.userId }">我的订单</a>
									</li>
								</c:if>
								<li>
									<a data-toggle="modal" href="javascript:void(0)" onclick="findHouseForm();">搜索房屋</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</header>
			<script type="text/javascript">
				function showFindHouseForm() {
					$('#loginModal .findHouseForm').fadeOut('fast', function() {
						$('.modal-title').html('提交信息');
					});
					$('.error').removeClass('alert alert-danger').html('');
				}
				function findHouseForm() {
					showFindHouseForm();
					setTimeout(function() {
						$('#loginModal').modal('show');
					}, 230);
				}
			</script>
			<div id="fh5co-properties" class="fh5co-section-gray">
				<div class="container">
					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
							<h3>房屋列表</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Velit est facilis maiores, perspiciatis accusamus asperiores
								sint consequuntur debitis.</p>
						</div>
					</div>
					<div class="row">
						<c:forEach items="${houseList }" var="h">
							<div class="col-xs-4 animate-box">
								<div class="property">
									<a href="/house/toHouseInfo?houseId='${h.houseId }'"
										class="fh5co-property"
										style="background-image: url(${ctx}/${h.imgUrl});"> <span
										class="status">租赁</span>
										<ul class="list-details">
											<li>城市：${h.city }</li>
											<li>
											<c:if test="${h.houseType==1}">精装单人间</c:if>
											<c:if test="${h.houseType==2}">实惠双人间</c:if>
											<c:if test="${h.houseType==3}">豪华三人间</c:if>
											</li>
											<li>状态: <c:if test="${h.state==1 }" var="flag">不可预订</c:if>
												<c:if test="${!flag}">可预订</c:if>
											</li>
											<li>日期: <fmt:formatDate value="${h.startTime }"
													pattern="yyyy/MM/dd" /> —— <fmt:formatDate
													value="${h.endTime }" pattern="yyyy/MM/dd" />
											</li>
										</ul>
									</a>
									<div class="property-details">
										<h3>房屋信息</h3>
										<span class="price">￥${h.price }</span>
										<p>${h.remark}</p>
										<span class="address"><i class="icon-map"></i>地址:${h.address }</span>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<div id="fh5co-popular-properties" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div
						class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>热门地点</h3>
						<p></p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 animate-box">
						<a href="#" class="fh5co-property"
							style="background-image: url(${ctx }/staticfile/images/property-1.jpg);">
							<span class="status">租赁</span>
							<div class="prop-details">
								<span class="price">￥3,00/天</span>
								<h3>靠近沙滩,美国加利福尼亚</h3>
							</div>
						</a>
					</div>
					<div class="col-md-4 animate-box">
						<a href="#" class="fh5co-property"
							style="background-image: url(${ctx }/staticfile/images/property-2.jpg);">
							<span class="status">租赁</span>
							<div class="prop-details">
								<span class="price">￥200/天</span>
								<h3>现代的房子在新西兰</h3>
							</div>
						</a>
					</div>
					<div class="col-md-4 animate-box">
						<a href="#" class="fh5co-property"
							style="background-image: url(${ctx }/staticfile/images/property-3.jpg);">
							<span class="status">租赁</span>
							<div class="prop-details">
								<span class="price">￥3,00/天</span>
								<h3>林间小木屋</h3>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade login" id="loginModal">
		<div class="modal-dialog login animated">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">提交信息</h4>
				</div>
				<div class="modal-body">
					<div class="box">
						<div class="content">
							<div class="division">
								<span>or</span>
								<div class="line r"></div>
							</div>
							<div class="error"></div>
							<div class="form orderForm">
								<form method="post" action="/house/findCity"
									accept-charset="UTF-8">
									<div>
									<input type="text" class="form-control" name="city" id="from-place" placeholder="地址信息" />
									<input type="date" class="form-control" name="startTime" id="from-place" placeholder="时间" />
									<select name="houseType" class="form-control">
										<option value="" selected="selected">房间类型</option>
										<option value="1">单人间</option>
										<option value="2">双人间</option>
										<option value="3">三人间</option>
									</select>
									</div>
									<input type="submit" class="form-control" value="提交" style="background-color:#F2DEDE;font-size-adjust:30px;color:#44C662;" />
								</form>
							</div>
						</div>
					</div>
				</div>
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