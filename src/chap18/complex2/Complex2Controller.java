package chap18.complex2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.net.aso.m;

/**
 * Servlet implementation class ComplexController
 */
@WebServlet("/complex2")
public class Complex2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complex2Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 2�ܰ� ��û�ľ�
		// request ��ü�κ��� ������� ��û�� �ľ��ϴ� �ڵ�
		String type = request.getParameter("type");
		
		// 3�ܰ� ��û�� ��� ����
		Object resultObject = null;
		ModelInterface model = null;
		
		
		if(type == null || type.equals("greeting")) {
			model = new Model1();
	
		} else if (type.equals("date")) {
			model = new Model2();

			} else {
			resultObject = "Invalid Type";
			}
		resultObject = model.execute();
		
		// 4�ܰ� ó����� ����
		request.setAttribute("result", resultObject);
		
		// 5�ܰ� ������
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/simpleView.jsp");
		dispatcher.forward(request, response);
		
	}
}
