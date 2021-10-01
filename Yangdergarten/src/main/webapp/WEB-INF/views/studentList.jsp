<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
<!--Bootstrap Table-->
<link rel="stylesheet" href="css/jstyle.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


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

</head>

<body>
	<%@ include file="/WEB-INF/common/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<input type="button" onclick="newPage()" value="원아등록"
					class="btn btn-danger" style="float: right; margin: 10px;">
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
				<div class="buttons">
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

</html>