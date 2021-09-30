package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dto.Calendar;
import utils.ConnectionHelper;

public class CalendarDao {
	
	public int saveEvent(Calendar cal) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int resultrow=0;
		
		try {
			conn = ConnectionHelper.getConnection("oracle");
			
			String sql = "insert into CALENDAR(title,startdate,enddate) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cal.getTitle());
			pstmt.setString(2, cal.getStartDate());
			pstmt.setString(3, cal.getEndDate());
			
			resultrow = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("saveEvent : "+e.getMessage());
		}finally {
			ConnectionHelper.close(pstmt);
			ConnectionHelper.close(conn);
		}
		return resultrow;
	}
}
