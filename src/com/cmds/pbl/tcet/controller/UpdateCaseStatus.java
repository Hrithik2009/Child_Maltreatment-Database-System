package com.cmds.pbl.tcet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cmds.pbl.tcet.dao.UpdateCaseStatusDao;
import com.cmds.pbl.tcet.model.updateCaseModel;
@WebServlet("/updateStatus")
public class UpdateCaseStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdateCaseStatus() {
        super();   
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/updateCaseStatus.jsp");
		
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int complaint_id = Integer.parseInt(request.getParameter("complaint_id"));
		String registration = request.getParameter("registration");
		String registration_date = request.getParameter("registration_date");
		String reviewed = request.getParameter("reviewed");
		String review_date = request.getParameter("review_date");
		String action = request.getParameter("action");
		String action_date = request.getParameter("action_date");
		String case_solved = request.getParameter("case_solved");
		String solved_date = request.getParameter("solved_date");
		
		PrintWriter out= response.getWriter();
		updateCaseModel ucm = new updateCaseModel();
        UpdateCaseStatusDao updateDao = new UpdateCaseStatusDao();
		
        
        ucm.setComplaint_id(complaint_id);
        ucm.setRegistration(registration);
        ucm.setRegistration_date(registration_date);
        ucm.setReviewed(reviewed);
        ucm.setReview_date(review_date);
        ucm.setAction(action);
        ucm.setAction_date(action_date);
        ucm.setCase_solved(case_solved);
        ucm.setSolved_date(solved_date);
        
        
        try{
			updateDao.updateCaseStatus(ucm,complaint_id);
		}catch(Exception e){
			e.printStackTrace();
		}
        
        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");

        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");

        out.println("<script>");

        out.println("$(document).ready(function(){");

        out.println("swal ( 'Update Success' ,  'Case Status Updated Successfuly' ,'success')");

        out.println("});");

        out.println("</script>");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSPFiles/authorityAfterLogin.jsp");
		
		dispatcher.include(request, response);
	    

	}

}
