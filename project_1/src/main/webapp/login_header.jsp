<%@page import="domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>모두의 자격증</title>

<link rel="icon" href="img/core-img/favicon.ico">
<link rel="stylesheet" href="style.css">

</head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"></script>

<body>
	<% 
		Member membervo = (Member)session.getAttribute("membervo");
	%>

	<!-- 마이페이지 기능 구현(수정) -->
	<div class="subscribe-newsletter-area">
		<div class="modal fade" id="subsModal2" tabindex="-1" role="dialog"
			aria-labelledby="subsModal2" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="modal-body">
						<h3 style="font-family: 휴먼편지체; font-size: 40px;" class="title">마이페이지</h3>
                        <form action="UpdateCon" class="newsletterForm" method="post">
							<input type="hidden" name="num" value="<%=membervo.getNum()%>">
							<h5 style="font-family: 휴먼편지체;">이름</h5>
                            <input type="text" name="name" id="subscribesForm2" placeholder="<%=membervo.getName() %>"> 
							<h5 style="font-family: 휴먼편지체;">메일</h5>
                            <input type="email" name="email" id="subscribesForm2" placeholder="<%=membervo.getEmail() %>">
							<h5 style="font-family: 휴먼편지체;">아이디</h5>
                            <input type="text" name="id" id="subscribesForm2" placeholder="<%=membervo.getId() %>"> 
							<h5 style="font-family: 휴먼편지체;">비밀번호</h5>
                            <input type="password" name="pw" id="subscribesForm2" placeholder="<%=membervo.getPw() %>">
							
							<button style="font-family: 휴먼편지체; font-size: 20px;"  type="submit" class="btn original-btn">저장</button>
							<a style="font-family: 휴먼편지체; font-size: 20px;"  href="login_index.jsp" class="btn original-btn">닫기</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<header class="header-area">
		<div>
			<div class="subscribe-btn">
				<a style="background-color: white;"></a>
			</div>
			<!-- 로그아웃 버튼 (수정)-->
			<div class="subscribe-btn">
				<a href="index.jsp" class="btn subscribe-btn" data-target="#subsModal1" 
				style="font-family: 휴먼편지체; font-size: 21px; border-radius: 5em; background: #296a97; box-shadow: 1px 2px 10px rgba(0,0,0,0.2); margin-left: 5px; color: #F9F9F9;">로그아웃</a>
			</div>
			<!-- 마이페이지 버튼 (수정) -->
			<div class="subscribe-btn">
				<a href="#" class="btn subscribe-btn" data-toggle="modal" data-target="#subsModal2"
				style="font-family: 휴먼편지체; font-size: 21px; border-radius: 5em; background: #296a97; box-shadow: 1px 2px 10px rgba(0,0,0,0.2); margin-left: 5px; color: #F9F9F9;">마이페이지</a>
			</div>
		</div>

		<!-- 모두의 자격증 로고 -->
		<div class="logo-area text-center">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<img src="./img/logo.png" alt="" width="300px">
					</div>
				</div>
			</div>
		</div>
		<!-- 모두의 자격증 로고 끝 -->

		<!-- 메뉴바 -->
		<div class="original-nav-area" id="stickyNav">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<nav class="classy-navbar justify-content-between">
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span>
							<span></span><span></span></span>
						</div>

						<div class="classy-menu" id="originalNav">
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span>
									<span class="bottom"></span>
								</div>
							</div>

							<div class="classynav">
								<ul>
									<!-- 메인페이지버튼 -->
									<li><a href="login_index.jsp"
										style="font-size: 30px; font-weight: bold; font-family: 휴먼편지체; color: #3c5063; text-shadow: 1px 1px 1.2px #98b4d0;">메인페이지</a></li>
									<!-- 자격증정보보기버튼 (수정)-->
									<li><a href="login_certi_all.html"
										style="font-size: 30px; font-weight: bold; font-family: 휴먼편지체; color: #3c5063; text-shadow: 1px 1px 1.2px #98b4d0;">자격증 정보 보기</a></li>
									<!-- 달력(수정) -->
									<li><a href="MyCertiDateCon"
										style="font-size: 30px; font-weight: bold; font-family: 휴먼편지체; color: #3c5063; text-shadow: 1px 1px 1.2px #98b4d0;">My 달력</a></li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>
</html>