package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Admin;


public class AdminProfile extends HttpServlet 
{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try 
		{
			if(session!=null)
			{
				request.getRequestDispatcher("Admin_profile.jsp").include(request,response);
				Admin currentAdmin=(Admin)session.getAttribute("currentAdmin");
				
				//out.println("name="+currentAdmin.getName());
				//out.println("User ID="+currentAdmin.getUser_id());
				//out.println("pass="+currentAdmin.getPassword());
				//out.println("email="+currentAdmin.getEid());
				//out.println("Phone no="+currentAdmin.getPhno());
			
				
		
				out.print("<html><body><center>");
				out.print("<table border='3' width='500px'>");
				out.print("<br><br><br><br><br><br><br><caption>Hello !! Welcome to Profile</caption>");
				out.print("<tr><td align='center'>Name: </td><td align='center'>"+currentAdmin.getName()+"</td></tr>");
				out.print("<tr><td align='center'>User ID: </td><td align='center'>"+currentAdmin.getUser_id()+"</td></tr>");
				out.print("<tr><td align='center'>Password: </td><td align='center'>"+currentAdmin.getPassword()+"</td></tr>");
				out.print("<tr><td align='center'>Email-id: </td><td align='center'>"+currentAdmin.getEid()+"</td></tr>");
				out.print("<tr><td align='center'>Phone Number: </td><td align='center'>"+currentAdmin.getPhno()+"</td></tr>");
				out.print("</table></center></body></html>");
			}
			else
			{
				out.println("<html><body><font color='red' size='5'><center>");
				out.println("<b>Error message : Please Login first !!</b>");
				out.println("</center></font></body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("Admin_login.html");
				rd.include(request,response);
			}
		}	
		catch (Exception e)
		{
			e.printStackTrace();
		}	
		out.close();
		
		
	}
		
}
