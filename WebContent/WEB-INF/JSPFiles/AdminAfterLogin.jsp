<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin</title>
<link href="./CSSfiles/admin/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Welcome Admin</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search" aria-describedby="basic-addon2" />
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="userDropdown" href="#"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">Settings</a> <a
						class="dropdown-item" href="#">Activity Log</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="./logout">Logout</a>
				</div></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">

						<a class="nav-link" href="./Dashboard">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Dashboard
						</a>
						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link" href="./addAuthority">Add Authority</a> <a
							
							class="nav-link" href="./viewAuthority">View Authority</a> 
							

						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link" href="./charts.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Charts
						</a> <a class="nav-link" href="./tables.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Tables
						</a>
					</div>
				</div>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">Dashboard</h1>
				</div>
				<div class="row">
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-area mr-1"></i> Area Chart
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
		animationDuration: 4000,
		theme:"light2",
		title:{
			text: "Cases registered of Abuses"              
		},
		data: [              
		{    bevelEnabled: true,
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "area",
			color:"rgba(2,117,216,0.2)",
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
					</div>
					
					
					
					
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar mr-1"></i> Column Chart
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
		animationDuration: 4000,
		theme:"light2",
		title:{
			text: "Cases registered in cities"              
		},
		data: [              
		{    bevelEnabled: true,
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "column",
			color: "rgba(2,117,216,1)",
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
                       
                       
                       </div>
                       
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> All cases Registered
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">

								<thead class="thead-dark">
									<tr>
										<th>Complaint id</th>
										<th>Victim Name</th>
										<th>City</th>
										<th>Email</th>
										<th>Mobile No</th>
										<th>Abuse Type</th>
										<th>Registration Date</th>
                                        <th>Case Status</th>
									</tr>
								</thead>
								<tbody>
									<%
										try {
										Class.forName("com.mysql.cj.jdbc.Driver"); // Loading the Driver
										// Establish a connection to data base
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmds_pbl?serverTimezone=UTC", "root", "");
										Statement st = con.createStatement();// 
										//Contains result of the executed query
										ResultSet rs = st.executeQuery("select * from lodge_complaint");
										while (rs.next()) {
									%>
                                    <tr>
									<td><%=rs.getString("complaint_id")%></td>
									<td><%=rs.getString("username")%></td>
									<td><%=rs.getString("city")%></td>
									<td><%=rs.getString("email")%></td>
									<td><%=rs.getString("mob_no")%></td>
									<td><%=rs.getString("abuse_type")%></td>
									<td><%=rs.getString("registration_date")%></td>
                                    <td>
				     <a href="viewCaseStatus.jsp?complaint_id=<%=rs.getString("complaint_id")%>" class="btn btn-info" style="background-color:blue" role="button" >View</a>
									</td>
									</tr>
									
									<%
										}
									} catch (Exception e) {
									System.out.print(e);
									e.printStackTrace();
									}
									%>
								
						</div>
					</div>
				</div>
		</div>
		</main>
	</div>
	</div>
<script src="canvasjs.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="./CSSfiles/admin/scripts.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="./CSSfiles/admin/datatables-demo.js"></script>
</body>
</html>