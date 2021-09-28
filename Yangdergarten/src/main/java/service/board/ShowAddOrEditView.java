package service.board;

import action.Action;
import action.ActionForward;
import dao.BoardDao;
import dto.Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by Leo.
 * User: KBS
 * Date: 9/25/2021
 * Time: 오후 11:06
 */
public class ShowAddOrEditView implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws SQLException {

        String boardindex = request.getParameter("boardindex");
        String boardid = request.getParameter("boardid");
        String mode = request.getParameter("mode");
        Board board = null;

        if(!mode.equals("0")){
            BoardDao boardDao = new BoardDao();
            board = boardDao.getBoardContent(boardindex);

            System.out.println(boardid);
            System.out.println(mode);

        }

        ActionForward forward = new ActionForward();

        request.setAttribute("boardindex",boardindex);
        request.setAttribute("boardid", boardid);
        request.setAttribute("mode", mode);
        request.setAttribute("board",board);


        if(request.getParameter("depth")!=null){
            int depth = Integer.parseInt(request.getParameter("depth"));
            request.setAttribute("depth",depth);
        }

        if(request.getParameter("reference")!=null){
            int reference = Integer.parseInt(request.getParameter("reference"));
            request.setAttribute("reference",reference);
        }

        forward.setPath("/WEB-INF/views/addboard.jsp");


        return forward;
    }
}
