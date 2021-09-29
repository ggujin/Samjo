<%--
  Created by IntelliJ IDEA.
  User: KBS
  Date: 9/25/2021
  Time: 오후 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<c:if test="${boardid == '0'}">
    <h1>공지사항</h1>
</c:if>
<c:if test="${boardid == '1'}">
    <h1>우리반 소식</h1>
</c:if>
<c:if test="${boardid == '2'}">
    <h1>학부모 공간</h1>
</c:if>

<a href="BoardAddOrEdit.samb?boardid=${boardid}&mode=0">글쓰기</a>
<table>

    <tr>
        <th>Writer</th>
        <th>Title</th>
        <th>date</th>

    </tr>
            <c:forEach var="board" items="${boardlist}">
                <tr>
                    <td>${board.author}</td>
                    <td>
<%--                        <a href="BoardContent.do?boardid=${boardid}&boardindex=${board.boardindex}&depth=${board.depth}&reference=${board.reference}">--%>
                    <a href="BoardContent.samb?boardindex=${board.boardindex}">
                            ${board.title}
                        </a>
                    </td>

                    <td>${board.updateDate}</td>

                </tr>
            </c:forEach>
</table>

<form action="SearchBoard.samb?boardid=${boardid}" method="post">

<select name="searchmode">
    <option value="0">이름</option>
    <option value="1">제목</option>
</select>
    <input type="text" name="searchvar">
    <button type="submit">search</button>
</form>
<c:set var="pager" value="${requestScope.pager.toString()}"></c:set>
<div>${pager}</div>
</body>
</html>
