<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Authority</title>
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
                  <h3 class="mb-0">Add new Authority</h3>
                </div>
                <div class="col-4 text-right">
                 <form action="./addAuthority" method="post">
                  <a href="./Dashboard" class="btn btn-sm btn-primary">Dashboard</a>
                   <input type="submit" class="btn btn-sm btn-primary" value="ADD"></input>
                </div>
              </div>
            </div>
            <div class="card-body">
             
                <h6 class="heading-small text-muted mb-4">Authority information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Authority Name</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Authority name" name="authority_name" required>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input type="email" id="input-email" class="form-control form-control-alternative" placeholder="Email.." name="authority_email" required>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">City</label>
                        <input type="text" id="input-first-name" class="form-control form-control-alternative" placeholder="City.." name="authority_city" required>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Password</label>
                        <input type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Set Password" name="authority_password" required>
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
                        <input type="text" id="input-city" class="form-control form-control-alternative" placeholder="mobile no" name="authority_mob_no" required>
                      </div>
                    </div>
                    
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </body>
    </html>