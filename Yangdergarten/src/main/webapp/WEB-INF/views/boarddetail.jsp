
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
    
    
 <link rel="stylesheet" href="/src/main/webapp/css/boarddetail.css">
    

</head>

<body>
<c:set var="board" value="${requestScope.board}"></c:set>


	<!-- 10월1일 css파일로 빼서x 하면 스타일 안먹힘 다시 수정해야됨 -->
     <div>
     <c:if test="${sessionScope.userId eq board.author}">
        <button class="allbtn" id="btn1"  type="button" onclick="location.href='BoardAddOrEdit.samb?boardid=${board.boardId}&mode=1&boardindex=${board.boardindex}&title=${board.title}&content=${board.content}' ">수정</button>  
        <button class="allbtn" id="btn2" type="button" onclick="location.href='BoardDeleteOk.samb?boardid=${board.boardId}&boardindex=${board.boardindex}' ">삭제</button>
    </c:if>
     <c:if test="${not empty sessionScope.userId}">
        <button class="allbtn" id="btn3"  type="button" onclick="location.href='BoardAddOrEdit.samb?mode=2&boardid=${board.boardId}&boardindex=${board.boardindex}' ">답글</button>  
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
            <td><a href="ReplyDeleteOk.samb?boardindex=${board.boardindex}&no=${reply.no}">delete</a></td>
        </tr>
    </c:forEach>
</table>



<div class="card mb-2">

	<div class="card-body">
		<ul class="list-group list-group-flush">
		    <li class="list-group-item">


		    <form action="ReplyOk.samb?boardindex=${board.boardindex}" method="post">
			<textarea name="content" class="form-control" id="exampleFormControlTextarea2" rows="2"></textarea>
			<button type="submit" class="btn btn-dark mt-3" id="commentbtn">댓글등록</button>
			</form>
			
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




</body>
</html>