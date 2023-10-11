package nsf.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SurveyWebServlet
 */
@WebServlet("/surveyWeb")
public class SurveyWebServlet extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String action = req.getParameter("action");
		String url = "/index.html";
		if (action == null) {
			action = "join";
		}
		if (action == "join") {
			url = "/index.html";
		} else if (action.equals("add")) {
			String email = req.getParameter("email");
			String firstName = req.getParameter("firstName");
			String lastName = req.getParameter("lastName");
			String birthDay = req.getParameter("birthday");
			String hearingFrom = req.getParameter("hearingFrom");
			String wannaContact = req.getParameter("wannaContact");
			String contact = req.getParameter("contact");
			User user = new User(email, firstName, lastName, birthDay, hearingFrom, wannaContact, contact);
			//
			req.setAttribute("user", user);
			url = "/survey.jsp";
			//
			getServletContext().getRequestDispatcher(url).forward(req, res);
		}

	}

}
