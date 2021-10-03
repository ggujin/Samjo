<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<!--Bootstrap Table-->
<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
<link rel="stylesheet" href="css/list.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div class="container sch_list list">
		<h1>원아 검색 목록</h1>
		<div class="btn_area">
			<button type="button" onclick="addPage()">원아등록</button>
		</div>
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

<script type="text/javascript">
	function addPage() {
		window.location.href = "StudentAddPage.sams"
	}
</script>

</html>