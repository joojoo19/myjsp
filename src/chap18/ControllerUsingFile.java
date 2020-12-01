package chap18;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerUsingFile
 */
@WebServlet(value = "/usingfile",
initParams = {
		@WebInitParam (
				name="configFile",
				value="/WEB-INF/commandHandler.properties"
				)
})
public class ControllerUsingFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsingFile() {
        super();
        // TODO Auto-generated constructor stub
    }
     

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("cmd");
		CommandHandler handler = commandHandlerMap.get(command);
		
		/*
		if (handler == null) {
			handler = new NullHandler();
		}
		*/
		
		String viewPage = null;
		
		try {
			viewPage = handler.process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
		
		if (viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}
}
