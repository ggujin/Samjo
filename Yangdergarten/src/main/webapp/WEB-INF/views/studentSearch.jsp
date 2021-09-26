<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!--Bootstrap Table-->
   	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>원아검색목록</h3>
		<table class="table table-striped">
			<tr>
				<th>원아번호</th>
				<th>이름</th>
				<th>소속반</th>
			</tr>
			<c:set var="studentList" value="${requestScope.studentList}" />
			<c:forEach var="st" items="${studentList}">
				<tr>
					<td><a href="StudentInfo.sams?studentNum=${st.studentNum}">${st.studentNum}</a></td>
					<td>${st.bName}</td>
					<td>${st.bClass}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>