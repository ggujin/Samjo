<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
<c:set var="board" value="${requestScope.board}"></c:set>
<link rel="stylesheet" href="css/boarddetail.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">

		$(document).ready(function (){
			$("#commentbtn").click(function (){
				console.log('click1');
				const params = {
					content : $("#exampleFormControlTextarea2").val()
				}

				$.ajax(
						{
							type:"POST",
							url:"ReplyOk.samb?boardindex=${board.boardindex}",
							data:params,
							success:function(res){
								console.log('통신성공' + ${board.boardindex})
								$('#myreplylist').load(location.href+' #myreplylist');

							},
							error : function (XMLHTttpRequest, textStatus, errorThrown){
								console.log('통신실패');
							}

						});
			});
		})



	</script>
</head>

<body>
	<%@ include file="/WEB-INF/common/header.jsp"%>


	<div>
		<c:if test="${sessionScope.userId eq board.author}">
			<button class="allbtn" id="btn1" type="button"
				onclick="location.href='BoardAddOrEdit.samb?boardid=${board.boardId}&mode=1&boardindex=${board.boardindex}&title=${board.title}&content=${board.content}' ">수정</button>
			<button class="allbtn" id="btn2" type="button"
				onclick="location.href='BoardDeleteOk.samb?boardid=${board.boardId}&boardindex=${board.boardindex}' ">삭제</button>
		</c:if>
		<c:if test="${not empty sessionScope.userId}">
			<button class="allbtn" id="btn3" type="button"
				onclick="location.href='BoardAddOrEdit.samb?mode=2&boardid=${board.boardId}&boardindex=${board.boardindex}' ">답글</button>
		</c:if>
	</div>


	<!--  오리지널
    
        <a href="BoardAddOrEdit.samb?boardid=${board.boardId}&mode=1&boardindex=${board.boardindex}&title=${board.title}&content=${board.content}">수정</a>
    <a href="BoardDeleteOk.samb?boardid=${board.boardId}&boardindex=${board.boardindex}">삭제</a>
<%--    <a href="BoardAddOrEdit.do?mod=2&boardid=${board.boardId}&boardindex=${board.boardindex}&title=${board.title}&depth=${board.depth}&reference=${board.reference}">답글</a>--%>
    <a href="BoardAddOrEdit.samb?mode=2&boardid=${board.boardId}&boardindex=${board.boardindex}">답글</a>
    
     -->

	<!-- 
    <h1 id="author" style="color:black">${board.author}</h1>
    <h2 id="tilte" style="color:black">${board.title}</h2>
    <p id="content">${board.content}</p>
     -->

	<div class="table-wrapper">
		<table class="fl-table">
			<thead>
				<tr>
					<th>글쓴이</th>
					<th>제목</th>
					<th>내용</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<th>${board.author}</th>
					<th>${board.title}</th>
					<th>${board.content}</th>

				</tr>
			</tbody>

		</table>

	</div>

	<div class="card-header bg-light">
		<i class="fa fa-comment fa"></i> 댓글
	</div>

	<div id="myreplylist">
	<table class="fl-table">

		<tr>
			<th>글쓴이</th>
			<th>내용</th>
			<th>작성날짜</th>
			<th>삭제하기</th>

		</tr>
		<c:forEach var="reply" items="${replylist}">
			<tr>
				<td>${reply.author}</td>
				<td>${reply.content}</td>
				<td>${reply.createDate}</td>
				<td><a
					href="ReplyDeleteOk.samb?boardindex=${board.boardindex}&no=${reply.no}">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>

	<div class="card mb-2">
		<div class="card-body">
			<ul class="list-group list-group-flush">
				<li class="list-group-item">


						<textarea name="content" class="form-control"
							id="exampleFormControlTextarea2" rows="2"></textarea>
						<button type="button" class="btn btn-dark mt-3" id="commentbtn">댓글등록</button>


				</li>
			</ul>
		</div>
	</div>


	<!-- 오리지널	

<form action="ReplyOk.samb?boardindex=${board.boardindex}" method="post">
    <input type="text" name="author">
    <input type="text" name="content">
    <button>submit</button>
</form>

 -->

	<%@ include file="/WEB-INF/common/footer.jsp"%>
</body>
</html>