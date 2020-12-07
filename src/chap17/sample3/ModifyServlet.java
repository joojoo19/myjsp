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
 * Servlet implementation class ModifyServlet
 */
@WebServlet(name = "ModifyServlet2", urlPatterns = { "/sample3/post/modify" })
public class ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		
		Post post = new Post();
		post.setId(Integer.parseInt(id));
		post.setTitle(title);
		post.setBody(body);
		
		modify(post);
		
		response.sendRedirect(request.getContextPath()+ "/sample3/post/main");
	}
	private void modify(Post post) {
		
		String sql = "UPDATE post SET title = ?, " 
				+ "body = ? WHERE id = ?";

		try {

			Connection con = DBUtil.getConnection();
			// 3.statement생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, post.getTitle());
			pstmt.setString(2, post.getBody());
			pstmt.setInt(3, post.getId());
			pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
