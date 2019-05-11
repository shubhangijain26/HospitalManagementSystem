<%-- 
    Document   : manager
    Created on : 16 Apr, 2019, 9:19:56 AM
    Author     : Shubhangi Jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<title>Managers Page</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  	  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	  <script src="patient.js"></script>
	  <script src="manager.js"></script>
	  <!-- <script src="doctor.js"></script> -->

  	  <link rel="stylesheet" href="patient.css">
  	  <link rel="stylesheet" href="main.css">

</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		  
		  <a class="navbar-brand mr-3 mt-3 rounded-circle" href="#"><img src="imgs/logo1.jpg"  style="border-radius: 50px;width: 70px;height: 70px; position: absolute;top: 0;left: 0" alt="logo"></a>
		  &nsbp &nsbp

		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="collapsibleNavbar">
		    <ul class="navbar-nav">
		      <li class="nav-item">
		        <a class="nav-link" href="#" onclick="FindDoc()"><i class="fas fa-user-md" style='font-size:30px'></i> Find a doctor</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#" onclick="FindMed()"><i class="fas fa-ambulance" style='font-size:30px'></i> Medical Services</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#" onclick="showLocation()"><i class="fas fa-route" style='font-size:30px'></i> Directions</a>
		      </li>    
		      <li class="nav-item">
		        <a class="nav-link" href="#" onclick="showEnquiry()"><span class="glyphicon glyphicon-list-alt" style='font-size:30px'></span> Make an enquiry</a>
		      </li> 
		      <li class="nav-item">
		        <a class="nav-link" href="#" onclick="showAppointment()"><span class="glyphicon glyphicon-calendar" style='font-size:30px'></span> Book an appointment</a>
		      </li> 
		    </ul>
		  </div> 

        <a href="#" onclick="logoutModal()" style="color:white;font-size: 16px">[Logout]</a>
       <div class="logoutDiv container-fluid" id="logoutDivId" style="display: none">
            <div class="col-sm-4"></div>
                    <div class="logoutDivContent col-sm-4" id="logoutDivContentId">
                    <span id="closeBtn">&times;</span>
                    <h3>Are you sure you want to logout?</h3>
                    <input type="button" value="Yes" class="btnF" id="Yes" style="width: 80px">
                    <input type="button" value="No" class="btnF" id="No" style="width:  80px">
                    </div>
            <div class="col-sm-4"></div>
        </div>

        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3">
                    <a href="#" class="dropdown-item"><i class='fas fa-address-card' style='font-size:20px'></i>Dashboard</a>
                    <div class="dropdown">
                            &nbsp &nbsp <i class='fab fa-accessible-icon' style='font-size:24px'></i><button type="button" class="btn dropdown-toggle " data-toggle="collapse" data-target="#collapse1">
                                Patients
                              </button>
                              <div class="collapse" id="collapse1">
                                <a class="dropdown-item" href="#" onclick="showAllPatient()"><i class='fas fa-address-card' style='font-size:20px'></i> Show all patients</a><br>
                                <a class="dropdown-item" href="#" onclick="dischargePatient()"><i class='fas fa-vials' style='font-size:20px'></i>  Discharge patient</a><br>
                              </div>
                    </div>
                    <div class="dropdown">
                            &nbsp &nbsp<i class='fas fa-user-md' style='font-size:24px'></i><button type="button" class="btn dropdown-toggle " data-toggle="collapse" data-target="#collapse2">
                                Doctors
                              </button>
                              <div class="collapse" id="collapse2">
                                <a class="dropdown-item" href="#" onclick="showAllDoctor()"><i class='fas fa-stethoscope' style='font-size:20px'></i> Show all Doctors</a><br>
                                <a class="dropdown-item" href="#" onclick="deleteDoctor()"><i class='far fa-grin' style='font-size:20px'></i> Delete Doctors</a><br>

                              </div>
                    </div>
            </div>

            <div class="col-sm-9">
                <div id="displayRight">
                    <div class="container-fluid" id="showAllPatient" style="display: none">
                        <div class="background"></div>
                        <div>
                            <input type="button" class="btn btn-secondary"  value="show patient"  onclick="showPatInfo()">
                            <div id="sAllPat"></div>
                        </div>
                    </div>
                    
                    <script>
                        var req = new XMLHttpRequest();
                        var url= "showAllPatient.jsp";
                        
                        function showPatInfo()
                        {
                            try
                            {
                                req.onreadystatechange=getPatInfo;
                                req.open("GET",url,true);
                                req.send();
                            }
                            catch(e)
                            {
                                alert("No server found");
                            }
                        }
                        function getPatInfo()
                        {
                            if(req.readyState==4){
                                var val = req.responseText;
                                document.getElementById('sAllPat').innerHTML=val;
                            }
                        }
                        
                        
                    </script>
                    

                     <div class="container-fluid" id="dischargePatient" style="display: none">
                        <div class="background"></div>
                        <input type="button" class="btn btn-secondary"  value="discharge patient"  onclick="#">
                    </div>

                    <div class="container-fluid" id="deleteDoctor" style="display: none">
                        <div class="background"></div>
                        <input type="button" class="btn btn-secondary"  value="Delete doctor details"  onclick="#">
                    </div>

                    <div class="container-fluid" id="showAllDoctor" style="display: none">
                        <div class="background"></div>
                        <input type="button" class="btn btn-secondary"  value="show doctor"  onclick="#">
                    </div>

                    <div class="SearchDiv" style="display: none" id="DocDiv">
                        <div class="background1"></div>
                            <div class="Search" id="Doc">
                                <form>
                                          <div class="input-group">
                                            <input  type="text" class="form-control" name="findDoc" placeholder="Search for doctor" size="50px" style="height: 50px">
                                            <span class="input-group-addon"><i class="fa fa-user-md" style="font-size: 24px"></i></span>
                                          </div>
                                </form>
                                <div id="DocDetails"></div>
                            </div>
                     </div>
                    
                     <div class="SearchDiv" style="display: none" id="MedDiv">
                        <div class="background2"></div>
                        <div class="Search" id="medical">
                            <form>
                                      <div class="input-group">
                                        <input  type="text" class="form-control" name="findMed" placeholder="Search for Medical Services" size="50px" style="height: 50px">
                                        <span class="input-group-addon"><i class="fa fa-medkit" style="font-size: 24px"></i></span>
                                      </div>
                            </form>
                            <div id="MedDetails"></div>
                         </div>
                    </div>

            <div id="AppointmentForm" class="container-fluid" style="display: none">
                <div class="row">
                   <div class="col-sm-12">
                        <h2 align="center">Appointment Form</h2>
                           <form action="#" class="needs-validation" novalidate>
                                <div class="form-group">
                                  <label for="uname">Username:</label>
                                  <input type="text" class="form-control" id="uname" placeholder="Enter username" name="uname" required>
                                  <div class="valid-feedback">Valid.</div>
                                  <div class="invalid-feedback">Please fill out this field.</div>
                                </div>
                                <div class="form-group">
                                  <label for="pwd">Email Id:</label>
                                  <input type="email" class="form-control" id="pwd" placeholder="Enter your email" name="pwd" required>
                                  <div class="valid-feedback">Valid.</div>
                                  <div class="invalid-feedback">Please fill out this field.</div>
                                </div>
                                <div class="form-group">
                                  <label for="cno">Contact No.:</label>
                                  <input type="text" class="form-control"  id="cno" placeholder="Enter your contact number" name="cno" required>
                                  <div class="valid-feedback">Valid.</div>
                                  <div class="invalid-feedback">Please fill out this field.</div>
                                </div>

                                <div class="form-group">
                                  <label for="date">Date:</label>
                                  <input type="date" class="form-control"  id="date" placeholder="Enter date" name="date" required>
                                  <div class="valid-feedback">Valid.</div>
                                  <div class="invalid-feedback">Please fill out this field.</div>
                                </div>

                                <div class="form-group">
                                  <label for="enquiry">Have anything to say</label>
                                  <textarea name="enquirytbox" class="form-control" rows="5"></textarea>
                                  <div class="valid-feedback">Valid.</div>
                                  <div class="invalid-feedback">Please fill out this field.</div>
                                </div>

                                <div class="form-group form-check">
                                  <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" name="remember" required>&nbsp &nbsp &nbsp By clicking Submit, you agree to <a href="#">Terms and Conditions</a> of our website.
                                    </label>
                                    <div class="valid-feedback">Valid.</div>
                                    <div class="invalid-feedback">Check this checkbox to continue.</div> 
                                </div>

                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                       </div>
                    </div>
                </div>

            <div id="EnquiryForm" class="container-fluid" style="display: none">
                <div class="col-sm-12">
                    <h2 align="center">Enquiry Form</h2>
                    <form action="#" class="needs-validation" novalidate>
                        <div class="form-group">
                          <label for="uname">Username:</label>
                          <input type="text" class="form-control" id="uname" placeholder="Enter username" name="uname" required>
                          <div class="valid-feedback">Valid.</div>
                          <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div class="form-group">
                          <label for="pwd">Email Id:</label>
                          <input type="email" class="form-control" id="pwd" placeholder="Enter your email" name="pwd" required>
                          <div class="valid-feedback">Valid.</div>
                          <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                        <div class="form-group">
                          <label for="cno">Contact No.:</label>
                          <input type="text" class="form-control"  id="cno" placeholder="Enter your contact number" name="cno" required>
                          <div class="valid-feedback">Valid.</div>
                          <div class="invalid-feedback">Please fill out this field.</div>
                        </div>

                        <div class="form-group">
                          <label for="enquiry">Enter Your Enquiry</label>
                          <textarea name="enquirytbox" class="form-control" rows="5"></textarea>
                          <div class="valid-feedback">Valid.</div>
                          <div class="invalid-feedback">Please fill out this field.</div>
                        </div>

                        <div class="form-group form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="remember" required>&nbsp &nbsp &nbsp By clicking Submit, you agree to <a href="#">Terms and Conditions</a> of our website.
                            </label>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Check this checkbox to continue.</div> 
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>

                <div id="location" style="display: none">
                        <h2 align="center">Our Location</h2>
                        <iframe src="https://www.google.com/maps/d/embed?mid=1tqfCXmoH8v7g7nfoEl3hfuPS57grgfBe" width="100%" height="480"></iframe>
                </div>


                </div>
        </div>				
    </div>
    </div>
</body>
</html>