<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
<link rel="stylesheet" href="css/login.css">
<title>Document</title>
</head>
<body>

	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>

	<div class="login-page">
		<div class="form">


			<form class="login-form" action="login.samu" method="POST">
				<p>아이디</p>
				<input type="text" name="id" id="id" />
				<p>비밀번호</p>
				<input type="password" name="pwd" id="pwd" />

				<button type="submit">login</button>


			</form>


		</div>
	</div>


	<%@ include file="/WEB-INF/common/footer.jsp"%>
</body>
<jsp:include page="/WEB-INF/common/jscode.jsp"></jsp:include>
</html>