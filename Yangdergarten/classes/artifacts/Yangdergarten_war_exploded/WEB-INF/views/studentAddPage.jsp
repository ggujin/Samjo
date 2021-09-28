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
	<h3>원아등록</h3>
	<div>
		<form action="StudentAdd.sams" method="get">
			<table class="table table-striped">
				<tr>
					<th>studentNum:</th>
					<td><input type="text" name="studentNum" id="studentNum"></td>
				</tr>
				<tr>
					<th>bName:</th>
					<td><input type="text" name="bName" id="bName"></td>
				</tr>
				<tr>
					<th>bClass:</th>
					<td><input type="text" name="bClass" id="bClass"></td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="등록하기">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>