package kr.or.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.service.GetDetailService;
import kr.or.bit.service.JoinOkService;
import kr.or.bit.service.LoginOkService;
import kr.or.bit.service.LogoutService;
import kr.or.bit.service.MemberDeleteService;
import kr.or.bit.service.MemberListService;
import kr.or.bit.service.MemberUpdateService;
import kr.or.bit.service.MemberUpdateSubmitService;
import kr.or.bit.service.SearchMemberService;


@WebServlet("*.mem")
public class FrontMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FrontMemberController() {
        super();
    }

    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String url_Command = requestURI.substring(contextPath.length());
	
    	Action action=null;
    	ActionForward forward=null;
    	
    	if(url_Command.equals("/Main.mem")) { //메인.jsp 화면

    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("index.jsp");
    		
    		System.out.println("index.jsp로 이동");
    		
    	}else if(url_Command.equals("/Join.mem")) { //회원가입 화면

    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/WEB-INF/views/joinForm.jsp");
    		
    		System.out.println("joinForm.jsp로 이동");
    		
    	}else if(url_Command.equals("/JoinOk.mem")) { //회원가입
    		//UI+로직
    		action = new JoinOkService();
    		forward = action.execute(request, response);
    		System.out.println("JoinOkService 실행");
    		
    	}else if(url_Command.equals("/Login.mem")) { //로그인 화면
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/WEB-INF/views/login.jsp");
    		
    		System.out.println("login.jsp로 이동");
    		
    	}else if(url_Command.equals("/LoginOk.mem")) { //로그인
    		//UI+로직
    		action = new LoginOkService();
    		forward = action.execute(request, response);
    		System.out.println("LoginOkService 실행");
    		
    	}else if(url_Command.equals("/Logout.mem")) { //로그아웃
    		//UI+로직
    		action = new LogoutService();
    		forward = action.execute(request, response);
    		System.out.println("LogoutService 실행");
    		
    	}else if(url_Command.equals("/Search.mem")) {
            System.out.println(request.getParameter("name"));
            action = new SearchMemberService();
            forward = action.execute(request,response);
            System.out.println("SearchMemberService 실행");
            
        }else if(url_Command.equals("/MemberDetail.mem")) {
            System.out.println(request.getParameter("id"));
            action = new GetDetailService();
            forward = action.execute(request,response);
            System.out.println("GetDetailService 실행");
            
        }else if(url_Command.equals("/MemberList.mem")) { //회원목록조회@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          //UI+로직
            action = new MemberListService();
            forward = action.execute(request, response);
            System.out.println("MemberListService 실행");
            
      }else if(url_Command.equals("/MemberDelete.mem")) { //회원삭제@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        action = new MemberDeleteService();
        forward = action.execute(request, response);
        System.out.println("MemberDeleteService 실행");
        
      }else if(url_Command.equals("/MemberUpdate.mem")) { //회원수정@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          //UI+로직
          action = new MemberUpdateService();
          forward = action.execute(request, response);
          System.out.println("MemberUpdateService 실행");
       }else if(url_Command.equals("/MemberUpdateOk.mem")) { //회원수정서밋@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           //UI+로직
           action = new MemberUpdateSubmitService();
           forward = action.execute(request, response);
           System.out.println("MemberUpdateSubmitService 실행");
        }
    	
    	
    	if(forward != null) {
    		if(forward.isRedirect()) { //true 
    			response.sendRedirect(forward.getPath());
    		}else { 
    			RequestDispatcher dis  = request.getRequestDispatcher(forward.getPath());
    			dis.forward(request, response);
    		}
    	}
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
