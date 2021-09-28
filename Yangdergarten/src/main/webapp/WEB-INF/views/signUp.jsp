<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입</h2>

<%--         ${pageContext.request.contextPath}--%>
        <form action="signup.samu" method="post">
            ID:   <input type="text"     name="id" placeholder="id입력"><br>
            PWD:  <input type="password" name="pwd" placeholder="pwd입력"><br>
            Phone:<input type="text"     name="phone" placeholder="Phone 입력"><br>
            원아번호입력  :<input type="text"     name="studentNum" placeholder="studentNum 입력"><br>
            <input type="submit" value="회원가입">
            <input type="reset" value="취소">
        </form>


</body>
</html>