<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
</head>
<body>
<%@ include file="WEB-INF/common/header.jsp" %>

<a href="./showSignUp.samu">회원가입 </a>
<br>
<a href="./showLogin.samu">로그인</a>
<br>
<a href="./logout.samu">로그아웃</a>
<br>
<a href="./showUsersList.samu">회원목록조회</a>
<br>
<a href="./adminPage.samu">회원목록조회</a>

<h3>${sessionScope.userId}</h3>

<div id="pageContainer">
    <h3>UI(Css 공통 페이지 적용 확인)</h3>
    <h3>DB연결 정보 확인</h3>
    <%
        Connection conn = null;

        Context context = new InitialContext(); //현재 프로젝트에 이름기반 검색
        DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/mysql");//java:comp/env/ + name

        //POOL안에서 connection 가지고 오기
        conn = ds.getConnection();

        boolean connect1 = conn.isClosed();

        //POINT
        //POOL에 connection 받환하기
        conn.close(); //반환하기
        boolean connect2 = conn.isClosed();
    %>
    <c:set var="connect1" value="<%=connect1%>"/>
    db 연결여부 : ${ connect1 }<br>
    <c:set var="connect2" value="<%=connect2%>"/>
    db 연결여부 : ${ connect2 }<br>


    <%--		<form action="${pageContext.request.contextPath}/showSignUp.samu" method="POST">--%>
    <%--			<input type="submit" value="회원가입">--%>
    <%--		</form>--%>

</div>

<%@ include file="WEB-INF/common/footer.jsp" %>
</body>
<jsp:include page="/WEB-INF/common/jscode.jsp"></jsp:include>
</html>