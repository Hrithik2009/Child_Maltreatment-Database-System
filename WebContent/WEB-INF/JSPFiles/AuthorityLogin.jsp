<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Authority Login</title>
        <link rel="stylesheet" type="text/css" href="./CSSfiles/authoritylogin/styles.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <style type="text/css">
            body {
    background: rgb(60,89,131);
    background: radial-gradient(circle, rgba(60,89,131,1) 48%, rgba(152,152,152,1) 98%);
} 
.topnav {
  overflow: hidden;
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);
  background: rgba(240,240,240, .5);
  
}

.topnav a {
  float: left;
  color: #555;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  align-content: top;
}

.topnav a:hover {
  background-color: #FFFFFF;
  color: black;
}
        </style>
    </head>
    <body class="bg-primary">

    <div class="topnav">
  <a class="active" href="./homepage.jsp"><i class="fa fa-home fa-fw" aria-hidden="true"></i>Home</a>
  <a href="./HTMLpages/AboutUs.html"><i class="fa fa-info-circle" aria-hidden="none"></i> About us</a>
  <a href="./HTMLpages/Acts.html"><i class="fa fa-gavel" aria-hidden="none"></i>Acts & Rules</a>
  <a href="./HTMLpages/Activities.html"><i class="fa fa-trophy" aria-hidden="none"></i>Activities</a>
  <a href="./HTMLpages/Contact_Us.html"><i class="fa fa-envelope-square" aria-hidden="none"></i>Contact us</a>

  </div>


        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4"><i class='fas fa-users' style='font-size:36px'></i> Authority Login</h3></div>
                                    <div class="card-body">
                                        <form method="post" action="AuthorityLogin">
                                        <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Authority id</label>
                                                <input class="form-control py-4" id="inputEmailAddress" type="number" placeholder="Enter your id" name="authority_id" required/>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control py-4" id="inputEmailAddress" type="text" placeholder="Enter email address" name="email" required/>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">Password</label>
                                                <input class="form-control py-4" id="inputPassword" type="password" placeholder="Enter password" name="password" required />
                                            </div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" />
                                                    <label class="custom-control-label" for="rememberPasswordCheck">Remember password</label>
                                                </div>
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <input class="btn btn-primary" type="submit" value="Login"></input>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="./CSSfiles/authoritylogin/scripts.js"></script>
    </body>
</html>
