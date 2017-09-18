<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="eng" lang="eng">

	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="author" content="Yigit Yigit Ce.[pulyavserdce.com]" />
		<meta name="description" content="Site description" />
		<meta name="keywords" content="keywords, keyword, seo, google" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<title>宾至如归</title>
		<link rel="stylesheet" media="screen" href="${ctx }/staticfile/css/success/style.css" type="text/css" />
		<link rel="shortcut icon" type="image/x-icon" href="favicon.png" />
		<link rel="icon" type="image/x-icon" href="favicon.png" />
		<link rel="apple-touch-icon" href="favicon.png" />
		<link rel="apple-touch-startup-image" href="favicon.png" />
	</head>

	<body>
		<div class="controller">
			<div class="objects">
				<!-- text area -->
				<c:if test="${result==1 }" var="flag">
					<div class="text-area rotate">
						<p class="error">支付成功</p>
						<p class="details">There was a happay thing<br /></p>
					</div>
				</c:if>
				<c:if test="${!flag }">
					<div class="text-area rotate">
						<p class="error">支付失败</p>
						<p class="details">There was a problem<br /></p>
					</div>
				</c:if>
				<!-- text area -->
				<!-- home page -->
				<div class="homepage rotate">
					<a href="/house/list">Back to home</a>
				</div>
				<!-- home page -->
			</div>
		</div>

	</body>

</html>
<div id="buy-it-now" style="visibility:visible !important; visibility:hidden; position:fixed; bottom:0px; z-index:1000; right:0px;">
	<a href="#" alt="Buy it now!" target="_blank"><img src="${ctx }/staticfile/images/success/buy-it-now.png" width="75px" height="75px" alt="Buy it now!" style="border:none" /></a>
</div>