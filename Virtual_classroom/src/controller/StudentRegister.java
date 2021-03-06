package controller;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.StudentDAO;
import model.Student;

@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try
		{
			Student student=new Student();
			student.setName(request.getParameter("name"));
			student.setUser_id(request.getParameter("rno"));
			student.setBranch(request.getParameter("br"));
			student.setPh_no(request.getParameter("phno"));
			student.setE_id(request.getParameter("eid"));
			student.setPassword(request.getParameter("pass1"));
			student=StudentDAO.register(student);
			if(student.isValid())
			{
				out.println("<html><body><font color='red' size='5'><center>");
				out.println("<b>Registration successful !! Login now !!</b>");
				out.println("</center></font></body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("Student_login.html");
				rd.include(request,response);
			}
			else
			{
				out.println("<html><body><font color='red' size='5'><center>");
				out.println("<b>Something went wrong !! User already exists !! Login now !</b>");
				out.println("</center></font></body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("Student_login.html");
				rd.include(request,response);
			}
		}	
		
		catch(Exception ee)
		{
			ee.printStackTrace();
		}
	}

}

