package me.leizhnxp.examples.servlet3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/demo")
public class CommonEndPoints extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().println(req.getParameter("para"));
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 6197062728780369381L;

}
