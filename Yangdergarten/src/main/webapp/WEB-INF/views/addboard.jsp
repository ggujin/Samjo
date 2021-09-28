<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

</head>
<body>

    <c:if test="${ mode == '0'}">
        <h1>글 작성</h1>

        <form name="form1" method="post" action="BoardWriteOk.samb?boardid=${boardid}">

            <input type="text" name="author">
            <input type="text" name="title">
            <input type="text" name="content">
            <button type="submit">submit</button>
        </form>

    </c:if>
    <c:if test="${ mode == '1'}">
        <c:set var="board" value="${requestScope.board}"></c:set>
        <h1>글 수정</h1>
        <h1>${board.boardindex}</h1>
        <form name="form1" method="post" action="BoardEditOk.samb?boardindex=${board.boardindex}&boardid=${board.boardId}">

            <input type="text" name="title" value="${board.title}">
            <input type="text" name="content" value="${board.content}">
            <button type="submit">수정</button>
        </form>
    </c:if>

    <c:if test="${ mode == '2'}">
        <c:set var="board" value="${requestScope.board}"></c:set>
        <h1>답글달기</h1>

        <form name="form1" method="post"
              action="BoardRewriteOk.samb?depth=${board.depth}&boardindex=${board.boardindex}&boardid=${board.boardId}&title=${board.title}&reference=${board.reference}">

            <p>re:${board.title}</p>
            <p>작성자</p>
            <input type="text" name="author">
            <p>내용</p>
            <input type="text" name="content" value="${board.content}">
            <button type="submit">답글달기</button>
        </form>
    </c:if>

</body>
</html>
