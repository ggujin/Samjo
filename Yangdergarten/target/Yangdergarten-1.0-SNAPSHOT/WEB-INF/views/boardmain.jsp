<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<title>Document</title>
<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/common/jscode.jsp"></jsp:include>


<link rel="stylesheet" href="css/boardmain.css">

<!-- 글쓰기 버튼 꾸미기 -->
<link href="https://fonts.googleapis.com/css?family=Roboto:100"
	rel="stylesheet">
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





	<a id="write" href="BoardAddOrEdit.samb?boardid=${boardid}&mode=0">글쓰기</a>


	<div class="table-wrapper">
		<table class="fl-table">
			<thead>
				<tr>
					<th>글쓴이</th>
					<th>제목</th>
					<th>날짜</th>
					<th>임시</th>
					<th>임시</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<th>test</th>
					<th>test</th>
					<th>test</th>
					<th>test</th>
					<th>test</th>
				</tr>




				<c:forEach var="board" items="${boardlist}">
					<tr>
						<td>${board.author}</td>
						<td>
							<%--                        <a href="BoardContent.do?boardid=${boardid}&boardindex=${board.boardindex}&depth=${board.depth}&reference=${board.reference}">--%>
							<a href="BoardContent.samb?boardindex=${board.boardindex}">
								${board.title} </a>

						</td>

						<td>${board.updateDate}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	<div class="search">
		<form action="SearchBoard.samb?boardid=${boardid}" method="post">


			<select name="searchmode">
				<option value="0">이름</option>
				<option value="1">제목</option>
			</select> <input type="text" name="searchvar">
			<button id="searchbtn" type="submit">검색</button>
		</form>
		<c:set var="pager" value="${requestScope.pager.toString()}"></c:set>
		<div>${pager}</div>

	</div>

	<%@ include file="/WEB-INF/common/footer.jsp"%>





</body>

</html>