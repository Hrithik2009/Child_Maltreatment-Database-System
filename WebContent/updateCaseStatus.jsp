
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Case Status</title>
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
<%
        int complaint_id = Integer.parseInt(request.getParameter("complaint_id"));
        String query = "select * from lodge_complaint where complaint_id="+complaint_id;
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	
    	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC", "root", "");
    	
    	PreparedStatement statement = connection.prepareStatement(query);
    
    	ResultSet rs = statement.executeQuery();
        rs.next();
 %>
  <div class="container">
        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Update Case Status </h3>
                </div>
                <div class="col-4 text-right">
              <form action="./updateStatus" method="post"> 
                  <a href="./AuthorityDashboard" class="btn btn-sm btn-primary">Dashboard</a>
                   <input type="submit" class="btn btn-sm btn-primary" value="Update"></input>
                </div>
              </div>
            </div>
            <div class="card-body">
             
                <h6 class="heading-small text-muted mb-4">Update the Status</h6>
                <div class="pl-lg-4">
                  <div class="row">
                  <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Complaint Id</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative"  name="complaint_id" value="<%=rs.getInt("complaint_id") %>" required readonly>
                      </div>
                    </div>
                    <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Registration</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Update Status.." name="registration" value="<%=rs.getString("registration")%>" required readonly>
                      </div>
                  </div>
                  <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Registration Date</label>
                        <input type="date" id="input-username" class="form-control form-control-alternative" name="registration_date" value="<%=rs.getString("registration_date")%>"  required readonly>
                      </div>
                  </div>
                  <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Reviewed Details</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Update Status.." name="reviewed" value="<%=rs.getString("reviewed")%>"  required>
                      </div>
                  </div> 
                    
                  <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Review Date</label>
                        <input type="date" id="input-username" class="form-control form-control-alternative" placeholder="Update date.." name="review_date" value="<%=rs.getString("review_date")%>" >
                      </div>
                  </div>
                  <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Action Taken</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Update Status.." name="action" value="<%=rs.getString("action")%>" required>
                      </div>
                  </div>
                  <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Action Date</label>
                        <input type="date" id="input-username" class="form-control form-control-alternative" placeholder="Update Status.." name="action_date" value="<%=rs.getString("action_date")%>" >
                      </div>
                  </div>
                  <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Case Solved</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Update Status.." name="case_solved" value="<%=rs.getString("case_solved")%>" required>
                      </div>
                  </div>
                  <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Solved Date</label>
                        <input type="date" id="input-username" class="form-control form-control-alternative"  name="solved_date" value="<%=rs.getString("solved_date")%>" >
                      </div>
                  </div>
                 
              </form>
            </div>
          </div>
        </div>
      </div>
    </body>
    </html>