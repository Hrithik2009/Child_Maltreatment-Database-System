package com.cmds.pbl.tcet.dao;

import java.sql.*;
public class AuthorityLoginDao {
	public static boolean check(String email,String password,int authority_id){  
        boolean status= false;
		try{  
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC","root",""); 
		  
		      
		PreparedStatement ps=connection.prepareStatement("select * from authority_info where email=? and password=? and authority_id=?");  
		ps.setString(1,email);  
		ps.setString(2,password);
		ps.setInt(3, authority_id);
		      
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		          
		}catch(Exception e){System.out.println(e);}  
		return status;
	}
}

