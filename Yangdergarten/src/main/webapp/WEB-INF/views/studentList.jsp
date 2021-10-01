<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>

<!--Bootstrap Table-->
<link rel="stylesheet" href="css/list.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>



<body>
	<%@ include file="/WEB-INF/common/header.jsp"%>

	<div class="container st_list list">
		<div class="row">
			<div class="col-md-12">
			<h1>원아 목록</h1>
				<div class="btn_area">
					<button type="button" onclick="newPage()">원아등록</button>
				</div>
				<div id="searchStudent">
					<table class="table" style="text-align: center;">
						<thead>
							<tr>
								<th>원아번호</th>
								<th>학부모전화번호</th>
								<th>이름</th>
								<th>소속반</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="studentList" value="${requestScope.studentList}" />
							<c:forEach var="st" items="${studentList}">
								<tr>
									<td><a href="StudentInfo.sams?studentNum=${st.studentNum}">${st.studentNum}</a>
									</td>
									<td>${st.phone}</td>
									<td>${st.bName}</td>
									<td>${st.bClass}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="sch_area">
					<input type="text" name="bName" id="bName">
					<button type="submit" id="searchBtn" class="btn btn-secondary"
						style="margin-left: 10px;">원아검색</button>

				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/common/footer.jsp"%>
</body>
<jsp:include page="/WEB-INF/common/jscode.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		$('#searchBtn').click(function() {
			$.ajax({
				url : "StudentSearch", //"StudentSearch.sams", 
				type : "GET",
				data : {
					bName : $('#bName').val()
				},
				dataType : "html",
				success : function(responsedata) {
					let data = responsedata.trim();
					console.log(data);
					$('#searchStudent').html(data);
				}
			});
			//$('#searchStudent').load("StudentSearch.sams?bName="+$('#bName').val());
		});
	});

	function newPage() {
		window.location.href = "StudentAddPage.sams"
	}
</script>
</html>