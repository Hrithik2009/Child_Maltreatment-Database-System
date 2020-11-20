package com.cmds.pbl.tcet.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cmds.pbl.tcet.model.updateAuthorityModel;
import com.cmds.pbl.tcet.model.updateCaseModel;

public class UpdateCaseStatusDao {
	
 public int updateCaseStatus(updateCaseModel a,int complaint_id) throws ClassNotFoundException{
			
			String sqlUpdateStatus = "update lodge_complaint set registration=?,registration_date=?,reviewed=?,review_date=?,action=?,action_date=?,case_solved=?,solved_date=? where complaint_id=" + complaint_id;
										
			
			int result = 0;
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			try{
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC","root","");
				
				PreparedStatement preparedStatement = connection.prepareStatement(sqlUpdateStatus);
			
			    preparedStatement.setString(1, a.getRegistration());
			    preparedStatement.setString(2, a.getRegistration_date());
			    preparedStatement.setString(3, a.getReviewed());
			    preparedStatement.setString(4, a.getReview_date());
			    preparedStatement.setString(5, a.getAction());
			    preparedStatement.setString(6, a.getAction_date());
			    preparedStatement.setString(7, a.getCase_solved());
			    preparedStatement.setString(8, a.getSolved_date());
					
				result = preparedStatement.executeUpdate();
					
			}catch(SQLException e){
				e.printStackTrace();
				
			}
			
			return result;
		}
	}

