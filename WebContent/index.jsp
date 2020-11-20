<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
 
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Graphs Real-time</title>
        <link href="styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    

	
</head>

  <body class="sb-nav-fixed">

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Charts</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="homepage.jsp">Home</a></li>
                            <li class="breadcrumb-item active">Charts</li>
                        </ol>
                        <div class="card mb-4">
                        </div>


                            <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area mr-1"></i>
                                Area Chart
 	<%
						
			String query = "select * from lodge_complaint ";
                        String physical="Select Count(complaint_id) from lodge_complaint where abuse_type='Physical'";
                        String mental="Select Count(complaint_id) from lodge_complaint where abuse_type='Mental/Psychological'";
                        String sexual="Select Count(complaint_id) from lodge_complaint where abuse_type='Sexual'";
                        String emotional="Select Count(complaint_id) from lodge_complaint where abuse_type='Verbal/Emotional'";
                        String other="Select Count(complaint_id) from lodge_complaint where abuse_type='Other'";
						try {
							Class.forName("com.mysql.cj.jdbc.Driver"); // Loading the Driver
							// Establish a connection to data base
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC", "root", "");
							Statement st = con.createStatement();// 
							Statement st1 = con.createStatement();
							Statement st2 = con.createStatement();
							Statement st3 = con.createStatement();
							Statement st4 = con.createStatement();
							Statement st5 = con.createStatement();
							//Contains result of the executed query
							
							ResultSet rs = st.executeQuery(query);
							ResultSet rs1 = st1.executeQuery(physical);
							ResultSet rs2 = st2.executeQuery(mental);
							ResultSet rs3 = st3.executeQuery(sexual);
							ResultSet rs4 = st4.executeQuery(emotional);
							ResultSet rs5 = st5.executeQuery(other);
							rs.next();
							rs1.next();
							rs2.next();
							rs3.next();
							rs4.next();
							rs5.next();
							//System.out.println(rs5.getString(1));
						%>
<script type="text/javascript">

window.addEventListener("load",myfunction1,false); 
    function myfunction1() {
	var chart1 = new CanvasJS.Chart("chartContainer1", {
		animationEnabled: true, 
		animationDuration: 2500,
		theme:"light2",
		title:{
			text: "Cases registered of Abuses"              
		},
		data: [              
		{    bevelEnabled: true,
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "splineArea",
			color: "rgba(2,117,216,0.2)",
			dataPoints: [
				{ label: "Physical Abuse",  y: <%=rs1.getString(1)%> },
				{ label: "Mental/Psychological Abuse", y:  <%=rs2.getString(1)%> },
				{ label: "Sexual", y:  <%=rs3.getString(1)%> },
				{ label: "Emotional/Verbal Abuse",  y:  <%=rs4.getString(1)%> },
				{ label: "Others",  y:  <%=rs5.getString(1)%> }
				
			]
		}
		]
	});
	chart1.render();
}
<%
						} catch (Exception e) {
					System.out.print(e);
					e.printStackTrace();
					}
%>
</script>
                            </div>
                            <div id="chartContainer1" style="height: 300px; width: 100%;"></div>
                        </div>




                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar mr-1"></i>
                                        Pie Chart
 	<%
						
			String quer = "select * from lodge_complaint ";
                        String mumbai="Select Count(complaint_id) from lodge_complaint where city='Mumbai'";
                        String navi_mumbai="Select Count(complaint_id) from lodge_complaint where city='Navi Mumbai'";
                        String pune="Select Count(complaint_id) from lodge_complaint where city='Pune'";
                        String nagpur="Select Count(complaint_id) from lodge_complaint where city='Nagpur'";
                        String thane="Select Count(complaint_id) from lodge_complaint where city='Thane'";
						try {
							Class.forName("com.mysql.cj.jdbc.Driver"); // Loading the Driver
							// Establish a connection to data base
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC", "root", "");
							Statement st = con.createStatement();// 
							Statement st1 = con.createStatement();
							Statement st2 = con.createStatement();
							Statement st3 = con.createStatement();
							Statement st4 = con.createStatement();
							Statement st5 = con.createStatement();
							//Contains result of the executed query
							
							ResultSet rs = st.executeQuery(quer);
							ResultSet rs1 = st1.executeQuery(mumbai);
							ResultSet rs2 = st2.executeQuery(navi_mumbai);
							ResultSet rs3 = st3.executeQuery(pune);
							ResultSet rs4 = st4.executeQuery(nagpur);
							ResultSet rs5 = st5.executeQuery(thane);
							rs.next();
							rs1.next();
							rs2.next();
							rs3.next();
							rs4.next();
							rs5.next();
							//System.out.println(rs5.getString(1));
						%>
<script type="text/javascript">

window.addEventListener("load",myfunction2,false); 
    function myfunction2() {
	var chart2 = new CanvasJS.Chart("chartContainer2", {
		animationEnabled: true, 
		animationDuration: 2500,
		theme:"light2",
		title:{
			text: "Cases registered in cities"              
		},
		data: [              
		{    bevelEnabled: true,
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "pie",
			
			dataPoints: [
				{ label: "Mumbai",  y: <%=rs1.getString(1)%> },
				{ label: "Navi Mumbai", y:  <%=rs2.getString(1)%> },
				{ label: "Pune", y:  <%=rs3.getString(1)%> },
				{ label: "Nagpur",  y:  <%=rs4.getString(1)%> },
				{ label: "Thane",  y:  <%=rs5.getString(1)%> }
				
			]
		}
		]
	});
	chart2.render();
}
<%
						} catch (Exception e) {
					System.out.print(e);
					e.printStackTrace();
					}
%>
</script>                                        
                                    </div>
                                   <div id="chartContainer2" style="height: 300px; width: 100%;"></div>
                                </div>
                            </div>
                            
                            
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie mr-1"></i>
                                        Column Chart
 	<%
						
			String queries = "select * from lodge_complaint ";
                        String desk1="Select Count(complaint_id) from lodge_complaint where registration='Done'";
                        String desk2="Select Count(complaint_id) from lodge_complaint where reviewed='Done'";
                        String desk3="Select Count(complaint_id) from lodge_complaint where action='Done'";
                        String desk4="Select Count(complaint_id) from lodge_complaint where case_solved='Done'";
						try {
							Class.forName("com.mysql.cj.jdbc.Driver"); // Loading the Driver
							// Establish a connection to data base
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC", "root", "");
							Statement st = con.createStatement();// 
							Statement st1 = con.createStatement();
							Statement st2 = con.createStatement();
							Statement st3 = con.createStatement();
							Statement st4 = con.createStatement();
							//Contains result of the executed query
							
							ResultSet rs = st.executeQuery(queries);
							ResultSet rs1 = st1.executeQuery(desk1);
							ResultSet rs2 = st2.executeQuery(desk2);
							ResultSet rs3 = st3.executeQuery(desk3);
							ResultSet rs4 = st4.executeQuery(desk4);
							rs.next();
							rs1.next();
							rs2.next();
							rs3.next();
							rs4.next();
							//System.out.println(rs5.getString(1));
						%>
<script type="text/javascript">

	window.addEventListener("load",myfunction4,false);
    function myfunction4() {
	var chart3 = new CanvasJS.Chart("chartContainer3", {
		animationEnabled: true, 
		animationDuration: 2500,
		theme:"light2",
		title:{
			text: "Cases solved at respective desks "              
		},
		data: [              
		{    bevelEnabled: true,
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "column",
			color: "rgba(2,117,216,1)",
			dataPoints: [
				{ label: "Registration",  y: <%=rs1.getString(1)%> },
				{ label: "Reviewed", y:  <%=rs2.getString(1)%> },
				{ label: "Action", y:  <%=rs3.getString(1)%> },
				{ label: "Case Solved",  y:  <%=rs4.getString(1)%> }
				
			]
		}
		]
	});
	chart3.render();
}
<%
						} catch (Exception e) {
					System.out.print(e);
					e.printStackTrace();
					}
%>
</script>                                                                                
                            </div>
                            <div id="chartContainer3" style="height: 300px; width: 100%;"></div>
                        </div>
                        
          </div>
                            
          </div>
          </div>
          </main>
          </div>


<script src="canvasjs.min.js"></script>
</body>
</html>