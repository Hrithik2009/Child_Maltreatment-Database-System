<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
  <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>View Profile</title>
  <link rel="stylesheet" href="./CSSfiles/admin/view.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <style type="text/css">
            body {
               background: rgb(60,89,131);
    background: radial-gradient(circle, rgba(60,89,131,1) 48%, rgba(152,152,152,1) 98%);
}
.container{
    z-index: 0;
    padding-bottom: 20px;
    margin-top: 90px;
    margin-bottom: 90px;
    margin-left: 360px;
} 
  </style>
</head>
<body>
  <div class="container">
        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Your Profile</h3>
                </div>
                <div class="col-4 text-right">
                 <form action="./viewProfile" method="post">
                  <a href="./AuthorityDashboard" class="btn btn-sm btn-primary">Dashboard</a>
                  
                </div>
              </div>
            </div>
            <div class="card-body">
             
                <h6 class="heading-small text-muted mb-4">Authority information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                  <div class="col-lg-6">
                  <%
                  HttpSession session1=request.getSession(false);
          		  int authority_id = (Integer)session1.getAttribute("authority_id");
          		  String query = "select * from authority_info where authority_id="+authority_id;
          		
          		try {
          		Class.forName("com.mysql.cj.jdbc.Driver"); // Loading the Driver
          		// Establish a connection to data base
          		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC", "root", "");
          		Statement st = con.createStatement();// 
          		//Contains result of the executed query
                  ResultSet rs = st.executeQuery(query);
                  rs.next();
                  %>
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Authority id</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Authority id" name="authority_id" value="<%=rs.getInt("authority_id") %>" readonly>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Authority Name</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Authority name" name="authority_name" value="<%=rs.getString("username") %>" readonly>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input type="email" id="input-email" class="form-control form-control-alternative" placeholder="Email.." name="authority_email" value="<%=rs.getString("email") %>" readonly>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">City</label>
                        <input type="text" id="input-first-name" class="form-control form-control-alternative" placeholder="City.." name="authority_city" value="<%=rs.getString("city") %>" readonly>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Password</label>
                        <input type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Set Password" name="authority_password" value="<%=rs.getString("password") %>" readonly>
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!-- Address -->
                <h6 class="heading-small text-muted mb-4">Contact information</h6>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-city">Mobile Number</label>
                        <input type="text" id="input-city" class="form-control form-control-alternative" placeholder="mobile no" name="authority_mob_no" value="<%=rs.getString("mob_no") %>" readonly>
                      </div>
                    </div>
                    <%
    
	
		}catch (Exception e){
		System.out.print(e);
		e.printStackTrace();
	}
%>
                    
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </body>
    </html>