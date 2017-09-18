<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>
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
	 <script type="text/javascript" src="${ctx}/staticfile/js/datepicker/WdatePicker.js"></script>
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
										<a href="${ctx }/toLogin">Home</a>
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
											<a href="/logout">退出</a>
										</li>
									</c:if>
									<li>
										<a href="/story">故事</a>
									</li>
									<li>
										<a href="properties.html" class="fh5co-sub-ddown">帮助</a>
										<ul class="fh5co-sub-menu">
											<li>
												<a href="#">Family</a>
											</li>
											<li>
												<a href="#">CSS3 &amp; HTML5</a>
											</li>
											<li>
												<a href="#">Angular JS</a>
											</li>
											<li>
												<a href="#">Node JS</a>
											</li>
											<li>
												<a href="#">Django &amp; Python</a>
											</li>
										</ul>
									</li>
								</ul>
								
							</nav>
						</div>
					</div>
				</header>

				<!-- end:header-top -->

				<aside id="fh5co-hero" class="js-fullheight" >
					<div class="flexslider js-fullheight">
						<ul class="slides">
							<li style="background-image: url(${ctx }/staticfile/images/img_bg_1.jpg);">
								<div class="container-fluid">
									<div class="row">
										<div class="col-md-4 col-md-offset-4 col-md-pull-4 js-fullheight slider-text">
											<div class="slider-text-inner">
												<div class="desc">
													<!--<span class="status">租赁</span>-->
													<h1>山景别墅</h1>
													<h2 class="price">￥4,00/天</h2>
													<a href="/house/toHouseInfo?houseId=021" >立即下单</a>
													<p>山景别墅位于努瓦勒埃利耶，是家2星级酒店。是努瓦勒埃利耶最受欢迎的酒店之一。凭借独有的人文素养和其婉约美丽的殷殷之情不断吸引着广大顾客的到访</p>
													<p class="details">
														<span>450平方米</span>
														<span>4 卧室</span>
														<span>3 浴室</span>
														<span>2 车库</span>
													</p>
													<!--<p><a class="btn btn-primary btn-lg" href="#">Learn More</a></p>-->
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li style="background-image: url(${ctx }/staticfile/images/img_bg_2.jpg);">
								<div class="container-fluid">
									<div class="row">
										<div class="col-md-4 col-md-offset-4 col-md-pull-4 js-fullheight slider-text">
											<div class="slider-text-inner">
												<div class="desc">
													<!--<span class="status">租赁</span>-->
													<h1>海景别墅</h1>
													<h2 class="price">￥400/天</h2>
													<a href="/house/toHouseInfo?houseId=022" >立即下单</a>
													<p>这座独特且富有想像力的豪华别墅位于海边沙滩上。它是海边最新也是最独特的住宅。白色沙滩，蓝绿色海洋和微风轻抚的棕榈树，以及豪华的设计都显得不可思议。别墅共5间卧室，6间浴室，酒窖，餐厅，影院，厨房等</p>
													<p class="details">
														<span>420平方米</span>
														<span>4 卧室</span>
														<span>3 浴室</span>
														<span>2 车库</span>
													</p>
													<!--<p><a class="btn btn-primary btn-lg" href="#">Learn More</a></p>-->
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li style="background-image: url(${ctx }/staticfile/images/img_bg_3.jpg);">
								<div class="container-fluid">
									<div class="row">
										<div class="col-md-4 col-md-offset-4 col-md-pull-4 js-fullheight slider-text">
											<div class="slider-text-inner">
												<div class="desc">
													<!--<span class="status">租赁</span>-->
													<h1>林间别墅</h1>
													<h2 class="price">￥4,00/天</h2>
													<a href="/house/toHouseInfo?houseId=023" >立即下单</a>
													<p>远离城市的喧嚣,临近大山,无丝竹之乱耳,无案牍之劳形,亲近自然空气清新,风景秀丽鸟语花香</p>
													<p class="details">
														<span>350平方米</span>
														<span>4 卧室</span>
														<span>3 卧室</span>
														<span>2 车库</span>
													</p>
													<!--<p><a class="btn btn-primary btn-lg" href="#">Learn More</a></p>-->
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</aside>
				<a name="search"></a>
				<div id="fh5co-search-map">
					<div class="search-property">
						<div class="s-holder">
							<h2>Search Properties</h2>
							<div class="row">
								<form action="/house/findCity" method="post">
									<div class="col-xxs-12 col-xs-12">
										<div class="input-field">
											<label for="from">目的地,城市,地址:</label>
											<input type="text" name="city" id="from-place" placeholder="地址信息" />
										</div>
									</div>
									<div class="col-xxs-12 col-xs-12">
										<div class="input-field">
											<label for="from">入住日期:</label>
											
											<input type="text"  name="startTime" id="from-place"
											onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" placeholder="时间"  />
										</div>
									</div>
									<div class="col-xxs-12 col-xs-12">
										<div class="input-field">
											<label for="from">退房日期:</label>
											<input type="text"  name="endTime" id="from-place" placeholder="时间" 
											onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
										</div>
									</div>
									<div class="col-xxs-12 col-xs-12">
										<section>
											<label for="class">房客:</label>
											<select class="cs-select cs-skin-border" name="houseType">
												<option disabled="disabled">房间类型</option>
												<option value=""></option>
												<option value="1">单人间</option>
												<option value="2">双人间</option>
												<option value="3">三人间</option>
											</select>
										</section>
									</div>
									<div class="col-xxs-12 col-xs-12">
										<div class="input-field">
											<input type="submit" class="form-control" value="提交" style="background-color:#F2DEDE;font-size-adjust:30px;color:#44C662;" />
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="map" style="background-image: url(${ctx }/staticfile/images/cover_bg_1.jpg);">
					</div>
				</div>

				<!--<div class="copyrights">Collect from
					<a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
				</div>-->
				
				<a name="HotPlace"></a>
				<div id="fh5co-popular-properties" class="fh5co-section-gray">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
								<h3>热门地点</h3>
								<p></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4 animate-box">
								<a href="/house/toHouseInfo?houseId=024" class="fh5co-property" style="background-image: url(${ctx }/staticfile/images/property-1.jpg);">
									<span class="status">租赁</span>
									<div class="prop-details">
										<span class="price">￥3,00/天</span>
										<h3>靠近沙滩,美国加利福尼亚</h3>
									</div>
								</a>
							</div>
							<div class="col-md-4 animate-box">
								<a href="/house/toHouseInfo?houseId=025" class="fh5co-property" style="background-image: url(${ctx }/staticfile/images/property-2.jpg);">
									<span class="status">租赁</span>
									<div class="prop-details">
										<span class="price">￥200/天</span>
										<h3>现代的房子在新西兰</h3>
									</div>
								</a>
							</div>
							<div class="col-md-4 animate-box">
								<a href="/house/toHouseInfo?houseId=026" class="fh5co-property" style="background-image: url(${ctx }/staticfile/images/property-3.jpg);">
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

				<div id="fh5co-testimonial" style="background-image:url(${ctx }/staticfile/images/img_bg_2.jpg);">
					<div class="container">
						<div class="row animate-box">
							<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
								<h2>快乐的客户</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="box-testimony animate-box">
									<blockquote>
										<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
										<p>&ldquo;behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language oceanFar far away.&rdquo;</p>
									</blockquote>
									<p class="author">John Doe, CEO
										<!--<a href="#" target="_blank">FREEHTML5.co</a>--> <span class="subtext">Creative Director</span></p>
								</div>

							</div>
							<div class="col-md-4">
								<div class="box-testimony animate-box">
									<blockquote>
										<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
										<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
									</blockquote>
									<p class="author">tom, CEO
										<!--<a href="#" target="_blank">FREEHTML5.co</a>--> <span class="subtext">Creative Director</span></p>
								</div>

							</div>
							<div class="col-md-4">
								<div class="box-testimony animate-box">
									<blockquote>
										<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
										<p>&ldquo;Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language oceanFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
									</blockquote>
									<p class="author">amy, Founder
										<!--<a href="#">FREEHTML5.co</a>--> <span class="subtext">Creative Director</span></p>
								</div>

							</div>
						</div>
					</div>
				</div>

				<a name="Agent"></a>
				<div id="fh5co-about" class="fh5co-agent">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
								<h3>Our Agents</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-3 text-center animate-box" data-animate-effect="fadeIn">
								<div class="fh5co-staff">
									<img class="img-responsive" src="${ctx }/staticfile/images/user-1.jpg" alt="Free HTML5 Templates by freeHTML5.co">
									<h3>Jean Smith</h3>
									<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat</p>
								</div>
							</div>
							<div class="col-sm-3 text-center animate-box" data-animate-effect="fadeIn">
								<div class="fh5co-staff">
									<img class="img-responsive" src="${ctx }/staticfile/images/user-2.jpg" alt="Free HTML5 Templates by freeHTML5.co">
									<h3>Hush Raven</h3>
									<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat</p>
								</div>
							</div>
							<div class="col-sm-3 text-center animate-box" data-animate-effect="fadeIn">
								<div class="fh5co-staff">
									<img class="img-responsive" src="${ctx }/staticfile/images/user-3.jpg" alt="Free HTML5 Templates by freeHTML5.co">
									<h3>Alex King</h3>
									<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat</p>
								</div>
							</div>
							<div class="col-sm-3 text-center animate-box" data-animate-effect="fadeIn">
								<div class="fh5co-staff">
									<img class="img-responsive" src="${ctx }/staticfile/images/user-4.jpg" alt="Free HTML5 Templates by freeHTML5.co">
									<h3>Hush Raven</h3>
									<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="fh5co-blog-section" class="fh5co-section-gray">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
								<h3>Recent From Blog</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row row-bottom-padded-md">
							<div class="col-lg-4 col-md-4 col-sm-6">
								<div class="fh5co-blog animate-box">
									<a href="#"><img class="img-responsive" src="${ctx }/staticfile/images/property-4.jpg" alt=""></a>
									<div class="blog-text">
										<div class="prod-title">
											<h3><a href="#">Properties for sale</a></h3>
											<span class="posted_by">Sep. 15th</span>
											<span class="comment"><a href="javascript:void(0)" onclick="addLike(this)" >21<i class="icon-bubble2"></i></a></span>
											<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
											<p>
												<a href="#">Learn More...</a>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-6">
								<div class="fh5co-blog animate-box">
									<a href="#"><img class="img-responsive" src="${ctx }/staticfile/images/property-2.jpg" alt=""></a>
									<div class="blog-text">
										<div class="prod-title">
											<h3><a href="#">Modern Home</a></h3>
											<span class="posted_by">Sep. 15th</span>
											<span class="comment"><a href="javascript:void(0)"  onclick="addLike(this)">21<i class="icon-bubble2"></i></a></span>
											<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
											<p>
												<a href="#">Learn More...</a>
											</p>
										</div>
									</div>
								</div>
							</div>
							
							<div class="clearfix visible-sm-block"></div>
							<div class="col-lg-4 col-md-4 col-sm-6">
								<div class="fh5co-blog animate-box">
									<a href="#"><img class="img-responsive" src="${ctx }/staticfile/images/property-3.jpg" alt=""></a>
									<div class="blog-text">
										<div class="prod-title">
											<h3><a href="#">15% Deal Discount For House</a></h3>
											<span class="posted_by">Sep. 15th</span>
											<span class="comment"><a href="javascript:void(0)" onclick="addLike(this)">21<i class="icon-bubble2"></i></a></span>
											<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
											<p>
												<a href="#">Learn More...</a>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix visible-md-block"></div>
						</div>
					</div>
				</div>
				<footer>
					<div id="footer">
						<div class="container">
							<div class="row row-bottom-padded-md">
								<div class="col-md-4">
									<h3 class="section-title">About Homestate</h3>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics.</p>
								</div>

								<div class="col-md-4 col-md-push-1">
									<h3 class="section-title">Links</h3>
									<ul>
										<li>
											<a href="#">Home</a>
										</li>
										<li>
											<a href="/house/list">HouseList</a>
										</li>
										<li>
											<a href="#search">HouseSearch</a>
										</li>
										<li>
											<a href="#HotPlace">HotPlace</a>
										</li>
										<li>
											<a href="#Agent">Agent</a>
										</li>
									</ul>
								</div>

								<div class="col-md-4">
									<h3 class="section-title">Newsletter</h3>
									<p>Subscribe for our newsletter</p>
									<form action="#" class="form-inline" id="fh5co-header-subscribe">
										<div class="row">
											<div class="col-md-12 col-md-offset-0">
												<div class="form-group">
													<input type="text" class="form-control" id="email" placeholder="Enter your email">
													<button type="submit" class="btn btn-default"><i class="icon-paper-plane"></i></button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</footer>
			</div>
			<!-- END fh5co-page -->
			<div class="modal fade login" id="loginModal">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">
    		         <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">登录</h4>
                    </div>
                    <div class="modal-body">  
                        <div class="box">
                             <div class="content">
                                <div class="division">
                                    <div class="line l"></div>
                                      <span>or</span>
                                    <div class="line r"></div>
                                </div>
                                <div class="error"></div>
                                <div class="form loginBox">
                                    <form method="post" accept-charset="UTF-8">
                                    <span id="msg" style="color:red"></span>
                                    <input id="user-input" name="email" type="text" class="form-control" placeholder="账号">
                                    <input id="password-input" name="password" type="password" class="form-control " placeholder="密码">
                                    <input type='button' class='btn form-control' name='finish' value='登录'" />

                                    </form>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form">
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="/register" accept-charset="UTF-8">
                                <input id="email" class="form-control" type="text" placeholder="账号" name="email">
                                <input id="password" class="form-control" type="password" placeholder="密码" name="password1">
                                <input id="password_confirmation" class="form-control" type="password" placeholder="确认密码" name="password2">
                                <input class="btn btn-default btn-register" type="submit" value="注册" name="commit">
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>Looking to 
                                 <a href="${ctx }/toRegist">注册账号</a>
                            ?</span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>是否已经拥有账号?</span>
                             <a href="javascript: showLoginForm();">登录</a>
                        </div>
                    </div>        
    		      </div>
		      </div>
		    </div>
		</div>
		<!-- END fh5co-wrapper -->
		
		
		
		<script type="text/javascript">
			function addLike(obj){
				var a = $(obj);
				var num = a.text();
				num = num-(-1);
				a.text(num);
				a.append("<i class='icon-bubble2'></i>");
			}

			$("input[name=finish]").click(function(){
				var userName = $("#user-input").val();
				var password = $("#password-input").val();
				if($.trim(userName) != "" && $.trim(password) != ""){
					$.post("${ctx}/login",{userName:userName,password:password},
					function(result){
						if("false"==result){
							$("#msg").text("账号或者密码错误！");
							$("input[name=finish]").blur();
						}else if("error"==result){
							$("span[name=deptId_msg]").text("系统错误,请重试");
							$("input[name=finish]").blur();
						}else if("true"==result){
							top.location.href="/toLogin"
						}
					});
				}else{
					$("#msg").text("账号或者密码不能空！");
					$("input[name=finish]").blur();
				}
		    });

		</script>
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