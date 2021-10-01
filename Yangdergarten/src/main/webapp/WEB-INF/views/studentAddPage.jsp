<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<!--Bootstrap Table-->
<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
<link rel="stylesheet" href="css/user.css">

<title>관리자 - 원아등록</title>
</head>

<body>
	<%@ include file="/WEB-INF/common/header.jsp"%>

	<div class="addSt-page user-page">

		<!-- <form action="StudentAdd.sams" method="get">
			<h3>원아등록</h3>

			<p>원생 등록번호</p>
			<input type="text" name="studentNum" id="studentNum">

			<p>학부모 전화번호</p>
			<input type="text" name="phone" id="phone">

			<p>원생 이름</p>
			<input type="text" name="bName" id="bName">

			<p>원생 반</p>
			<input type="text" name="bClassNum" id="bClassNum"> -->
		<div class="radius">
		<h3>원아등록</h3>
			<table class="table table-striped">
				
				<tr>
					<td>원생 등록번호</td>
				</tr>
				<tr>
					<td><input type="text" name="studentNum" id="studentNum"
						class="form-control"></td>
				</tr>
				<tr>
					<td>학부모 전화번호</td>
				</tr>
				<tr>
					<td><input type="text" name="phone" id="phone"
						class="form-control"></td>
				</tr>
				<tr>
					<td>원생 이름</td>
				</tr>
				<tr>
					<td><input type="text" name="bName" id="bName"
						class="form-control"></td>
				</tr>
				<tr>
					<td>원생 반</td>
				</tr>
				<tr>
					<td><input type="text" name="bClassNum" id="bClassNum"
						class="form-control"></td>
				</tr>
				<tr>
					<td><div class="btn_area">
							<button type="submit" class="submit">등록</button>
							<button type="reset" class="cancel">취소</button>
						</div></td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="/WEB-INF/common/footer.jsp"%>
</body>
<jsp:include page="/WEB-INF/common/jscode.jsp"></jsp:include>

</html>