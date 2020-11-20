package com.cmds.pbl.tcet.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cmds.pbl.tcet.model.addAuthorityModel;


public class AddAuthorityDao {
public int addAuthority(addAuthorityModel a) throws ClassNotFoundException{
		
		String sqlInsert = "INSERT INTO authority_info" + "(username,city,email, mob_no,password)"
									+"VALUES( ?, ?, ?, ?, ?)";
		
		int result = 0;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try{
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC","root","");
			
			PreparedStatement preparedStatement = connection.prepareStatement(sqlInsert);
			
			
		    preparedStatement.setString(1, a.getAuthority_name());
			preparedStatement.setString(2, a.getAuthority_city());
			preparedStatement.setString(3, a.getAuthority_email());
			preparedStatement.setString(4, a.getAuthority_mob_no());
			preparedStatement.setString(5, a.getAuthority_password());

		
			
				
			//System.out.println(preparedStatement);
				
			result = preparedStatement.executeUpdate();
				
		}catch(SQLException e){
			
			e.printStackTrace();
			
		}
		
		return result;
	}
}


