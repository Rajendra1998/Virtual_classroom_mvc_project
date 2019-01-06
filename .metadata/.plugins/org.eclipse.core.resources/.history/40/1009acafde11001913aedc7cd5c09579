package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.StudentDAO;
import model.Student;

public class StudentProfile extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		try 
		{
			if(session!=null)
			{
				request.getRequestDispatcher("Student_logged1.jsp").include(request,response);
				Student currentUser=(Student)session.getAttribute("currentSessionUser");
		
				//out.println("Name="+currentUser.getName()+"\n");
				//out.println("Registration No.="+currentUser.getUser_id()+"\n");
				//out.println("Password="+currentUser.getPassword()+"\n");
				//out.println("Email_id="+currentUser.getE_id()+"\n");
				//out.println("Phone no.="+currentUser.getPh_no()+"\n");
		
				out.print("<html><body><center>");
				out.print("<table border='3' width='500px'>");
				out.print("<br><br><br><br><br><br><br><caption>Hello !! Welcome to Profile</caption>");
				out.print("<tr><td align='center'>Name: </td><td align='center'>"+currentUser.getName()+"</td></tr>");
				out.print("<tr><td align='center'>Registration No.: </td><td align='center'>"+currentUser.getUser_id()+"</td></tr>");
				out.print("<tr><td align='center'>Branch: </td><td align='center'>"+currentUser.getBranch()+"</td></tr>");
				out.print("<tr><td align='center'>Password: </td><td align='center'>"+currentUser.getPassword()+"</td></tr>");
				out.print("<tr><td align='center'>Phone Number: </td><td align='center'>"+currentUser.getPh_no()+"</td></tr>");
				out.print("<tr><td align='center'>Email-id: </td><td align='center'>"+currentUser.getE_id()+"</td></tr>");
				out.print("</table></center></body></html>");
			}
			else
			{
				out.println("<html><body><font color='red' size='5'><center>");
				out.println("<b>Please Login first !!</b>");
				out.println("</center></font></body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("Student_login.html");
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
