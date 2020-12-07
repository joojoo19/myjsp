package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;
import chap20.lecture.DBUtil;

/**
 * Servlet implementation class DetailServlet2
 */
@WebServlet("/sample3/post/detail")
public class DetailServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Post post = getPosts(id);
		
		String path = "/WEB-INF/view/chap17/detail.jsp";
		request.setAttribute("post", post);
		request.getRequestDispatcher(path).forward(request, response);
	}
	private Post getPosts(String id) {
		Post post = null;
		String sql = "SELECT id, title, body FROM post "
			      	+ "WHERE id=?";

		try {

			Connection con = DBUtil.getConnection();
			// 3.statement생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			 pstmt.setInt(1, Integer.valueOf(id));

			// 4.쿼리 실행
			ResultSet rs = pstmt.executeQuery();
			// 5.결과 처리
			while(rs.next()) {
				post = new Post();
				post.setId(rs.getInt(1));
				post.setTitle(rs.getString(2));
				post.setBody(rs.getString(3));

			}
			// 6. statement, 연결 닫기
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return post;
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
