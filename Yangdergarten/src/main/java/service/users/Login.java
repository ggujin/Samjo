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

      session.setAttribute("userId", usersDto.getId());
      msg = "Welcome! <b>"+ usersDto.getId() +"</b> :)";
      url = "main.samu";
    }else {
      msg = "로그인 실패";
      url = "login.samu";
    }

    session.setAttribute("sam_msg", msg);
    request.setAttribute("sam_url", url);

    System.out.println(msg);

    ActionForward forward = new ActionForward();
    forward.setRedirect(false);
    forward.setPath("./index.jsp");

    return forward;
  }


}
