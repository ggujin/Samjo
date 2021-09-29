package service.reply;

import action.Action;
import action.ActionForward;
import dao.ReplyDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by Leo.
 * User: KBS
 * Date: 9/28/2021
 * Time: 오전 9:47
 */
public class AddReply implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {

        String boardindex = request.getParameter("boardindex");
        String author = request.getParameter("author");
        String content = request.getParameter("content");

        ReplyDao replyDao = new ReplyDao();
        replyDao.insertReply(boardindex,author,content);
        ActionForward forward  = new ActionForward();

        request.setAttribute("boardindex",boardindex);
        forward.setPath("/BoardContent.samb");
        return forward;
    }
}
