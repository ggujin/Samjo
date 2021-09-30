package ajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import action.ActionForward;
import dao.CalendarDao;
import dto.Calendar;


@WebServlet("/saveCalendar")
public class saveCalendar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public saveCalendar() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String jsonData = request.getParameter("alldata"); //calendar.jsp에서 받아온 전체저장 json데이터
		System.out.println("jsonData : "+jsonData);
		
		
		try {
			JSONParser jsonParser = new JSONParser();
			JSONArray jArr = (JSONArray)jsonParser.parse(jsonData);
			
			for(int i = 0; i < jArr.size(); i++) {
				JSONObject obj = (JSONObject)jArr.get(i);
				System.out.println(obj);
				
				Calendar cal = new Calendar(); //새 일정dto 생성
				cal.setTitle((String)obj.get("title"));
				cal.setStartDate((String)obj.get("start"));
				cal.setEndDate((String)obj.get("end"));
				
				CalendarDao dao = new CalendarDao();
				int result = dao.saveEvent(cal); //json에서 받아온 cal하나씩 db에 저장
				
				if(result == 0) {
					System.out.println("Event save error! retry..");
				}
				
				
				ActionForward forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/WEB-INF/views/redirect.jsp");
			}
			
			
		} catch (ParseException e) {
			System.out.println(e.getMessage());
		}
				
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
