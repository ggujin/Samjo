var calendar = null;

$(document).ready(function() {
	var Calendar = FullCalendar.Calendar;
	var Draggable = FullCalendar.Draggable;

	var containerEl = document.getElementById('external-events');
	var calendarEl = document.getElementById('calendar');
	var checkbox = document.getElementById('drop-remove');

	// initialize the external events
	// -----------------------------------------------------------------

	new Draggable(containerEl, {
		itemSelector: '.fc-event',
		eventData: function(eventEl) {
			return {
				title: eventEl.innerText
			};
		}
	});

	// initialize the calendar
	// -----------------------------------------------------------------

	calendar = new Calendar(calendarEl, {
		themeSystem: 'bootstrap',
		headerToolbar: {
			left: 'prev,next today',
			center: 'title',
			right: 'dayGridMonth,timeGridWeek,timeGridDay'
		},
		selectable: true,
		editable: true, //수정가능여부
		droppable: true, // this allows things to be dropped onto the calendar
		eventLimit: true,
        
		drop: function(info) {
			// is the "remove after drop" checkbox checked?
			if (checkbox.checked) {
				// if so, remove the element from the "Draggable Events" list
				info.draggedEl.parentNode.removeChild(info.draggedEl);
			}
		},
		
		locale: 'ko'
	});

	calendar.render();
	allLoad();
	
	$('#saveBtn').click(function() {
		allSave();
	});
	
	$('#deleteBtn').click(function () {
          allDelete();
     });

	$('#newEvent').keyup(function(){
		var title = $('#newEvent').val();
		$('#newEventDiv').text(title);
	});
});

//DB에 있는 데이터 불러오기
function allLoad(){
	console.log('hi2');
	$.ajax({
		type:'POST',
		url:'loadCalendar',
		data: {"sql":"select title,startdate,enddate from CALENDAR"},
		dataType:'json',
		async: false,
		success: function(data){
			console.log(data);
			console.log('hi');
		}
	});
}


//1. 전체 이벤트 데이터를 추출		2. ajax로 서버에 전송하여 DB에 저장
function allSave() {
	var allEvent = calendar.getEvents();

	var events = new Array();
	for (var i = 0; i < allEvent.length; i++) {
		var obj = new Object();

		obj.title = allEvent[i]._def.title; //이벤트 명칭
		obj.start = moment(allEvent[i]._instance.range.start).format("YYYY-MM-DD"); //시작날짜 및 시간
		obj.end = moment(allEvent[i]._instance.range.end).format("YYYY-MM-DD"); //마침날짜 및 시간

		events.push(obj);
	}

	var jsondata = JSON.stringify(events);
	console.log(jsondata);

	savedata(jsondata);
}

function savedata(jsondata) {
	$.ajax({
		type: 'POST',
		url: 'saveCalendar',
		data: { "alldata": jsondata },
		dataType: 'text',
		async: false,
		success: function(responsedata) {
			console.log(responsedata);
		}
	});
}


//1. 전체 이벤트 데이터 삭제		2. ajax로 서버에 sql전송하여 DB에 저장된 데이터도 모두 삭제
function allDelete(){
	calendar.removeAllEvents();
	
	$.ajax({
		type:'POST',
		url:'deleteCalendar',
		data: {"sql":"delete from CALENDAR"},
		dataType:'text',
		success: function(responsedata){
			console.log(responsedata);
		}
	});
}