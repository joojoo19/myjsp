package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;
import chap20.lecture.DBUtil;

/**
 * Servlet implementation class RemoveServlet2
 */
@WebServlet(name =" RemoveServlet2",
		urlPatterns = {"/sample3/post/remove"})
public class RemoveServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");

		
		remove(id);
		
		response.sendRedirect(request.getContextPath()+"/sample3/post/main");
	}

	private void remove(String id) {

		String sql = "DELETE FROM post WHERE id =?";

		
		try {

			Connection con = DBUtil.getConnection();
			// 3.statement생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.valueOf(id));
			pstmt.executeUpdate();
			
			// 6. statement, 연결 닫기
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
