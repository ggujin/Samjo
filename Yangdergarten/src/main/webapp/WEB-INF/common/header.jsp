<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ##### Header Area Start ##### -->
	<header class="header-area">
		<!-- Top Header Area -->
		<div class="top-header-area">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12 col-md-6">
						<!-- Breaking News Widget -->
						<div class="notice-area d-flex align-items-center">

							<div class="news-title">
								<p>공지사항:</p>
							</div>
							<div id="breakingNewsTicker" class="ticker">
								<ul>
									<li><a href="single-post.html">프론트팀 '검은 화면 지긋지긋해' 발언 </a></li>
									<li><a href="single-post.html">[속보] 헤더 분리 성공하였으나 지저분한
											CSS 문제 남아…</a></li>
									<li><a href="single-post.html">'기간내 마칠수 있을지 심려됨' 발표</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div
							class="top-meta-data d-flex align-items-center justify-content-end">
							<!-- Top Social Info -->
							<!-- <div class="top-social-info">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-pinterest"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div> -->
							<!-- Top Search Area -->
							<!-- <div class="top-search-area">
								<form action="index.html" method="post">
									<input type="search" name="top-search" id="topSearch"
										placeholder="Search...">
									<button type="submit" class="btn">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
								</form>
							</div> -->
							<!-- Login -->
							<a href="showLogin.samu" class="login-btn"><i class="fa fa-user"
								aria-hidden="true"></i>  로그인</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Navbar Area -->
		<div class="vizew-main-menu" id="sticker">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">

					<!-- Menu -->
					<nav class="classy-navbar justify-content-between" id="Nav">

						<!-- Nav brand -->
						<a href="index.jsp" class="nav-brand"><img
							src="https://www.joeunsorikd.kg.kr:479/data/designImages/TITLE_LOGO_1583382672.jpg" alt=""></a>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<div class="classy-menu">

							<!-- Close Button -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<!-- <li class="active"><a href="index.html">Home</a></li> -->
									<li><a href="intro.jsp">원 정보</a>
										<ul class="dropdown">
											<li><a href="index.html">유치원 소개</a></li>
											<li><a href="archive-list.html">오시는 길</a></li>
											<li><a href="archive-list.html">신청 방법</a></li>
										</ul></li>
									<li><a href="#">공지사항</a> <!-- 관리자 ONLY -->
										<ul class="dropdown">
											<li><a href="BoardList.samb?boardid=0">공지사항</a></li>
											<li><a href="archive-list.html">행사 안내</a></li>
											<li><a href="archive-grid.html">식단표</a></li>
											<li><a href="single-post.html">행정 정보 공개</a></li>
										</ul></li>
									<li><a href="BoardList.samb?boardid=1">우리반 소식</a> <!-- 관리자only / 댓글 가능 -->
										</li>
									<li><a href="BoardList.samb?boardid=2">학부모 공간</a> <!-- 글쓰기 / 댓글 가능 -->
									</li>
									<li><a href="adminPage.samu">관리자 페이지</a> <!-- 관리자 권한일때만 보임 -->
									</li>
								</ul>
							</div>
							<!-- Nav End -->
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ##### Header Area End ##### -->


	</header>
</body>

</html>