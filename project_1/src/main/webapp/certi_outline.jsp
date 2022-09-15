<%@page import="domain.Certificate"%>
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
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- 모두의 자격증 -->
<title>Original - Lifestyle Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
	<% 
		// 1. 세션에 저장된 로그인 정보 가져오기
		// 형변환(다운캐스팅) 해주기
		String id = (String)session.getAttribute("id");
	
		// 세션에 저정된 vo 가져오기
		Certificate vo = (Certificate)session.getAttribute("vo");
	%>
	<!-- 헤더고정 -->
	<div id="header"></div>
	<script>
        async function fetchHtmlAsText(url) {
            return await (await fetch(url)).text();
        }

        async function importPage(target) {
            document.querySelector('#' + target).innerHTML = await fetchHtmlAsText(target + '.html');
        }
        importPage("header")

    </script>
	<!-- 헤더고정 끝 -->

	<!-- ##### Single Blog Area Start ##### -->
	<div class="single-blog-wrapper section-padding-0-100">

		<!-- Single Blog Area  -->
		<div class="single-blog-area blog-style-2 mb-50">
			<div class="single-blog-thumbnail">
				<img src="img/bg-img/b5.jpg" alt="">
				<div class="post-tag-content">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="post-date">
									<a href="#">12 <span>march</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<!-- 자격증 상세정보표시(수정) -->
				<div class="col-12 col-lg-9">
					<!-- Single Blog Area  -->
					<div class="single-blog-area blog-style-2 mb-50">
						<!-- Blog Content -->
						<div class="single-blog-content">
							<div class="line"></div>
							<h4>
								<a href="#" class="post-headline mb-0"><%= vo.getCerti_name()%> </a>
							</h4>
							<div class="post-meta mb-50">
								<p>
									사이트 이름 <a href="#">자격증 접수 페이지 연결!</a>
								</p>
							</div>
							<p><%= vo.getCerti_outline()%></p>
						</div>
					</div>

					<!-- 댓글보기 기능 구현 (수정)-->
					<div class="comment_area clearfix mt-70">
						<h5 class="title">Comments</h5>

						<ol>
							<!-- 댓글내용(수정) -->
							<li class="single_comment_area">
								<div class="comment-content d-flex">
									<div class="comment-meta">
										<a href="#" class="post-date">날짜</a>
										<p>
											<a href="#" class="post-author">서효승</a>
										</p>
										<p>정보처리기사 기출문제 공유좀요 ㅜㅜ.</p>
									</div>
								</div>
							</li>
						</ol>
					</div>

					<!-- 댓글달기 기능 구현(수정) -->
					<div class="post-a-comment-area mt-70">
						<h5>댓글달기</h5>
						<!-- Reply Form -->
						<form action="#" method="post">
							<div class="row">
								<div class="col-12">
									<div class="group">
										<textarea name="message" id="message" required></textarea>
										<span class="highlight"></span> <span class="bar"></span> <label>댓글</label>
									</div>
								</div>
								<div class="col-12">
									<button type="submit" class="btn original-btn">확인</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Single Blog Area End ##### -->

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