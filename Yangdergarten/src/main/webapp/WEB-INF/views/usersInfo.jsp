<%--
  Created by IntelliJ IDEA.
  User: yangsujin
  Date: 2021/09/28
  Time: 3:23 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h2>Member Detail</h2>
    <c:set var="user" value="${requestScope.user}" />
    <table class="table table-striped">
        <tr>
            <td>아이디</td>
            <td id="id">${user.id}</td>
        </tr>
        <tr>
            <td>비번</td>
            <td>${user.pwd}</td>
        </tr>
        <tr>
            <td>phone</td>
            <td>${user.phone}</td>
        </tr>
        <tr>
            <td>원아번호</td>
            <td>${user.studentNum}</td>
        </tr>
        <tr>
            <td>회원분류</td>
            <td>${user.cnum}</td>
        </tr>

    </table>
    <div>
        <a href="showUsersList.samu">목록가기</a>
        <a href="usersEditPage.samu?id=${user.id}">수정하기</a>
<%--        StudentEditPage.sams?studentNum=${st.studentNum}--%>
        <a href="usersDelete.samu?id=${user.id}">삭제하기</a>
    </div>
</div>
</body>
</html>
