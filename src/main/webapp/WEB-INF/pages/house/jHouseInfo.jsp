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
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="${ctx }/staticfile/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="${ctx }/staticfile/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="${ctx }/staticfile/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="${ctx }/staticfile/css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="${ctx }/staticfile/css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="${ctx }/staticfile/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="${ctx }/staticfile/css/cs-select.css">
<link rel="stylesheet" href="${ctx }/staticfile/css/cs-skin-border.css">

<link rel="stylesheet" href="${ctx }/staticfile/css/style.css">

<!--购买-->
<link href="${ctx }/staticfile/bootstrap3/css/bootstrap.css"
	rel="stylesheet" />
<link href="${ctx }/staticfile/css/login-register.css" rel="stylesheet" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<script type="text/javascript" src="${ctx}/staticfile/js/datepicker/WdatePicker.js"></script>
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
							<a href="/toLogin"><i class="icon-airplane"></i>宾至<span>如归</span></a>
						</h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active"><a href="#">Home</a></li>
								<c:if test="${requestScope.user!=null }">
								    <li class="finsd"><a href="/order/list?userId=${sessionScope.user.userId }">查询订单</a></li>
								</c:if>
								<li><a data-toggle="modal" href="javascript:void(0)"
									onclick="openOrderForm();">预定房屋</a></li>
								<li><a data-toggle="modal" class="btn btn-success"
									href="javascript:void(0)" onclick="payOrderForm();">支付</a></li>
								<br />
							</ul>
						</nav>
					</div>
				</div>
			</header>
			<script type="text/javascript">
				function showOrderForm() {
					$('#loginModal .payOrderForm').fadeOut('fast', function() {
						$('.orderForm').fadeIn('fast');
						$('.modal-title').html('提交订单');
					});
					$('.error').removeClass('alert alert-danger').html('');
				}
				function showPayOrderForm() {
					$('#loginModal .orderForm').fadeOut('fast', function() {
						$('.payOrderForm').fadeIn('fast');
						$('.modal-title').html('提交信息');
					});
					$('.error').removeClass('alert alert-danger').html('');
				}
				function openOrderForm() {
					showOrderForm();
					setTimeout(function() {
						$('#loginModal').modal('show');
					}, 230);
				}
				function payOrderForm() {
					showPayOrderForm();
					setTimeout(function() {
						$('#loginModal').modal('show');
					}, 230);
				}
			</script>
			<!-- end:header-top -->

			<div class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover" data-stellar-background-ratio="0.5"
					style="background-image: url(${ctx}/${house.imgUrl};">
					<div class="desc">
						<div class="container">
							<div class="row">
								<div class="col-sm-5 col-md-5">
									<div class="tabulation animate-box">

										<!-- Nav tabs -->
										<ul class="nav nav-tabs" role="tablist">
											<li role="presentation" class="active"><a
												href="#flights" aria-controls="flights" role="tab"
												data-toggle="tab">房屋信息</a></li>
											<li role="presentation"><a href="#hotels"
												aria-controls="hotels" role="tab" data-toggle="tab">房东信息</a>
											</li>
										</ul>

										<!-- Tab panes -->
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="flights">
												<div class="row">
													<div class="col-xxs-12 col-xs-6 mt">
														<div class="input-field">
															<label style="color: #FFFFFF" for="from">城市:</label> <input
																type="text" readonly="readonly" class="form-control"
																value="${house.city }" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt">
														<div class="input-field">
															<label style="color: #FFFFFF" for="from">价格:</label> <input
																type="text" readonly="readonly" class="form-control"
																value="${house.price }" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label style="color: #FFFFFF" for="from">房屋类型:</label>
															 <c:if test="${house.houseType==1}">
															 <input type="text" readonly="readonly" class="form-control"
																value="精装单人间" /> </c:if>
															 <c:if test="${house.houseType==2}">
															 <input type="text" readonly="readonly" class="form-control"
																value="实惠双人间" /></c:if>
															 <c:if test="${house.houseType==3}">
															 <input type="text" readonly="readonly" class="form-control"
																value="豪华三人间" /></c:if>
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label style="color: #FFFFFF" for="from">状态:</label> 
															<c:if test="${house.state==1 }" var="flag">
																<input type="text" readonly="readonly" class="form-control" value="不可预订" />
															</c:if>
															<c:if test="${!flag }">
																<input type="text" readonly="readonly" class="form-control" value="可预订" />
															</c:if>
														</div>
													</div>
													<div class="col-xxs-12 col-xs-12 mt alternate">
														<div class="input-field">
															<label style="color: #FFFFFF" for="from">地址:</label> <input
																type="text" readonly="readonly" class="form-control"
																value="${house.address }" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label style="color: #FFFFFF" for="date-start">入住时间:</label>
															<input type="text" readonly="readonly"
																class="form-control" id="data-start"
																value="<fmt:formatDate value='${house.startTime }' pattern='yyyy/MM/dd' />" 
																/>
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label style="color: #FFFFFF" for="date-end">退房时间:</label>
															<input type="text" readonly="readonly"
																class="form-control" id="data-end"
																value="<fmt:formatDate value='${house.endTime }' pattern='yyyy/MM/dd'/>"
																/>
														</div>
													</div>
												</div>
											</div>

											<div role="tabpanel" class="tab-pane" id="hotels">
												<div class="row">
													<div class="col-xxs-12 col-xs-6 mt">
														<div class="input-field">
															<label style="color: #FFFFFF" for="from">名字:</label> <input
																type="text" class="form-control"
																value="${house.userInfo.trueName }" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label style="color: #FFFFFF" for="date-start">性别:</label>
															<input type="text" class="form-control"
																value="${house.userInfo.gender }" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label style="color: #FFFFFF" for="date-end">年龄:</label>
															<input type="text" class="form-control"
																value="${house.userInfo.age }" />
														</div>
													</div>
													<div class="col-sm-12 mt">
														<section>
															<label style="color: #FFFFFF" for="class">邮箱:</label> <input
																type="text" class="form-control"
																value="${house.userInfo.email }" />
														</section>
													</div>
													<div class="col-xxs-12 col-xs-6 mt">
														<section>
															<label style="color: #FFFFFF" for="class">电话:</label> <input
																type="text" class="form-control"
																value="${house.userInfo.telephone }" />
														</section>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="desc2 animate-box">
									<div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
										<p style="color: #FFFFFF">房屋描述：</p>
										<span class="price" style="color: #FFFFFF">${house.remark}</span>
										<!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- END fh5co-page -->

<div class="modal fade login" id="loginModal">
	<div class="modal-dialog login animated">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title"></h4>
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
							<form method="post" action="/user/toOrderItem" accept-charset="UTF-8" onsubmit="return check('Time')">
								<input type="hidden" name="userId" value="${sessionScope.user.userId }"/>
								<input type="hidden" name="houseId" value="${house.houseId }"/>
								<input type="text" readonly="readonly" class="form-control" name="city" value="${house.city }" />
								<input type="text" readonly="readonly" class="form-control" name="price" value="${house.price }" />
								<c:if test="${house.houseType==1}">
								<input type="hidden" name="houseType" value="1" />
								<input type="text" readonly="readonly" class="form-control" value="精装单人间"/></c:if>
								<c:if test="${house.houseType==2}">
								<input type="hidden" name="houseType" value="2" />
								<input type="text" readonly="readonly" class="form-control" value="实惠双人间" /></c:if>
								<c:if test="${house.houseType==3}">
								<input type="text" readonly="readonly" class="form-control" name="houseType" value="豪华三人间" />
								<input type="hidden" name="houseType" value="3" /></c:if>
								<input type="hidden" readonly="readonly" class="form-control" name="state" value="${house.state}" />
								<input type="text" readonly="readonly" class="form-control" name="address" value="${house.address }" />
								<input type="text" readonly="readonly" class="form-control" value="入住时间:" />
								<input type="text" class="form-control" id="data-start" name="startTime" style="color:black" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
								<span style="color: red" id="startTime_msg"></span>
								<input type="text" readonly="readonly" class="form-control" value="退房时间:" />
								<input type="text" class="form-control" id="data-end" name="endTime" style="color:black" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
								<span style="color: red" id="endTime_msg"></span>
								<span style="color: red" id="fixTime_msg"></span>
								<input type="submit" class="form-control" value="确定" style="background-color: #FF5A5F"/>
							</form>
						</div>
						<div class="form payOrderForm">
							<form method="post" action="/user/toPay" accept-charset="UTF-8" onsubmit="return check('Time1')">
								<input type="hidden" name="userId" value="${sessionScope.user.userId }"/>
								<input type="hidden" name="houseId" value="${house.houseId }"/>
								<input type="text" readonly="readonly" class="form-control" name="city" value="${house.city }" />
								<input type="text" readonly="readonly" class="form-control" name="price" value="${house.price }" />
								<c:if test="${house.houseType==1}">
								<input type="hidden" name="houseType" value="1"  />
								<input type="text" readonly="readonly" class="form-control" value="精装单人间"  /></c:if>
								<c:if test="${house.houseType==2}">
								<input type="hidden" name="houseType" value="2" />
								<input type="text" readonly="readonly" class="form-control" value="实惠双人间" /></c:if>
								<c:if test="${house.houseType==3}">
								<input type="text" readonly="readonly" class="form-control" name="houseType" value="豪华三人间" /> 
								<input type="hidden" name="houseType" value="3" /></c:if>
								<input type="hidden" readonly="readonly" class="form-control" name="state" value="${house.state}" />
								<input type="text" readonly="readonly" class="form-control" name="address" value="${house.address }" />
								<input type="text" readonly="readonly" class="form-control" value="入住时间:" />
								<input type="text" class="form-control" id="data-start" name="startTime1" style="color:black" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
								<span style="color: red" id="startTime1_msg"></span>
								<input type="text" readonly="readonly" class="form-control" value="退房时间:" />
								<input type="text" class="form-control" id="data-end" name="endTime1" style="color:black" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
								<span style="color: red" id="endTime1_msg"></span>
								<span style="color: red" id="fixTime1_msg"></span>
								<input type="submit" class="form-control" value="确定" style="background-color: #FF5A5F"/>
							</form>
						</div>
						
						
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- jQuery -->
<script type="text/javascript">
	function check(name) {
		return checkNull(name);
	}
	function checkNull(name) {
		var valueStart=$("input[ name=start"+name+"]").val();
		var valueEnd=$("input[ name=end"+name+"]").val();
		var flag=true;
		if( $.trim(valueStart)=="" ){
			setMsg("start"+name,"入住日期不能为空");
			flag=false;
		}
		if( $.trim(valueEnd)=="" ){
			setMsg("end"+name,"退房日期不能为空");
			flag=false;
		}
	    var start=new Date(valueStart.replace("-", "/").replace("-", "/"));
	    var end=new Date(valueEnd.replace("-", "/").replace("-", "/"));
		if( end<=start ){
			setMsg("fix"+name,"退房日期不能小于等于订房日期");
			flag=false;
		} 
		return flag;
	}
	function setMsg(name,msg){
		$("#"+name+"_msg").text(msg);
	}
</script>

<script src="${ctx }/staticfile/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="${ctx }/staticfile/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="${ctx }/staticfile/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="${ctx }/staticfile/js/jquery.waypoints.min.js"></script>
<script src="${ctx }/staticfile/js/sticky.js"></script>

<!-- Stellar -->
<script src="${ctx }/staticfile/js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="${ctx }/staticfile/js/hoverIntent.js"></script>
<script src="${ctx }/staticfile/js/superfish.js"></script>
<!-- Magnific Popup -->
<script src="${ctx }/staticfile/js/jquery.magnific-popup.min.js"></script>
<script src="${ctx }/staticfile/js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="${ctx }/staticfile/js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="${ctx }/staticfile/js/classie.js"></script>
<script src="${ctx }/staticfile/js/selectFx.js"></script>

<!-- Main JS -->
<script src="${ctx }/staticfile/js/main1.js"></script>

</body>

</html>