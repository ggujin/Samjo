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
<h3>원아정보수정</h3>
<div>
    <form action="StudentEdit.sams" method="get">
        <c:set var="st" value="${requestScope.student}"/>
        <table class="table table-striped">
            <tr>
                <th>원생 등록정보</th>
                <td><input type="text" name="studentNum" id="studentNum" value="${st.studentNum}" readonly></td>
            </tr>
            <tr>
                <th>원생 이름</th>
                <td><input type="text" name="bName" id="bName" value="${st.bName}"></td>
            </tr>
            <tr>
                <th>학부모 전화번호</th>
                <td><input type="text" name="phone" id="phone" value="${st.phone}"></td>
            </tr>
            <tr>
                <th>원생 반</th>
                <td><select name="bClassNum" id="bClassNum" class="form-control">
						<option value="0">햇님반</option>
						<option value="1">달님반</option>
						<option value="2">별님반</option>
						</select></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="수정하기">
                    <input type="reset" value="취소">
                    <a href="StudentList.sams">목록가기</a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>