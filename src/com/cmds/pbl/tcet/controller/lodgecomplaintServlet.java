package com.cmds.pbl.tcet.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cmds.pbl.tcet.dao.lodgeComplaintDao;
import com.cmds.pbl.tcet.model.lodgecomplaint;

@WebServlet("/lodge")
public class lodgecomplaintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/lodgeComplaint.jsp");
		
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String city  = request.getParameter("city");
		if(request.getParameter("city") != null)
		{
			city = request.getParameter("city");
		}
		String email = request.getParameter("email");
		String mob_no = request.getParameter("mob_no");
		String registration_date= request.getParameter("registration_date");
		
		String abuse_type = request.getParameter("abuse_type");
		
		if(request.getParameter("abuse_type") != null)
		{
		   abuse_type = request.getParameter("abuse_type");
		}
		
        lodgecomplaint lodge = new lodgecomplaint();
        lodgeComplaintDao l = new lodgeComplaintDao();
		
		lodge.setUsername(username);
		lodge.setCity(city);
		lodge.setEmail(email);
		lodge.setMob_no(mob_no);
		lodge.setRegistration_date(registration_date);
		lodge.setAbuse_type(abuse_type);
		
		
		try{
			l.lodge_Complaint(lodge);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/LodgedSuccessful.jsp");
		
		dispatcher.forward(request, response);
		
	}

}

