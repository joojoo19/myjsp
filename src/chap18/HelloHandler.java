package chap18;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloHandler implements CommandHandler {
@Override
public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
	req.setAttribute("hello", "�ȳ��ϼ���!");
	return "/WEB-INF/view/chap18/hello.jsp";
}
}
