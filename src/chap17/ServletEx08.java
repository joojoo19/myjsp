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
       // �ʿ��� ������ �޼ҵ� �ȿ��� �����ؼ� ����ؾ���.
	   // init�޼ҵ带 ��û ���� ���� �����ϰ� ������ loadOnStartup = 1 ����ϸ� ��
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
    	// �������� ����� �� ���� ���� �������� �ϴ� �ڵ带 �ۼ�. �� �ѹ��� �����.
    	System.out.println("init method ����");
    	
    	super.init();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ex08 doGet method ����");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}