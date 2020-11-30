package chap17.sample2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class FormSevlet
 */
@WebServlet("/sample2/form")
public class FormSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<Post> list;   
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	Object obj = application.getAttribute("posts");
    	if( obj == null) {
    		list = new ArrayList<>();
    		application.setAttribute("posts", list);
    	} else {
    		list = (List<Post>) obj;
    	}
    	super.init();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/chap17/lecture/sample2/form.jsp";
//		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//		dispatcher.forward(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		if(title != null && body != null && !title.isEmpty() && !body.isEmpty()) {
			// 잘 작성 되었으면
			//db저장 임시로 application
			
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			
			list.add(post);
			//목록을 보여주는 servlet redirect
			response.sendRedirect(request.getContextPath()+"/sample2/list");
			
		} else {
			//잘 작성되지 않으면
			
			// form.jsp forward
			doGet(request, response);
		}
	}

}
