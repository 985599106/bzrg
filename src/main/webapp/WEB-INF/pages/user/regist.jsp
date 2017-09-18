<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>
<meta charset="utf-8" />

<title>注册：宾至如归</title>

<link rel="canonical" href="https://www.crawlersite.com" />

<link rel="apple-touch-icon" sizes="57x57"
	href="https://www.crawlersite.com/images/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="https://www.crawlersite.com/images/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="https://www.crawlersite.com/images/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="https://www.crawlersite.com/images/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="https://www.crawlersite.com/images/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="https://www.crawlersite.com/images/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="https://www.crawlersite.com/images/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="https://www.crawlersite.com/images/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="https://www.crawlersite.com/images/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="https://www.crawlersite.com/images/android-icon-192x192.png?v=2">
<link rel="icon" type="image/png" sizes="32x32"
	href="https://www.crawlersite.com/images/favicon-32x32.png?v=2">
<link rel="icon" type="image/png" sizes="96x96"
	href="https://www.crawlersite.com/images/favicon-96x96.png?v=2">
<link rel="icon" type="image/png" sizes="16x16"
	href="https://www.crawlersite.com/images/favicon-16x16.png?v=2">
<link rel="manifest"
	href="https://www.crawlersite.com/images/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="https://www.crawlersite.com/images/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- Schema.org markup for Google+ -->
<meta itemprop="name" content="Crawler Site">
<meta itemprop="description"
	content="Easy way to truly understand your web and mobile site visitors">
<meta itemprop="image"
	content="https://www.crawlersite.com/images/FacebookBanner.jpg" />
<!-- Twitter Card data -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="&#64;Crawler Site">
<meta name="twitter:title" content="Crawler Site">
<meta name="twitter:description"
	content="Easy way to truly understand your web and mobile site visitors">
<meta name="twitter:creator" content="&#64;CrawlerSite">
<meta name="twitter:image"
	content="https://www.crawlersite.com/images/FacebookBanner.jpg">
<!-- Open Graph data -->
<meta property="og:title" content="Crawler Site" />
<meta property="og:type" content="product" />
<meta property="og:url" content="https://www.crawlersite.com/" />
<meta property="og:image"
	content="https://www.crawlersite.com/images/FacebookBanner.jpg" />
<meta property="og:description"
	content="Easy way to truly understand your web and mobile site visitors" />
<meta property="og:site_name" content="Crawler Site" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="${ctx }/staticfile/regist/js/main.js"></script>
<script>
	const
	SETTINGS = {
		rebound : {
			tension : 26,
			friction : 10
		},
		spinner : {
			id : 'spinner',
			radius : 90,
			sides : 3,
			depth : 4,
			colors : {
				//background: '#231E76',
				//stroke: '#231E76',
				background : '#f0f0f0',
				stroke : '#D61010',
				base : null,
				child : '#f1b3b3'
			},
			alwaysForward : true, // When false the spring will reverse normally.
			restAt : 0.5, // A number from 0.1 to 0.9 || null for full rotation
			renderBase : false
		}
	};
</script>

<script src="${ctx }/staticfile/regist/js/loader.js"></script>

<!-- CSS Files -->
<link
	href="${ctx }/staticfile/regist/register-assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${ctx }/staticfile/regist/register-assets/css/paper-bootstrap-wizard.css"
	rel="stylesheet" />

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="${ctx }/staticfile/regist/register-assets/css/demo.css"
	rel="stylesheet" />

<link href="${ctx }/staticfile/regist/css/site.css" rel="stylesheet" />
<link href="${ctx }/staticfile/regist/css/animate.css" rel="stylesheet">

<!-- Fonts and Icons -->
<link href="${ctx }/staticfile/regist/css/font-awesome.css"
	rel="stylesheet">
<link href="${ctx }/staticfile/regist/css/family.css" rel='stylesheet'
	type='text/css'>
<link
	href="${ctx }/staticfile/regist/register-assets/css/themify-icons.css"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="${ctx }/staticfile/regist/css/dialog.css" />

</head>

<body>
	<script>
		(function() {
			$Flinger.Loader.Init()
		})()
	</script>
	<div class="image-container set-full-height">
		<a href="/"><b class="app-name">Wlecome</b></a>
		<!--   Big container   -->
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2">

					<!--      Wizard container        -->
					<div class="wizard-container">

						<div
							class="card wizard-card plain-card register-wizard animate-box"
							data-animate-effect="fadeIn" data-color="red" id="wizardProfile">

							<form method="post">

								<div class="wizard-header text-center">
									<h3 class="wizard-title">欢迎加入 宾至如归 的大家庭</h3>
									<p class="category">This information will let us know more
										about you.${valistr_msg }</p>
								</div>
								<div>
									<p class="text-center" id="return_msg" style="color: red;font-size: 25px"></p>
								</div>

								<div class="wizard-navigation">
									<div class="progress-with-circle">
										<div id="progress-bar" class="progress-bar" role="progressbar"
											aria-valuenow="1" aria-valuemin="1" aria-valuemax="3"
											style="width: 21%;"></div>
									</div>
									<ul>
										<li><a href="#about" onclick="aboutClickHref();"
											data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-user"></i>
												</div> 帐户信息
										</a></li>
										<li><a id="account_href" href="#account"
											data-toggle="tab" onclick="accountClickHref();">
												<div id="account_div" class="icon-circle">
													<i class="ti-settings"></i>
												</div> 个人信息
										</a></li>
										<li><a id="address_href" href="#address"
											data-toggle="tab" onclick="addressClickHref();">
												<div id="address_div" class="icon-circle">
													<i class="ti-map"></i>
												</div> 联系方式
										</a></li>
									</ul>
								</div>
								<div class="tab-content register">
									<div class="tab-pane" id="about">
										<div class="row">
											<div class="col-sm-10 col-sm-offset-1">
												<div class="form-group">
													<label>用户名</label> <input
														id="userName" name="userName" type="text"
														class="form-control"> <span id="userName_msg"
														style="color: red"></span>
												</div>
												<div class="form-group">
													<label>密码</label> <input
														id="password" name="password" type="password"
														class="form-control"> <span id="password_msg"
														style="color: red"></span>
												</div>
												<div class="form-group">
													<label>确认密码</label> <input
														id="password1" name="password1" type="password"
														class="form-control" placeholder="jhon.doe@coplest.com">
													<span id="password1_msg" style="color: red"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="account">
										<div class="form-group">
											<label>真实姓名</label> <input
												id="trueName" name="userInfo.trueName" type="text"
												class="form-control"> <span id="trueName_msg"
												style="color: red"></span>
										</div>
										<div class="form-group">
											<label>性别</label> <input id="gender" name="gender"
												name="userInfo.gender" type="text" class="form-control">
											<span id="gender_msg" style="color: red"></span>
										</div>
										<div class="form-group">
											<label>年龄</label> <input id="age"
												name="userInfo.age" type="text" class="form-control">
											<span id="age_msg" style="color: red"></span>
										</div>
										<div class="form-group">
											<label>身份证号码</label> <input
												id="idCard" name="userInfo.idCard" type="text"
												class="form-control"> <span id="idCard_msg"
												style="color: red"></span>
										</div>
									</div>
									<div class="tab-pane" id="address">
										<div class="form-group">
											<label>电话号码</label> <input
												id="telephone" name="userInfo.telephone" type="text"
												class="form-control"> <span id="telephone_msg"
												style="color: red"></span>
										</div>
										<div class="form-group">
											<label>验证码</label> <input
												id="valistr" name="valistr" type="text" class="form-control">
											<img id="vcode" src="${ctx}/toVerifyCode"
												onclick="newVcode();" />
										</div>
									</div>
								</div>
								<div class="wizard-footer">

									<div class="pull-right">
										<input type='button' class='btn btn-fill btn-danger btn-wd'
											name='next' value='Next' /> <input type='button'
											class='btn btn-finish btn-fill btn-danger btn-wd'
											name='finish' value='Finish' /> <input type="hidden"
											id="flag" value="1" /> 
											<input type="hidden" id="submit-flag" value="1" />
									</div>

									<div class="pull-left">
										<input type='button'
											class='btn btn-previous btn-default btn-wd' name='previous'
											value='Previous' />
									</div>
									<div class="clearfix"></div>
								</div>
							</form>

							<!---->
						</div>
					</div>
					<!-- wizard container -->
				</div>
			</div>
			<!-- end row -->
		</div>
		<!--  big container -->

		<div class="footer ">
			<div class="container text-center "></div>
		</div>
	</div>

	<div id="dialog" class="dialog">
		<div class="dialog__overlay"></div>
		<div class="dialog__content">
			<h2></h2>
			<h4></h4>
			<div></div>
		</div>
	</div>
</body>

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
                                <div class="form loginBox">
                                    <input type="button" class='btn btn-danger form-control' onclick="window.location.href='${ctx}/toLogin'" value='确定'" />
                                </div>
                             </div>
                        </div>
                    </div>
    		      </div>
		      </div>
		    </div>
		</div>

<!--   Core JS Files   -->
<script
	src="${ctx }/staticfile/regist/register-assets/js/jquery-2.2.4.min.js"
	type="text/javascript "></script>
<script
	src="${ctx }/staticfile/regist/register-assets/js/bootstrap.min.js"
	type="text/javascript "></script>
<script
	src="${ctx }/staticfile/regist/register-assets/js/jquery.bootstrap.wizard.js"
	type="text/javascript "></script>
<script
	src="${ctx }/staticfile/regist/lib/waypoints/lib/jquery.waypoints.min.js"></script>

<!--  Plugin for the Wizard -->
<script
	src="${ctx }/staticfile/regist/register-assets/js/paper-bootstrap-wizard.js"
	type="text/javascript "></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script
	src="${ctx }/staticfile/regist/register-assets/js/jquery.validate.min.js"
	type="text/javascript "></script>

<script src="${ctx }/staticfile/regist/js/modernizr.custom.js"></script>
<script src="${ctx }/staticfile/regist/js/classie.js"></script>
<script src="${ctx }/staticfile/regist/js/dialogFx.js"></script>

<script src="${ctx }/staticfile/regist/js/countries.js"></script>
<script src="${ctx }/staticfile/regist/js/sanitize_html.js"></script>
<script src="${ctx }/staticfile/regist/js/dialog.js"></script>
<script src="${ctx }/staticfile/regist/js/animate.js"></script>
<script
	src="${ctx }/staticfile/regist/lib/typeahead.js/dist/bloodhound.js"></script>
<script
	src="${ctx }/staticfile/regist/lib/typeahead.js/dist/typeahead.jquery.js"></script>
<script
	src="${ctx }/staticfile/regist/lib/typeahead.js/dist/typeahead.bundle.js"></script>


<script type="text/javascript">
	var formObj = {
		checkForm : function(){
			var flag = true;
			flag = this.checkUserName()&&flag;
			flag = this.checkPassword()&&flag;
			flag = this.checkGender()&&flag;
			flag = this.checkAge()&&flag;
			return flag;
		},
		checkUserName : function(){
			var value = $("input[name=userName]").val();
			var num = value.length;
			if(num<3){
				$("#userName_msg").text("用户名长度不能小于3");
				return false;
			}
			return true;
		},
		checkPassword : function(){
			var password = $("input[name=password]").val();
			var password1 = $("input[name=password1]").val();
			if(password.length<3){
				$("#password_msg").text("密码长度不能小于3");
				return false;
			}else if($.trim(password)!=$.trim(password1)){
				$("#password1_msg").text("确认密码不正确");
				return false;
			}
			return true;
		},
		checkGender : function(){
			var value = $("input[name=gender]").val();
			if($.trim(value)!="男"&&$.trim(value)!="女"){
				$("#gender_msg").text("性别不正确，应为男，女");
				return false;
			}
			return true;
		},
		checkAge : function(){
			var value = $("input[name=age]").val();
			if(value<=0&&value>150){
				$("#age_msg").text("年龄不正确");
				return false;
			}
			return true;
		}
	}
	
	$(function() {
		$("input[name=userName]").click(function() {
			$("#userName_msg").text("");
			$("#submit-flag").val(1);
		});
		$("input[name=userName]").blur(function() {
			var value = $(this).val();
			if ($.trim(value) == "") {
				$("#userName_msg").text("用户ID不能为空");
			} else {
				$.post("${ctx}/checkUserName", {
					userName : value
				}, function(result) {
					if ("true" == result) {
						$("#userName_msg").text("用户ID已存在");
						$("#submit-flag").val("0");
					} else if ("error" == result) {
						$("#userName_msg").text("系统错误,请重试");
					}
				});
			}
		});
	});
	$("input[name=finish]").click(function() {
		var flag = $("#submit-flag").val();
		if (flag == 0) {
			$("#return_msg").text("用户名已存在！");
			$("#submit-flag").val("1");
			return false;
		}
		if (!formObj.checkForm()){
			$("#return_msg").text("信息错误。请重新核对信息");
			return false;
		}
		
		var userName = $("#userName").val();
		var password = $("#password").val();
		var password1 = $("#password1").val();
		var trueName = $("#trueName").val();
		var gender = $("#gender").val();
		var age = $("#age").val();
		var idCard = $("#idCard").val();
		var telephone = $("#telephone").val();
		var valistr = $("#valistr").val();
		$.post("${ctx}/register", {
			userName : userName,
			password : password,
			password1 : password1,
			trueName : trueName,
			gender : gender,
			age : age,
			idCard : idCard,
			telephone : telephone,
			valistr : valistr
		}, function(result) {
			if ("flase" == result) {
				$("#return_msg").text("注册失败请重新，请重新提交！");
			}else if("error"==result){
				$("#return_msg").text("验证码不正确！");
			}else {
				openSuccess();
			}
		});
	});

	function openSuccess() {
		$('#loginModal').fadeOut('fast', function() {
			$('.modal-title').html('注册成功！');
		});
		setTimeout(function() {
			$('#loginModal').modal('show');
		}, 230);
	}

	function newVcode() {
		$("#vcode").attr("src",
				"${ctx}/toVerifyCode?" + new Date().toLocaleString());
	}

	function aboutClickHref() {
		$("#flag").val(1);
		$("#about").show();
		$("#account").hide();
		$("#address").hide();
		$("#account_href").css("color", "gray");
		$("#account_div").css("background", "white");
		$("#account_div").css("color", "gray");
		$("#address_href").css("color", "gray");
		$("#address_div").css("background", "white");
		$("#address_div").css("color", "gray");
	}

	function accountClickHref() {
		$("#flag").val(2);
		$("#account").show();
		$("#about").hide();
		$("#address").hide();
		$("#about_href").css("color", "gray");
		$("#about_div").css("background", "white");
		$("#about_div").css("color", "gray");
		$("#address_href").css("color", "gray");
		$("#address_div").css("background", "white");
		$("#address_div").css("color", "gray");
	}

	function addressClickHref() {
		$("#flag").val(3);
		$("#address").show();
		$("#about").hide();
		$("#account").hide();
		$("input[name=next]").hide();
		$("input[name=finish]").hide();
		$("#account_href").css("color", "gray");
		$("#account_div").css("background", "white");
		$("#account_div").css("color", "gray");
		$("#about_href").css("color", "gray");
		$("#about_div").css("background", "white");
		$("#about_div").css("color", "gray");
	}

	function checkNull(value, msg) {
		var val = $("#" + value).val();
		if ($.trim(val) == "") {
			$("#" + value + "_msg").text(msg);
			return false;
		}
		return true;
	}

	$("input[name=previous]").click(function() {
		var num = $("#flag").val();
		num = num - 1;
		$("#flag").val(num);
		if (num == 1) {
			$("#about").show();
			$("#account").hide();
			$("input[name=previous]").hide();
			$("#progress-bar").attr("aria-valuenow", "1");
			$("#progress-bar").attr("aria-valuenow", "1");
			$("#progress-bar").css("width", "21%");
		} else if (num == 2) {
			$("#account").show();
			$("#address").hide();
			$("#progress-bar").attr("aria-valuenow", "2");
			$("#progress-bar").css("width", "50%");
			$("#account_href").css("color", "gray");
			$("#account_div").css("background", "white");
			$("#account_div").css("color", "gray");
			$("#account_div").css("border-color", "#EB5E28")
		} else if (num == 3) {
			$("input[name=finish]").hide();
			$("input[name=next]").show();
			$("#progress-bar").attr("aria-valuenow", "3");
			$("#progress-bar").css("width", "79%");
			$("#address_href").css("color", "gray");
			$("#address_div").css("background", "white");
			$("#address_div").css("color", "gray");
			$("#address_div").css("border-color", "#EB5E28");

		}
	});

	$("input[name=next]").click(function() {
		var num = $("#flag").val();
		if (num == 1) {
			var flag = true;
			flag = checkNull("userName", "用户名不能为空") && flag;
			flag = checkNull("password", "密码不能为空") && flag;
			flag = checkNull("password1", "密码确认不能为空") && flag;
			if (flag) {
				$("#about").hide();
				$("#account").show();
				$("#progress-bar").attr("aria-valuenow", "2");
				$("#progress-bar").css("width", "50%");
				$("#account_href").css("color", "#EB5E28");
				$("#account_div").css("background", "#EB5E28");
				$("#account_div").css("color", "white");
				$("#account_div").css("border-color", "#EB5E28");
				$("input[name=previous]").show();
				num = num - (-1);
				$("#flag").val(num);
			}
		} else if (num == 2) {
			var flag = true;
			flag = checkNull("trueName", "姓名不能为空") && flag;
			flag = checkNull("gender", "性别不能为空") && flag;
			flag = checkNull("age", "年龄不能为空") && flag;
			flag = checkNull("idCard", "身份证号不能为空") && flag;
			if (flag) {
				$("#account").hide();
				$("#address").show();
				$("#progress-bar").attr("aria-valuenow", "3");
				$("#progress-bar").css("width", "79%");
				$("#address_href").css("color", "#EB5E28");
				$("#address_div").css("background", "#EB5E28");
				$("#address_div").css("color", "white");
				$("#address_div").css("border-color", "#EB5E28");
				$("input[name=previous]").show();
				num = num - (-1);
				$("#flag").val(num);
			}
		} else if (num == 3) {
			var flag = true;
			flag = checkNull("telephone", "电话号码不能为空") && flag;
			flag = checkNull("valistr", "验证码不能为空") && flag;
			if (flag) {
				$("#account").hide();
				$("input[name=finish]").show();
				$("#progress-bar").attr("aria-valuenow", "3");
				$("#progress-bar").css("width", "100%");
				$("input[name=previous]").show();
				$("input[name=next]").hide();
				num = num - (-1);
				$("#flag").val(num);
			}
		}
	});
</script>

<script type="text/javascript">
	window.$crisp = [];
	window.CRISP_WEBSITE_ID = "0733d75f-901a-414f-88b3-42186a2919ae";
	(function() {
		d = document;
		s = d.createElement("script");
		s.src = "https://client.crisp.im/l.js";
		s.async = 1;
		d.getElementsByTagName("head")[0].appendChild(s);
	})();
</script>

<script>
	(function() {
		$('[data-toggle="tooltip"]').tooltip();
		$Flinger.Loader.Finish();

		$('.input-group-addon').hide();
	})()
	$('#country-register').typeahead({
		hint : true,
		highlight : true,
		minLength : 1
	}, {
		name : 'countriesVal',
		source : substringMatcher(countriesVal)
	}).on('typeahead:render', function() {
		$('.tt-suggestion:first-child').addClass('tt-cursor');
	});

	$(".tt-hint").css("opacity", 0);

	/// Prevent submit form from return press
	$(document).on("keypress", "input", function(e) {
		if (e.which == 13) {
			e.preventDefault();

			if ($('.btn-finish').is(':visible') == false) {
				$('.btn-next').click();
			} else {
				$('.btn-finish').click();
			}
		}
	});

	var randomN = Math.floor((Math.random() * 8));

	function handlePaste(e) {
		var clipboardData, pastedData;

		// Stop data actually being pasted into div
		e.stopPropagation();
		e.preventDefault();

		// Get pasted data via clipboard API
		clipboardData = e.clipboardData || window.clipboardData;
		pastedData = clipboardData.getData('Text');

		// Do whatever with pasteddata
		checkVoucher(pastedData);
	}

	var preventKeys = function() {
		document.querySelector("#invition-code-register").value = '';
		return false;
	}

	var alertToType = function(e) {
		var map = {};
		e = e || event; // to deal with IE
		map[e.keyCode] = e.type == 'keydown';

		if (!map[86] && !map[17]) { // CTRL + V
			$Flinger.Dialog.SetData("Ooops!",
					"Please copy voucher code from your email");
		}
	}
</script>

</html>