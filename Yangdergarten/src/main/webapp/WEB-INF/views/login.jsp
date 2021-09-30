<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Document</title>
     <jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
    
</head>
<body>
	
    <div class="login-page">
		<div class="form">


			<form class="login-form" action="login.samu" method="POST">

				<input type="text" name="id" id="id" placeholder="아이디" />
				<hr style="border: solid 0.3px #03a4ed;">
				<input type="password" name="pwd" id="pwd" placeholder="비밀번호" />
				<hr style="border: solid 0.3px #03a4ed;">				
				<button type="submit">login</button>

				
			</form>


		</div>
	</div>
	
	

</body>
</html>