package service.board;

import action.Action;
import action.ActionForward;
import dao.BoardDao;
import dto.Board;
import service.reply.ShowReply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by Leo.
 * User: KBS
 * Date: 9/26/2021
 * Time: 오전 1:29
 */
public class ShowBoardContent implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {

        String boardindex = request.getParameter("boardindex");
        System.out.println(boardindex);
        Board board = null;
        //DAO
        BoardDao boardDao = new BoardDao();

        board = boardDao.getBoardContent(boardindex);
        ShowReply showReply =  new ShowReply();
        showReply.execute(request,response);
        ActionForward forward  = new ActionForward();
        request.setAttribute("board",board);
        forward.setPath("/WEB-INF/views/boarddetail.jsp");

        return forward;
    }
}
