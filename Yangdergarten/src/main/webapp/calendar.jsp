<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang='en'>
<head>

<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>

<style>
.fc-event {
	margin-top: 0.3rem;
	cursor: move;
}
</style>

<script>
	window.contextPath = '${pageContext.request.contextPath}'
</script>

<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- FullCalendar -->
<link href='css/calmain.css' rel='stylesheet' />
<script src="${pageContext.request.contextPath}/js/calendar.js"></script>
<script src='${pageContext.request.contextPath}/js/calmain.js'></script>
<script src="${pageContext.request.contextPath}/js/ko.js"></script>

<!-- moment.js -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

</head>
<body>
	<%@ include file="/WEB-INF/common/header.jsp"%>
	<div class="container calendar">
		<div id="external-events">
			<input type="text" id="newEvent" placeholder="새로운 일정..." />

			<p>
				<strong>일정을 추가하세요!</strong>
			</p>

			<div
				class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
				<div class='fc-event-main' id='newEventDiv'></div>
			</div>
			<div
				class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
				<div class='fc-event-main'>신나는 가을 소풍</div>
			</div>
			<div
				class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
				<div class='fc-event-main'>재밌는 촉감 놀이!</div>
			</div>
			<div
				class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
				<div class='fc-event-main'>할로윈 과자파티!</div>
			</div>
			<div
				class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
				<div class='fc-event-main'>철도 박물관에 가요!</div>
			</div>
			<div
				class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
				<div class='fc-event-main'>2차 프로젝트가 끝났어요!!HO!</div>
			</div>

			<p>
				<input type='checkbox' id='drop-remove' /> <label for='drop-remove'>remove
					after drop</label>
			</p>
		</div>

		<div class="user_visible">
			<div>
				<h1>양선생 어린이집 일정</h1>
				
			</div>
			<div id='calendar-container'>
				<div id="Btns" style="width: 40%; text-align: right">
					<button id="deleteBtn">삭제</button>
					<button id="saveBtn">전체저장</button>
				</div>
				<div id='calendar'></div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/common/footer.jsp"%>


</body>
<jsp:include page="/WEB-INF/common/jscode.jsp"></jsp:include>
<script>
	<c:set var="userKind" value="${sessionScope.userKind}"/>
	var userK = '<c:out value="${userKind}"/>';

	if (userK != 2) {
		$('#external-events').hide();
		$('#Btns').hide();
	} else {
		$('#external-events').show();
		$('#Btns').show();
	}
</script>
</html>