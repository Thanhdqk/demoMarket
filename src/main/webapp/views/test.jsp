<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
    <base href="/asm-java4-hibernate/" />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    .hd{
   
    background: rgb(2,0,36);
    background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
}
  </style>
</head>
<body class="hd">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><img style="width: 100px ; height: 30px"  src="assets/img/logo.png" alt=""></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">${sessionScope.messageHomePage}</a></li>
        
      </ul>
      <form class="navbar-form navbar-right" role="search">
        <div class="form-group input-group">
          <input type="text" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button">
              <span class="glyphicon glyphicon-search"></span>
            </button>
          </span>        
        </div>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value='/logout' />">Logout</a></li>	
        <li><a href="Bai3_AccountManagementServlet"><span class="glyphicon glyphicon-user"></span> Account management</a></li>
<%--         <c:if test="${sessionScope.user.admin == 'true'}"> --%>
<!--         	<li><a href="admin/home/index"><span class="glyphicon glyphicon-user"></span> Account management</a></li> -->
<%--         </c:if> --%>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container text-center">    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <p><a href="#">${sessionScope.user.id}</a></p>
       <img src="home/themes/images/product/icon.png
          " alt="">
      </div>
     
      <div class="alert alert-success fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
        <p><strong>Ey!</strong></p>
        People are looking at your profile. Find out who.
      </div>
      <p><a href="#"> <img style="width: 100px ; height: 30px"  src="assets/img/logo.png" alt=""> </a></p>
      <p><a href="#"><img style="width: 100px ; height: 30px"  src="assets/img/logo.png" alt=""></a></p>
      <p><a href="#"><img style="width: 100px ; height: 30px"  src="assets/img/logo.png" alt=""></a></p>
    </div>
    <div class="col-sm-7">
    
      <div class="row">
        <div class="col-sm-6">
          <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="false" class="text-danger">WELCOME ${sessionScope.user.username}</p>
              <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-thumbs-up"></span> Like
              </button>     
            </div>
          </div>
        </div>
        <div class="col-sm-6 mt-3"  >
        	<a href="#"> <img style="width: 200px ; height: 60px"  src="assets/img/logo.png" alt=""> </a>
        </div>
      </div>
      
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p class="text-danger fw-bold h4">Táo Đỏ</p>
          <img style="width: 100px ; height: 50px"  src="home/themes/images/product/hinhanh10.jpg
          " alt="">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos maiores incidunt dicta velit quis ea maxime nam quisquam autem rerum molestiae iusto totam numquam vel in expedita molestias vitae nobis.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <p class="text-danger fw-bold h4">Cam</p>
           <img style="width: 100px ; height: 50px"  src="home/themes/images/product/hinhanh6.jpg
          " alt="">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos maiores incidunt dicta velit quis ea maxime nam quisquam autem rerum molestiae iusto totam numquam vel in expedita molestias vitae nobis.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           < <p class="text-danger fw-bold h4">Chanh xanh</p>
          <img style="width: 100px ; height: 50px"  src="home/themes/images/product/hinhanh8.jpg
          " alt="">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos maiores incidunt dicta velit quis ea maxime nam quisquam autem rerum molestiae iusto totam numquam vel in expedita molestias vitae nobis.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <p class="text-danger fw-bold h4">Nho </p>
           <img style="width: 100px ; height: 50px"  src="home/themes/images/product/hinhanh7.jpg
          " alt="">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos maiores incidunt dicta velit quis ea maxime nam quisquam autem rerum molestiae iusto totam numquam vel in expedita molestias vitae nobis.</p>
          </div>
        </div>
      </div>     
    </div>
    <div class="col-sm-2 well hd">
           
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center ">
  <p>Footer Text</p>
  <h2>Visitors: ${applicationScope.visitors}</h2>
</footer>

</body>
</html>