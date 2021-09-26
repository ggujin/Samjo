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

<script type="text/javascript">
		$(function(){
			$('#searchBtn').click(function(){
				$.ajax({ 
					url: "StudentSearch", //"StudentSearch.sams", 
					type: "GET", 
					data: {bName:$('#bName').val()}, 
					dataType:"html",
					success: function(responsedata) { 
						let data = responsedata.trim();
						console.log(data);
						$('#searchStudent').html(data);
					} 
				});
				//$('#searchStudent').load("StudentSearch.sams?bName="+$('#bName').val());
			});
		});
	</script>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
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
	<div>
		<a href="StudentAddPage.sams">원아등록</a><br>
		<input type="text" name="bName" id="bName">
		<button type="submit" id="searchBtn">원아검색</button>
		<div id="searchStudent"></div>
	</div>
</body>
	
</html>