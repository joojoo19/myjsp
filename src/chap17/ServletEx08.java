package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx08
 */
@WebServlet(value="/ex08", loadOnStartup=1)
public class ServletEx08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       // 필요한 변수는 메소드 안에서 선언해서 사용해야함.
	   // init메소드를 요청 오기 전에 실행하고 싶으면 loadOnStartup = 1 사용하면 됨
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx08() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	// 서블릿이 실행될 때 가장 먼저 실행했음 하는 코드를 작성. 딱 한번만 실행됨.
    	System.out.println("init method 실행");
    	
    	super.init();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ex08 doGet method 실행");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
