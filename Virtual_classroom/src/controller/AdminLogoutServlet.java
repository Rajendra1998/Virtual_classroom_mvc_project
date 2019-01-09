package controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class AdminLogoutServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		session.invalidate();
		//System.out.println(session);
		out.println("<html><body><font color='red' size='5'><center>");
		out.println("<b>Successfully Logged out !! Thank you !!</b>");
		out.println("</center></font></body></html>");
		request.getRequestDispatcher("Admin_login.html").include(request,response);
	}
}