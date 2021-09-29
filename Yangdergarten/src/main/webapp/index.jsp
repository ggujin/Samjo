<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
 <jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
</head>
<body>
</head>
<body>
<%@ include file="WEB-INF/common/header.jsp" %>

<!-- ##### 메인 상단부 시작 ##### -->
	<section class="main_upper section-padding-80">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-12 col-md-7 col-lg-8 banner ">
					<img class="banner_img" src="http://requaid.dothome.co.kr/data/file/url/2049823731_qr5moIgn_c7fc8c1602c0976fd001e3e90a0b74dcebf1dfae.jpg">
				</div>

				<div class="col-12 col-md-5 col-lg-4">
					<div class="weather">날씨 API</div>
					<div class="notice_simple">
						<ul>
							<li>공지사항</li>
							<li>공지 약식1</li>
							<li>공지 약식2</li>
							<li>공지 약식3</li>
							<li>공지 약식4</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### 메인 상단부 종료 ##### -->

	<!-- ##### 메인 하단부 시작 ##### -->
	<section class="main_under">
		<div class="container">

			<div class="section-heading">
				<div class="line"></div>
			</div>


			<div class="row">
				<!-- 일정표 약식 -->
				<div class="col-12 col-md-4 schedule_simple">
					<div class="">일정표</div>
				</div>


				<!-- 식단표 약식 -->
				<div class="col-12 col-md-4 foodtable_simple">
					<div>식단표</div>
				</div>

			</div>

		</div>
	</section>
	<!-- ##### 메인 하단부 종료 ##### -->
	
	<%@ include file="WEB-INF/common/footer.jsp" %>
</body>
 <jsp:include page="/WEB-INF/common/jscode.jsp"></jsp:include>
</html>