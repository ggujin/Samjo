<%--
  Created by IntelliJ IDEA.
  User: KBS
  Date: 9/25/2021
  Time: 오후 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

</head>

<body>
<c:set var="board" value="${requestScope.board}"></c:set>

    <a href="BoardAddOrEdit.samb?boardid=${board.boardId}&mode=1&boardindex=${board.boardindex}&title=${board.title}&content=${board.content}">수정</a>
    <a href="BoardDeleteOk.samb?boardid=${board.boardId}&boardindex=${board.boardindex}">삭제</a>
<%--    <a href="BoardAddOrEdit.do?mod=2&boardid=${board.boardId}&boardindex=${board.boardindex}&title=${board.title}&depth=${board.depth}&reference=${board.reference}">답글</a>--%>
    <a href="BoardAddOrEdit.samb?mode=2&boardid=${board.boardId}&boardindex=${board.boardindex}">답글</a>
    <h1>${board.author}</h1>
    <h1>${board.title}</h1>
    <h1>${board.content}</h1>


<p>여기 부터는 댓글</p>

<table>

    <tr>
        <th>Writer</th>
        <th>Content</th>
        <th>createdate</th>
        <th>delete</th>

    </tr>
    <c:forEach var="reply" items="${replylist}">
        <tr>
            <td>${reply.author}</td>
            <td>${reply.content}</td>
            <td>${reply.createDate}</td>
            <td><a href="ReplyDeleteOk.samb?boardindex=${board.boardindex}&no=${reply.no}">delete</a></td>
        </tr>
    </c:forEach>
</table>

<form action="ReplyOk.samb?boardindex=${board.boardindex}" method="post">
    <input type="text" name="author">
    <input type="text" name="content">
    <button>submit</button>
</form>




</body>
</html>