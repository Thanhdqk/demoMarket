<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
	<link href="<c:url value='home/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">      
	<link href="<c:url value='home/bootstrap/css/bootstrap-responsive.min.css' />" rel="stylesheet">		
	<link href="<c:url value='home/themes/css/bootstrappage.css' />" rel="stylesheet"/>
	
	<!-- global styles -->
	<link href="<c:url value='home/themes/css/flexslider.css' />" rel="stylesheet"/>
	<link href="<c:url value='home/themes/css/main.css' />" rel="stylesheet"/>

	<!-- scripts -->
	<script src="<c:url value='home/themes/js/jquery-1.7.2.min.js' />"></script>
	<script src="<c:url value='home/bootstrap/js/bootstrap.min.js' />"></script>				
	<script src="<c:url value='home/themes/js/superfish.js' />"></script>	

<title>Classy Login form Widget Flat Responsive Widget Template :: w3layouts</title>
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<!--Google Fonts-->

<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
 
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
  <script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>
</head>
<body>
<!--header start here-->
<div class="header">
<% if (request.getAttribute("errorMessage") != null) { %>
        <!-- Gọi hàm showError nếu có thông báo lỗi -->
        <script>
        function showError(message) {
            alert(message);
        }
            showError("<%= request.getAttribute("errorMessage") %>");
        </script>
    <% } %>
		<div class="header-main">
		   <h1 class="fw-bold"  >Login <span style="color: orange; margin-left: 3px">Form</span> </h1> 
			<div class="header-bottom">
				<div class="header-right w3agile">		
					<div class="header-left-bottom agileinfo">
					<form action="<c:url value='/login' />" method="POST" >
							<input type="hidden" name="next" value="/">
							<fieldset>
								<div class="control-group">
									<label class="control-label" style="font-weight: bolder; color: white;">Username</label>
									<div class="controls">
										<input type="text" placeholder="Enter your username" id="username" name="username" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" style="font-weight: bolder; color: white;">Password</label>
									<div class="controls">
										<input type="password" name="password" placeholder="Enter your password" id="password" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<input tabindex="3" class="btn btn-inverse large" type="submit" value="Login">
									<hr>
									
								</div>
							</fieldset>
						</form>
						<p class="text-light">
							Don't have an account? <a href="/asm-java4-hibernate/signin" class="link-info">Register
								here</a>
						</p>
					</div>
				</div>
				
			  
			</div>
		</div>
</div>
<!--header end here-->
<!-- <div class="copyright">
	<p>© 2016 Classy Login Form. All rights reserved | Design by  <a href="http://w3layouts.com/" target="_blank">  W3layouts </a></p>
</div> -->
<!--footer end here-->
<script src="<c:url value='home/themes/js/common.js' />"></script>

</body>
</html>