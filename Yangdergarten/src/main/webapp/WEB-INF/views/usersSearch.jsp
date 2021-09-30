<%--
  Created by IntelliJ IDEA.
  User: yangsujin
  Date: 2021/09/28
  Time: 8:36 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>검색 목록</h2>
<table class="table table-striped">
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
    <c:set var="usersDtoList" value="${requestScope.usersDtoList}"/>
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

</body>
</html>
