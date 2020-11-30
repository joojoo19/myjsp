package chap18;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	processRequest(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	private void processRequest(HttpServletRequest request, HttpServletResponse response) {
		// 2�ܰ� ��û �м�
		
		// 3�ܰ� ���� ����Ͽ� ��û�� ��� ����
		
		// 4�ܰ� request�� session�� ó�� ��� ����
		// requset.setAttribute("result", resultObject); ������ �ڵ�
		
		// 5�ܰ� RequestDispatcher�� ����Ͽ� �˸��� ��� ������
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view.jsp");
		dispatcher.forward(request, response);
	}
}
