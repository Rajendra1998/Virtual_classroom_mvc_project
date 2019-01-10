package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FacultyDAO;
import model.Faculty;

//Admin edits Faculty's profile
public class EditFaculty extends HttpServlet 
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
				String name=request.getParameter("facultyName");
				String user_id=request.getParameter("user-id");
				Faculty faculty=new Faculty();
				faculty.setName(name);
				faculty.setUser_id(user_id);
				faculty=FacultyDAO.edit(faculty);
				request.setAttribute("facultyDetails", faculty);
				RequestDispatcher rd=request.getRequestDispatcher("Edit_faculty.jsp");
				rd.include(request, response);
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