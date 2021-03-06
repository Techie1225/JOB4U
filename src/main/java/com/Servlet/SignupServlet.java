package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBconnect;
import com.dao.JobDao;
import com.dto.Jobs;
import com.dto.Registration;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			resp.setContentType("application/json");
			String name=req.getParameter("name");
			String qualification=req.getParameter("qualification");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			String designation=req.getParameter("designation");
			String role=req.getParameter("role");
			
			Registration R=new  Registration();
			R.setName(name);
			R.setQualification(qualification);
			R.setEmail(email);
			R.setPassword(password);
			R.setDesignation(designation);
			R.setRole(role);
			
			//HttpSession session=req.getSession(false);
			
			JobDao dao=new JobDao(DBconnect.getconn());
			boolean f=dao.insertRegisrationDetails(R);
			if(f)
			{
				req.setAttribute("succMsg", "Registered Successfully");
				
				RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
			}
			else if(!f){
				req.setAttribute("succMsg1", "Username is already in use..Pls try with another");
				RequestDispatcher rd = req.getRequestDispatcher("Signup.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("succMsg1", "Somethng went wrong..Pls try later");
				RequestDispatcher rd = req.getRequestDispatcher("Signup.jsp");
				rd.forward(req, resp);
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

}
