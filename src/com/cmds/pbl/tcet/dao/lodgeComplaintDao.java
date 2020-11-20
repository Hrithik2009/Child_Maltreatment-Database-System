package com.cmds.pbl.tcet.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cmds.pbl.tcet.model.lodgecomplaint;



public class lodgeComplaintDao {
public int lodge_Complaint(lodgecomplaint a) throws ClassNotFoundException{
		
		String sqlInsert = "INSERT INTO lodge_complaint" + "(username,city,email, mob_no,abuse_type,registration_date,registration,reviewed,action,case_solved)"
									+"VALUES( ?, ?, ?, ?, ?,?,'Done','Pending','Pending','Pending')";
		
		int result = 0;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try{
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC","root","");
			
			PreparedStatement preparedStatement = connection.prepareStatement(sqlInsert);
			
			
		    preparedStatement.setString(1, a.getUsername());
			preparedStatement.setString(2, a.getCity());
			preparedStatement.setString(3, a.getEmail());
			preparedStatement.setString(4, a.getMob_no());
			preparedStatement.setString(5, a.getAbuse_type());
			preparedStatement.setString(6, a.getRegistration_date());
			
	
			result = preparedStatement.executeUpdate();
				
		}catch(SQLException e){
			
			e.printStackTrace();
			
		}
		
		return result;
	}
}




