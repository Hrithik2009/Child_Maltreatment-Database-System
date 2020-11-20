<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Track Status</title>
    <link rel="stylesheet" type="text/css" href="./CSSfiles/trackcomplaint/demo.css" />
	<link rel="stylesheet" type="text/css" href="./CSSfiles/trackcomplaint/new.css" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



    <style type="text/css">
     .ScriptHeader{
        color: #08cbd2;
        font-size: 28px;
        font-weight: 700;
        margin: 0;
        line-height: normal;
     }
    .ScriptHeader{
    display: block;
    padding: 0;
    font-size: 22px;
    opacity: 0.7;
    margin-top: 5px;
    text-transform:uppercase;
   }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
	<script>
    jQuery(document).ready(function($){
        var $timeline_block = $('.cd-timeline-block');
    
        //hide timeline blocks which are outside the viewport
        $timeline_block.each(function(){
            if($(this).offset().top > $(window).scrollTop()+$(window).height()*0.75) {
                $(this).find('.cd-timeline-img, .cd-timeline-content').addClass('is-hidden');
            }
        });
    
        //on scolling, show/animate timeline blocks when enter the viewport
        $(window).on('scroll', function(){
            $timeline_block.each(function(){
                if( $(this).offset().top <= $(window).scrollTop()+$(window).height()*0.75 && $(this).find('.cd-timeline-img').hasClass('is-hidden') ) {
                    $(this).find('.cd-timeline-img, .cd-timeline-content').removeClass('is-hidden').addClass('bounce-in');
                }
            });
        });
    });
     </script>
</head>
<body style="background-color: #1261A0">
  <% int id = Integer.parseInt(request.getParameter("complaint_id"));
     String name = request.getParameter("name");
  %>
<header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading">
            	<h1 align="center" style="color: #fff">Track Status</h1>
                <a href="homepage.jsp" class="btn btn-info" role="button" style="background: #072F5F">Home</a>
            </div>
        </div>
    </div>
    <%
       
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");  //Loading the Driver
		//Getting connection to database
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC", "root", "");
		Statement st = con.createStatement();
		//st variable will be used for executing queries
		String sql = "select * from lodge_complaint where complaint_id ="+id;
		// sql variable  contains the sql query
        ResultSet rs = st.executeQuery(sql);
		//Contains result of the executed query
        while(rs.next()){
%>
</header>
<header class="ScriptHeader">
    <div class="rt-container">
        <div class="col-rt-12">
            <div class="rt-heading">
                    <h4 style="color: #fff">Complaint Number : <%=rs.getString("complaint_id") %> </h4><br>
                    <h4 style="color: #fff">Victim's Name : <%=rs.getString("username") %></h4><br>
                    <h4 style="color: #fff">Victim's City : <%=rs.getString("city") %></h4><br>
                    <h4 style="color: #fff">Type Of Abuse : <%=rs.getString("abuse_type") %> </h4><br>
                    <h4 style="color: #fff">Complaint Date: <%=rs.getString("registration_date") %> </h4><br>
            </div>
        </div>
    </div>
</header>

<section>
    <div class="rt-container">
          <div class="col-rt-12">
              
              <section id="cd-timeline" class="cd-container">
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="https://img.icons8.com/nolan/64/check-file.png">
                </div> <!-- cd-timeline-img -->
    
                <div class="cd-timeline-content">
                    <h3><b>Registration</b></h3>
                   
                    <span class="cd-date" style="color: #fff"><h4><%=rs.getString("registration_date")%></h4></span>
                     <h4><%=rs.getString("registration") %></h4>
                </div> <!-- cd-timeline-content -->
            </div> <!-- cd-timeline-block -->
    
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie">
                    <img src="https://img.icons8.com/dusk/64/000000/check-book.png" alt="Movie">
                </div> <!-- cd-timeline-img -->
    
                <div class="cd-timeline-content">
                    <h3><b>Reviewed Details</b></h3>
                    <h4><%=rs.getString("reviewed")%></h4>
                    <span class="cd-date" style="color: #fff"><h4><%=rs.getString("review_date")%></h4></span>
                </div> <!-- cd-timeline-content -->
            </div> <!-- cd-timeline-block -->
    
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="https://img.icons8.com/cotton/64/000000/heck-for-payment.png" alt="Picture">
                </div> <!-- cd-timeline-img -->
    
                <div class="cd-timeline-content">
                    <h3><b>Action Taken</b></h3>
                    <h4><%=rs.getString("action")%></h4>
                    <span class="cd-date" style="color: #fff"><h4><%=rs.getString("action_date")%></h4></span>
                </div> <!-- cd-timeline-content -->
            </div> <!-- cd-timeline-block -->
    
    
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-movie">
                    <img src="https://img.icons8.com/nolan/64/check-all.png" alt="Movie">
                </div> <!-- cd-timeline-img -->
                	
                <div class="cd-timeline-content">
                    <h3><b>Solved</b></h3>
                    <h4><%=rs.getString("case_solved")%></h4>
                    <span class="cd-date" style="color: #fff" ><h4><%=rs.getString("solved_date")%></h4></span>
                </div>
            </div>
            <P> </P>
        </section>
         <% 
	}
		}catch (Exception e){
		System.out.print(e);
		e.printStackTrace();
	}
%>
    
		</div>
    </div>
</section>

</body>
</html>










