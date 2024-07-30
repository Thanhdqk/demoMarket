<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>
<style type="text/css">
.bg-image-vertical {
	position: relative;
	overflow: hidden;
	background-repeat: no-repeat;
	background-position: right center;
	background-size: auto 100%;
}

@media ( min-width : 1025px) {
	.h-custom-2 {
		height: 100%;
	}
}
</style>
</head>

<body>
	<section class="vh-100">
	<% if (request.getAttribute("errorMessage") != null) { %>
        <!-- Gọi hàm showError nếu có thông báo lỗi -->
        <script>
        function showError(message) {
            alert(message);
        }
            showError("<%= request.getAttribute("errorMessage") %>");
        </script>
    <% } %>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6 text-black">

					<div class="px-5 ms-xl-4">
						<i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4"
							style="color: #709085;"></i> <span class="h1 fw-bold mb-0">Logo</span>
					</div>

					<div
						class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

						<form action="/asm-java4-hibernate/signin" method="POST"
							style="width: 23rem;">

							<h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign
								In</h3>

							<div data-mdb-input-init class="form-outline mb-4">
								<input name="username" type="text"
									class="form-control form-control-lg" /> <label
									class="form-label" for="form2Example18">User name</label>
							</div>

							<div data-mdb-input-init class="form-outline mb-4">
								<input name="password" type="password"
									class="form-control form-control-lg" /> <label
									class="form-label" for="form2Example28">Password</label>
							</div>
							<div data-mdb-input-init class="form-outline mb-4">
								<input name="fullName" type="text"
									class="form-control form-control-lg" /> <label
									class="form-label" for="form2Example28">Full Name</label>
							</div>
							<div data-mdb-input-init class="form-outline mb-4">
								<input name="email" type="email"
									class="form-control form-control-lg" /> <label
									class="form-label" for="form2Example28">Email</label>
							</div>
							<div data-mdb-input-init class="form-outline mb-4">
								<input type="text" class="form-control form-control-lg"
									name="phone" /> <label class="form-label" for="form2Example28">Phone</label>
							</div>
							<!-- <div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="role"
									id="inlineCheckbox1" value="true"> <label
									class="form-check-label" for="inlineCheckbox1">Admin</label>
							</div> -->
							<div class="form-check form-check-inline">
								<input class="form-check-input" checked type="radio" name="role"
									id="inlineCheckbox2" value="1"> <label
									class="form-check-label" for="inlineCheckbox2">User</label>
							</div>


							<div class="pt-1 mb-4">
								<button type="submit" data-mdb-button-init data-mdb-ripple-init
									class="btn btn-info btn-lg btn-block" type="button">Create</button>
							</div>




						</form>

					</div>

				</div>
				<div class="col-sm-6 px-0 d-none d-sm-block">
					<img src="/asm-java4-hibernate/images/hero-bg-2.jpg"
						alt="Login image" class="w-100 vh-100"
						style="object-fit: cover; object-position: left;">
				</div>
			</div>
		</div>
	</section>

</body>
</html>