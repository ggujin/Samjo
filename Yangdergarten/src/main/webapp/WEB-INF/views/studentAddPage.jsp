<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<!--Bootstrap Table-->
<link rel="stylesheet" href="css/jstyle.css">
<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>

<title>관리자 페이지</title>
<style>
form#sadd {
	background-image: url(img/studentadd.png);
	background-size: cover;
	box-shadow: 0px 0px 15px rgb(0 0 0/ 10%);
	padding: 60px 120px;
	border-radius: 30px;
}

.buttons {
	display: flex;
	flex-direction: row;
	justify-content: center;
}
</style>

</head>

<body>
	<%@ include file="/WEB-INF/common/header.jsp"%>

	<div id="contents3">

		<form id="sadd" action="StudentAdd.sams" method="get">
			<h3 style="text-align: center; margin: 10px 0 35px 0;">원아등록</h3>
			<table class="table table-striped">
				<tr>
					<th>원생 등록번호</th>
					<td><input type="text" name="studentNum" id="studentNum"
						class="form-control"></td>
				</tr>
				<tr>
					<th>학부모 전화번호</th>
					<td><input type="text" name="phone" id="phone"
						class="form-control"></td>
				</tr>
				<tr>
					<th>원생 이름</th>
					<td><input type="text" name="bName" id="bName"
						class="form-control"></td>
				</tr>
				<tr>
					<th>원생 반</th>
					<td><input type="text" name="bClassNum" id="bClassNum"
						class="form-control"></td>
				</tr>

			</table>
			<div class="buttons">
				<input type="submit" class="btn btn-secondary" value="등록하기"
					style="width: 100px;"> <input type="reset"
					class="btn btn-outline-danger" value="취소"
					style="width: 100px; margin-left: 10px;">


			</div>

		</form>



	</div>
	<%@ include file="/WEB-INF/common/footer.jsp"%>
</body>
<jsp:include page="/WEB-INF/common/jscode.jsp"></jsp:include>

</html>