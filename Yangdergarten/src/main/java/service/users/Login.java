package service.users;

import action.Action;
import action.ActionForward;
import dao.UsersDao;
import dto.UsersDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login implements Action {

  @Override
  public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
    HttpSession session = request.getSession();

    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    UsersDao usersDao = new UsersDao();
    UsersDto usersDto = usersDao.login(id, pwd);

    String msg="";
    String url="";
    if(usersDto.getPwd().equals(pwd)) {
      session.setAttribute("login_out", "Logout");
      session.setAttribute("userKind", usersDto.getCnum());
      session.setAttribute("userId", usersDto.getId());
      msg = "Welcome!  " + usersDto.getId() + "  :)";
      url = "GoToMain.samb";
    }else {
      msg = "로그인 실패";
      url = "showLogin.samu";
    }

    request.setAttribute("sam_msg", msg);
    request.setAttribute("sam_url", url);

    System.out.println(msg);

    ActionForward forward = new ActionForward();
    forward.setRedirect(false);
    forward.setPath("/WEB-INF/views/redirect.jsp");

    return forward;
  }


}
