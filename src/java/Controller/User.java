package Controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import Model.Registration;

@WebServlet(name = "user", urlPatterns = { "/user" })
public class User extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=ISO-8859-1");
		HttpSession session = request.getSession();
		try {
			String id =request.getParameter("userid");
			String sphone =request.getParameter("sphone");
			String mphone =request.getParameter("mphone");
			String suggest =request.getParameter("suggest");
			Registration reg = new Registration(session);
			String status = reg.status(id,sphone,suggest,mphone);
			if (status.equals("success")) {
				request.setAttribute("status", "Successfully Deleted");
				request.getRequestDispatcher("suggest.jsp").forward(request, response);
			}
			if (status.equals("failure")) {
				request.setAttribute("status", "Deletion failure");
				request.getRequestDispatcher("viewClients.jsp").forward(request, response);
				response.sendRedirect("suggest.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}


