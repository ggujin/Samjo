<%--
  Created by IntelliJ IDEA.
  User: yangsujin
  Date: 2021/09/28
  Time: 4:01 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>회원 정보 수정</h3>
<div>
    <form action="usersEdit.samu" method="get">
        <c:set var="user" value="${requestScope.user}"/>
        <table class="table table-striped">
            <tr>
                <th>id:</th>
                <td><input type="text" name="id" id="id" value="${user.id}" readonly></td>
            </tr>
            <tr>
                <th>pwd:</th>
                <td><input type="text" name="pwd" id="pwd" value="${user.pwd}"></td>
            </tr>
            <tr>
                <th>phone:</th>
                <td><input type="text" name="phone" id="phone" value="${user.phone}"></td>
            </tr>
            <tr>
                <th>원아 관리 번호:</th>
                <td><input type="text" name="studentNum" id="studentNum" value="${user.studentNum}"></td>
            </tr>
            <tr>
                <th>회원 구분 번호 </th>
                <td><input type="text" name="cnum" id="cnum" value="${user.cnum}"></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="수정하기">
                    <input type="reset" value="취소">
                    <a href="showUsersList.samu">목록가기</a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
