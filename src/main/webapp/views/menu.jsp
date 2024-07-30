
<ul>
								<li class="current-list-item"><a href="#">Home</a>
									<ul class="sub-menu">
										<li><a href="index.jsp">Static Home</a></li>
										<li><a href="index_2.jsp">Slider Home</a></li>
									</ul>
								</li>
								<li><a href="about.jsp">About</a></li>
								<li><a href="#">Pages</a>
									<ul class="sub-menu">
										
										<li><a href="about.jsp">About</a></li>
										<li><a href="cart.jsp">Cart</a></li>
										<li><a href="checkout.jsp">Check Out</a></li>
										<li><a href="contact.jsp">Contact</a></li>
										<li><a href="news.jsp">News</a></li>
										<li><a href="shop.jsp">Shop</a></li>
									</ul>
								</li>
								<li><a href="news.jsp">News</a>
									<ul class="sub-menu">
										<li><a href="news.jsp">News</a></li>
										<li><a href="single-news.jsp">Single News</a></li>
									</ul>
								</li>
								<li><a href="contact.jsp">Contact</a></li>
								<li><a href="shop.jsp">Shop</a>
									<ul class="sub-menu">
										<li><a href="shop.jsp">Shop</a></li>
										<li><a href="checkout.jsp">Check Out</a></li>
										<li><a href="single-product.jsp">Single Product</a></li>
										<li><a href="cart.jsp">Cart</a></li>
									</ul>
								</li>
								<li>
 									<div class="header-icons">
										<a class="shopping-cart" href="<c:url value='/cart?action=view' />"><i class="fas fa-shopping-cart"></i><b>(<span id="countTotal">${sessionScope.cart.tongsl}</span>)</b></a>
										<a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
										<!-- <a class="shopping-cart" href="login.jsp"><i class="fas fa-user"></i></a> -->
										<c:if test="${empty sessionScope.user}">
											<li><a class="shopping-cart" href="<c:url value='/login' />"><i class="fas fa-user"></i></a></li>
										</c:if>
										<c:if test="${not empty sessionScope.user}">
											<li><a href="<c:url value='/logout' />">Logout</a></li>					
											<li><i>Welcome,</i> <b>${sessionScope.user.username}</b></li>
										</c:if>		
									</div> 

									
								</li>
							</ul>