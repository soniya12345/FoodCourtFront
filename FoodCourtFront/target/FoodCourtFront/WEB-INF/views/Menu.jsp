<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
.navbar-default {
    background-color: #FFA07A;
    border-color: #E7E7E7;
}
</style>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" id="my-navbar">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a href="Home" class="navbar-brand">
				<i class="fa fa-home fa-6" aria-hidden="true">Home</i>
					<!--  <img src="<c:url value="/resources/images/images.jpg"/>" style="max-height: 50px; margin-top: -15px;" alt="logo" />-->
				</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${isUserLoggedIn=='true'}"> 
						<!--<c:url var="Logout" value="/j_spring_security_Logout"/>-->
						<c:if test="${isUserLoggedIn=='true'}"  >
						 <li ><a href="Home"><i class="fa fa-user" aria-hidden="true"></i> ${user.name}</a></li>
						 </c:if>
						<li><a href="myCart"><i class="fa fa-shopping-cart" aria-hidden="true"></i> My Cart <span class="label label-info">${cartSize}</span></a></li>
						<li><a href="secure_logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Log Out </a></li>

					</c:if>
					<c:if test="${isAdmin=='true'}">
						<li><a href="<c:url value="secure_logout" />"><i class="fa fa-sign-out" aria-hidden="true"></i> Log Out </a></li>

					</c:if>
					<c:if test="${!isUserLoggedIn=='true' && !isAdmin =='true'}">
						<li><a href="RegistrationPage"><i class="fa fa-user-plus" aria-hidden="true"></i> SignUp </a></li>
						<li><a href="Login"><i class="fa fa-sign-in" aria-hidden="true"></i> Login </a></li>
					</c:if>


				</ul>



				<ul class="nav navbar-nav">

					<!-- Dropdown of category -->


					<c:forEach var="category" items="${categoryList}">
						<li class="dropdown"><a href="showProductByCategory/${category.id}"> ${category.name}
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu scrollable-menu" role="menu">
								<c:forEach var="product" items="${productList}">
									<c:if test="${product.category_id == category.id}">
										<li><a href="viewProduct/${product.id}">${product.name}</a></li>
									</c:if>

									<!-- <li><a href="#">${product.name}</a></li> -->
								</c:forEach>


							</ul></li>
					</c:forEach>

					<li><a href="ContactUs"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Contact Us </a></li>

				</ul>
			</div>
		</div>
	</nav>




</body>
</html>
