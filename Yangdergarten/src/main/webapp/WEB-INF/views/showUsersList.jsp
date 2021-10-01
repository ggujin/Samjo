<%--
  Created by IntelliJ IDEA.
  User: yangsujin
  Date: 2021/09/28
  Time: 1:39 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet" href="css/jstyle.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script type="text/javascript">
	$(function() {
		$('#searchBtn').click(function() {
			$.ajax({
				url : "usersSearch", //"StudentSearch.sams",
				type : "GET",
				data : {
					id : $('#id').val()
				},
				dataType : "html",
				success : function(responsedata) {
					let data = responsedata.trim();
					console.log(data);
					$('#searchUsers').html(data);
				}
			});
			//$('#searchStudent').load("StudentSearch.sams?bName="+$('#bName').val());
		});
	});
</script>
<style>
body {
	background-color: #efefef;
	align-items: center;
	color: #333;
	font-family: "Roboto";
	font-weight: 400;
	margin: 0;
}

.container {
	margin-top: 5%;
}

.buttons {
	display: flex;
	flex-direction: row;
	justify-content: center;
}
</style>

</head>
<body>
	<div id="header"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="searchbar" style="float: right;">
					<input type="text" name="id" id="id">
					<button type="submit" id="searchBtn" class="btn btn-secondary">검색하기</button>
				</div>
				<div id="searchUsers">
					<table class="table" style="text-align: center;">
						<thead>
							<tr>
								<th>ID</th>
								<th>PASSWORD</th>
								<th>PHONE</th>
								<th>STUDENTNUM</th>
								<th>CNUM</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="usersDtoList" value="${requestScope.usersList}" />
							<c:forEach var="users" items="${usersDtoList}">
								<tr>
									<td><b><a href="./showUsersInfo.samu?id=${users.id}">${users.id}</a></b></td>
									<td>${users.pwd}</td>
									<td>${users.phone}</td>
									<td>${users.studentNum}</td>
									<td>${users.cname}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
