<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Bootstrap Table-->
 <jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>원아검색목록</h3>
		<table class="table table-striped">
			<tr>
				<th>원아번호</th>
				<th>학부모전화번호</th>
				<th>이름</th>
				<th>소속반</th>
			</tr>
			<c:set var="studentList" value="${requestScope.studentList}" />
			<c:forEach var="st" items="${studentList}">
				<tr>
					<td><a href="StudentInfo.sams?studentNum=${st.studentNum}">${st.studentNum}</a></td>
					<td>${st.phone}</td>
					<td>${st.bName}</td>
					<td>${st.bClass}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>