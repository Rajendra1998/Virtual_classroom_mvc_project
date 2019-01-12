package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Faculty;;

public class FacultyProfile extends HttpServlet
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
				request.getRequestDispatcher("Faculty_profile.jsp").include(request,response);
				Faculty currentFaculty=(Faculty)session.getAttribute("currentFaculty");
		
				//out.println("name="+currentFaculty.getName());
				//out.println("User ID="+currentFaculty.getUser_id());
				//out.println("pass="+currentFaculty.getPassword());
				//out.println("email="+currentFaculty.getEid());
				//out.println("Phone no="+currentFaculty.getPhno());
		
				out.print("<html><body><center>");
				out.print("<table border='3' width='500px'>");
				out.print("<br><br><br><br><br><br><br><caption>Hello !! Welcome to Profile</caption>");
				out.print("<tr><td align='center'>Name: </td><td align='center'>"+currentFaculty.getName()+"</td></tr>");
				out.print("<tr><td align='center'>User ID: </td><td align='center'>"+currentFaculty.getUser_id()+"</td></tr>");
				//out.print("<tr><td align='center'>Branch: </td><td align='center'>"+currentUser.getBranch()+"</td></tr>");
				out.print("<tr><td align='center'>Password: </td><td align='center'>"+currentFaculty.getPassword()+"</td></tr>");
				out.print("<tr><td align='center'>Email-id: </td><td align='center'>"+currentFaculty.getEid()+"</td></tr>");
				out.print("<tr><td align='center'>Phone Number: </td><td align='center'>"+currentFaculty.getPhno()+"</td></tr>");
				out.print("</table></center></body></html>");
			}
			else
			{
				out.println("<html><body><font color='red' size='5'><center>");
				out.println("<b>Error message : Please Login first !!</b>");
				out.println("</center></font></body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("Faculty_login.html");
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
