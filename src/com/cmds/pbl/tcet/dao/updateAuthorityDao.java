package com.cmds.pbl.tcet.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cmds.pbl.tcet.model.updateAuthorityModel;

public class updateAuthorityDao {
public int updateAuthority(updateAuthorityModel a,int id) throws ClassNotFoundException{
		
		String sqlUpdate = "update authority_info set username=?,city=?,email=?,mob_no=?,password=? where authority_id=" + id;
									
		
		int result = 0;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try{
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC","root","");
			
			PreparedStatement preparedStatement = connection.prepareStatement(sqlUpdate);
			
			
		    preparedStatement.setString(1, a.getUsername());
			preparedStatement.setString(2, a.getCity());
			preparedStatement.setString(3, a.getEmail());
			preparedStatement.setString(4, a.getMob_no());
			preparedStatement.setString(5, a.getPassword());

				
			result = preparedStatement.executeUpdate();
				
		}catch(SQLException e){
			
			e.printStackTrace();
			
		}
		
		return result;
	}
}