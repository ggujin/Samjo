package service.board;

import action.Action;
import action.ActionForward;
import dao.BoardDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by Leo.
 * User: KBS
 * Date: 9/25/2021
 * Time: 오후 10:12
 */
public class AddBoard implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {

        BoardDao boardDao = new BoardDao();

        int boardid = Integer.parseInt(request.getParameter("boardid"));
        String author = request.getParameter("author");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        boardDao.insertBoard(boardid,author,title,content);

        ActionForward forward  = new ActionForward();

        request.setAttribute("boardid",boardid);

        forward.setPath("/BoardList.samb");
        return forward;
    }
}
