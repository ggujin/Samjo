<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<c:set var="st" value="${requestScope.student}"/>
<table class="table table-striped">
    <tr>
        <td style="width: 100px">studentNum</td>
        <td style="width: 100px">${st.studentNum}</td>
    </tr>
    <tr>
        <td style="width: 100px">bName</td>
        <td style="width: 100px">${st.bName}</td>
    </tr>
    <tr>
        <td style="width: 100px">phone</td>
        <td style="width: 100px">${st.phone}</td>
    </tr>
    <tr>
        <td style="width: 100px">bClass</td>
        <td style="width: 100px">${st.bClass}</td>
    </tr>
    <tr>
        <td colspan="2">
            <a href="StudentList.sams">목록가기</a>
            <a href="StudentEditPage.sams?studentNum=${st.studentNum}">수정하기</a>
            <a href="StudentDelete.sams?studentNum=${st.studentNum}">삭제하기</a>
        </td>
    </tr>
</table>
</body>
</html>