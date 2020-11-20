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
<title>Authority</title>
<link href="./CSSfiles/authorityafterlogin/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
	crossorigin="anonymous"></script>

</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Welcome Authority</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
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

						<a class="nav-link" href="./AuthorityDashboard">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Dashboard
						</a>
						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link" href="./updateProfile">Update Profile</a> <a
							class="nav-link" href="./viewProfile">View Profile</a> 
							
					</div>
				</div>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">Dashboard</h1>
				</div>
				<div class="row"></div>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> Cases
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
										<th>Registration date</th>
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
										    <a href="updateCaseStatus.jsp?complaint_id=<%=rs.getString("complaint_id")%>" class="btn btn-primary"  role="button" >Update</a>
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="./CSSfiles/authorityafterlogin/scripts.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="./CSSfiles/authorityafterlogin/datatables-demo.js"></script>
</body>
</html>