<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head><style>
	
	.danhmuc:hover{
		color: red;
	}
</style>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
	<link href="<c:url value='home/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">      
	<link href="<c:url value='home/bootstrap/css/bootstrap-responsive.min.css' />" rel="stylesheet">		
	<link href="<c:url value='home/themes/css/bootstrappage.css' />" rel="stylesheet"/> -
	
	<!-- global styles -->
	<link href="<c:url value='home/themes/css/flexslider.css' />" rel="stylesheet"/>
	<link href="<c:url value='home/themes/css/main.css' />" rel="stylesheet"/>

	<!-- scripts -->
	<script src="<c:url value='home/themes/js/jquery-1.7.2.min.js' />"></script>
	<script src="<c:url value='home/bootstrap/js/bootstrap.min.js' />"></script>				
	<script src="<c:url value='home/themes/js/superfish.js' />"></script>	
	<!--[if lt IE 9]>			
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="js/respond.min.js"></script>
	<![endif]-->
	<!-- title -->
	<title>Fruitkha - Slider Version</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">

</head>
<body>
	
	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
	
	<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
			<div class="main-menu-wrap">
				<!-- logo -->
				<div class="site-logo">
					<a href="<c:url value='/index' />">
						<img src="assets/img/logo.png" alt="">
					</a>
				</div>
				<!-- logo -->

				<!-- menu start -->
				<nav class="main-menu">
					<ul>
						<li class="current-list-item"><a href="#">Home</a>
							<ul class="sub-menu">
								<li><a href="index.html">Static Home</a></li>
								<li><a href="index_2.html">Slider Home</a></li>
							</ul>
						</li>
						<li><a href="about.html">About</a></li>
						<li><a href="#">Pages</a>
							<ul class="sub-menu">
								<li><a href="404.html">404 page</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="">Cart</a></li>
								<li><a href="checkout.html">Check Out</a></li>
								<li><a href="contact.html">Contact</a></li>
								<li><a href="news.html">News</a></li>
								<li><a href="shop.html">Shop</a></li>
							</ul>
						</li>
						<li><a href="news.html">News</a>
							<ul class="sub-menu">
								<li><a href="news.html">News</a></li>
								<li><a href="single-news.html">Single News</a></li>
							</ul>
						</li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="shop.html">Shop</a>
							<ul class="sub-menu">
								<li><a href="shop.html">Shop</a></li>
								<li><a href="checkout.html">Check Out</a></li>
								<li><a href="single-product.html">Single Product</a></li>
								<li><a href="">Cart</a></li>
							</ul>
						</li>
						<li>
							<div class="header-icons">
								<a class="shopping-cart" href="<c:url value='/cart?action=view' />"><i class="fas fa-shopping-cart"></i> <b>(<span id="countTotal">${sessionScope.cart.tongsl}</span>)</b></a>
								<c:if test="${empty sessionScope.user}">
									<li><a href="<c:url value='/login' />"><i class="fas fa-user"></i></a></li>
								</c:if>
								<c:if test="${not empty sessionScope.user}">
									<li><a href="<c:url value='/logout' />">Logout</a></li>					
									<li style="font-weight: bolder; color: white;"><i>Hi !</i> <b>${sessionScope.user.username}</b></li>
								</c:if>	
							</div>	
							<input type="hidden" id="checkUserLogin" value="${sessionScope.user.username}" />
						</li>
					</ul>
				</nav>
			</div>
		</div>
		</div>
		</div>
	</div>
	<!-- end header -->
	
	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<h3>Search For:</h3>
							<input type="text" placeholder="Keywords">
							<button type="submit">Search <i class="fas fa-search"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search area -->

	<!-- home page slider -->
	<div class="homepage-slider">
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-1">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-7 offset-lg-1 offset-xl-0">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Fresh & Organic</p>
								<h1>Delicious Seasonal Fruits</h1>
								<div class="hero-btns">
									<a href="shop.html" class="boxed-btn">Fruit Collection</a>
									<a href="contact.html" class="bordered-btn">Contact Us</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1 text-center">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Fresh Everyday</p>
								<h1>100% Organic Collection</h1>
								<div class="hero-btns">
									<a href="shop.html" class="boxed-btn">Visit Shop</a>
									<a href="contact.html" class="bordered-btn">Contact Us</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-3">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1 text-right">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Mega Sale Going On!</p>
								<h1>Get December Discount</h1>
								<div class="hero-btns">
									<a href="shop.html" class="boxed-btn">Visit Shop</a>
									<a href="contact.html" class="bordered-btn">Contact Us</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end home page slider -->

	<!-- features list section -->
	<div class="list-section pt-80 pb-80">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-shipping-fast"></i>
						</div>
						<div class="content">
							<h3>Free Shipping</h3>
							<p>When order over $75</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-phone-volume"></i>
						</div>
						<div class="content">
							<h3>24/7 Support</h3>
							<p>Get support all day</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="list-box d-flex justify-content-start align-items-center">
						<div class="list-icon">
							<i class="fas fa-sync"></i>
						</div>
						<div class="content">
							<h3>Refund</h3>
							<p>Get refund within 3 days!</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- end features list section -->

	<!-- product section -->
	<div class="product-section mt-150 mb-150" style="margin-left: 400px;">
		<div class="container">
			<div class="row" >
				<div class="col-lg-8 col-md-12">
					<div class="cart-table-wrap">
						<h4 class="title"><span class="text"><strong>Your</strong> Cart</span></h4>
						<table class="cart-table table-striped">
							<thead class="cart-table-head">
								<tr class="table-head-row">
									<th class="product-remove">Remove</th>
									<th class="product-image">Product Image</th>
									<th class="product-name">Name</th>
									<th class="product-quantity">Quantity</th>
									<th class="product-price">Price</th>
									<th class="product-total">Total</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="cartDetail" items="${sessionScope.cart.detail}">
									<tr id="tr-${cartDetail.value.masp}" class="table-body-row">
										<td class="product-remove"><button onclick="removeSP('${cartDetail.value.masp}')" class="btn btn-danger" type="button">X</button></td>
										<td class="product-image"><img src="<c:url value='home/themes/images/product/${cartDetail.value.hinh}' />" alt=""></td>
										<td class="product-name">${cartDetail.value.tensp}</td>
										<td class="product-quantity"><input id="slMua-${cartDetail.value.masp}" onchange="updateCart('${cartDetail.value.masp}')" type="number" class="input-mini" value="${cartDetail.value.slMua}"></td>
										<td class="product-price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${cartDetail.value.giasp}" /></td>
										<td class="product-total">
											<span id="totalSP-${cartDetail.value.masp}">
												<fmt:formatNumber type="number" maxFractionDigits="3" value="${cartDetail.value.giasp * cartDetail.value.slMua}" />
											</span> 
										</td>
									</tr>
									 <input type="hidden" id="giaSP-${cartDetail.value.masp}" value="${cartDetail.value.giasp}" /> 
								</c:forEach>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td><strong id="tongTien"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sessionScope.cart.tongtien}"/></strong></td>
								</tr>
							</tbody>
						</table>
						<div class="row-fluid">
							<div class="span6">
								<div class="control-group">
									<label class="control-label">Phone number:</label>
									<div class="controls">
										<input id="phoneNumber" type="text" placeholder="" maxlength="11" class="input-xlarge">
									</div>
								</div>
							</div>
							<div class="span6">
								<div class="control-group">
									<label class="control-label">Address:</label>
									<div class="controls">
										<input id="address" type="text" placeholder="" class="form-control">
									</div>
								</div>
							</div>
						</div>
						<hr/>
						<p class="buttons center">				
							<button class="btn cart-btn" type="button" id="payNow">Pay Now</button>
						</p>
					</div>
				</div>
			</div>
		</div>		
	</div>
	<!-- end product section -->

	<!-- logo carousel -->
	<div class="logo-carousel-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<img src="assets/img/company-logos/1.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/2.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/3.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/4.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/5.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end logo carousel -->

	<!-- footer -->
	<div class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer-box about-widget">
						<h2 class="widget-title">About us</h2>
						<p>Ut enim ad minim veniam perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box get-in-touch">
						<h2 class="widget-title">Get in Touch</h2>
						<ul>
							<li>34/8, East Hukupara, Gifirtok, Sadan.</li>
							<li>support@fruitkha.com</li>
							<li>+00 111 222 3333</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box pages">
						<h2 class="widget-title">Pages</h2>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="services.html">Shop</a></li>
							<li><a href="news.html">News</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box subscribe">
						<h2 class="widget-title">Subscribe</h2>
						<p>Subscribe to our mailing list to get the latest updates.</p>
						<form action="index.html">
							<input type="email" placeholder="Email">
							<button type="submit"><i class="fas fa-paper-plane"></i></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end footer -->
	
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<p>Copyrights &copy; 2019 - <a href="https://imransdesign.com/">Imran Hossain</a>,  All Rights Reserved.<br>
						Distributed By - <a href="https://themewagon.com/">Themewagon</a>
					</p>
				</div>
				<div class="col-lg-6 text-right col-md-12">
					<div class="social-icons">
						<ul>
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end copyright -->
	<script src="<c:url value='home/themes/js/common.js' />"></script>	
	<!-- jquery -->
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>

</body>
<script>
	function removeSP(maSP) {
		$.ajax({
			url: 'cart?action=add&masp=' + maSP + '&soluong=0&isUpdate=0',
			dataType : 'json'
		}).then(function(data) {
			$('#tongTien').text(numberWithDot(data.tongtien));
			$('#countTotal').text(data.tongsl);
			var idRemoveTag = '#tr-' + maSP;
			$(idRemoveTag).remove();
		}).fail(function(error) {
			alert('Xóa thất bại, vui lòng thử lại!');
		});
	}
	
	function updateCart(maSP) {
		var idInputSL = '#slMua-' + maSP;
		var slUpdate = $(idInputSL).val();
		var idInputGiaSP = '#giaSP-' + maSP;
		var giaSP = parseFloat($(idInputGiaSP).val());
		if (parseInt(slUpdate) < 1) {
			removeSP(maSP);
		} else {
			$.ajax({
				url: 'cart?action=add&masp=' + maSP + '&soluong=' + slUpdate + '&isUpdate=1',
				dataType : 'json'
			}).then(function(data) {
				$('#tongTien').text(numberWithDot(data.tongtien));
				$('#countTotal').text(data.tongsl);
				var tongTienSPUpdate = parseFloat(giaSP * parseInt(slUpdate)); 
				let idTongGiaSP = '#totalSP-' + maSP;
				$(idTongGiaSP).text(numberWithDot(tongTienSPUpdate));
			}).fail(function(error) {
				alert('Cập nhật thất bại, vui lòng thử lại!');
			});
		}
	}
	
	$('#payNow').click(function() {
	    var checkUserLogin = $('#checkUserLogin').val();
	    if (checkUserLogin.length == 0) {
	        // Chuyển hướng đến trang đăng nhập nếu chưa đăng nhập
	        window.location.href = "login";
	        return;
	    }

	    // Tiếp tục xử lý nếu đã đăng nhập
	    var phone = $('#phoneNumber').val();
	    var address = $('#address').val();
	    if (phone.length == 0) {
	        alert('Vui lòng nhập số điện thoại');
	        $('#phoneNumber').focus();
	        return;
	    };
	    if (address.length == 0) {
	        alert('Vui lòng nhập địa chỉ');
	        $('#address').focus();
	        return;
	    }

	    // Tiếp tục xử lý thanh toán khi thông tin hợp lệ
	    $.ajax({
	        url: 'cart?action=paying&phone=' + phone + '&address=' + address,
	        dataType: 'text'//Kiểu dữ liệu của yêu cầu AJAX
	    }).then(function(data) {
	        alert('Thanh toán thành công!');
	        window.location.href = "index";
	    }).fail(function(error) {
	    	alert('Thanh toán thất bại!');
	    });
	})

	
	function numberWithDot(x) {
		return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ".");
	}
</script>
</html>