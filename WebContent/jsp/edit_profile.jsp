<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Update profile</title>
    <link rel="shortcut icon" href="assets/abclogo.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!--font-->
    <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <!-- external css for footer -->
    <link rel="stylesheet" href="assets/footer.css">
    <!-- end of external css for footer -->
    <style>
        /*body css*/
        
        body {
            background: #83a4d4;
            background: -webkit-linear-gradient(to right, #83a4d4, #b6fbff);
            background: linear-gradient(to right, #83a4d4, #b6fbff);
        }
        
        .emp-profile {
            padding: 3%;
            margin-top: 3%;
            margin-bottom: 3%;
            border-radius: 0.5rem;
            background: #fff;
        }
        
        .profile-img {
            text-align: center;
        }
        
        .profile-img img {
            width: 70%;
            height: 100%;
        }
        
        .profile-img .file {
            position: relative;
            overflow: hidden;
            margin-top: -20%;
            width: 70%;
            border: none;
            border-radius: 0;
            font-size: 15px;
            background: #212529b8;
        }
        
        .profile-img .file input {
            position: absolute;
            opacity: 0;
            right: 0;
            top: 0;
        }
        
        .profile-head h5 {
            color: #333;
        }
        
        .profile-head h6 {
            color: #0062cc;
        }
        
        .profile-edit-btn {
            border: none;
            border-radius: 1.5rem;
            width: 70%;
            padding: 2%;
            font-weight: 600;
            color: #6c757d;
            cursor: pointer;
        }
        
        .proile-rating {
            font-size: 12px;
            color: #818182;
            margin-top: 5%;
        }
        
        .proile-rating span {
            color: #495057;
            font-size: 15px;
            font-weight: 600;
        }
        
        .profile-head .nav-tabs {
            margin-bottom: 5%;
        }
        
        .profile-head .nav-tabs .nav-link {
            font-weight: 600;
            border: none;
        }
        
        .profile-head .nav-tabs .nav-link.active {
            border: none;
            border-bottom: 2px solid #0062cc;
        }
        
        .profile-work {
            padding: 14%;
            margin-top: -15%;
        }
        
        .profile-work p {
            font-size: 12px;
            color: #818182;
            font-weight: 600;
            margin-top: 10%;
        }
        
        .profile-work a {
            text-decoration: none;
            color: #495057;
            font-weight: 600;
            font-size: 14px;
        }
        
        .profile-work ul {
            list-style: none;
        }
        
        .profile-tab label {
            font-weight: 600;
        }
        
        .profile-tab p {
            font-weight: 600;
            color: #0062cc;
        }
        /*navigation bar button style */
        
        .btn {
            background-color: #5892FF;
            border: none;
            color: white;
            padding: 12px 16px;
            font-size: 16px;
            cursor: pointer;
        }
        /* Darker background on mouse-over */
        
        .btn:hover {
            background-color: rgb(241, 111, 111);
        }
    </style>
</head>

<body>
    <!-- Navigation bar -->
    <jsp:include page="header.jsp"></jsp:include>


 	<%
      	if(session.getAttribute("email")!=null){
      		%>
      		
      		<%
      	}
      
	%><br><br>
    <!-- end of Navigation bar -->

    <!--update profile session -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <div class="container">
        <div class="row flex-lg-nowrap">
            <div class="col">
                <div class="row">
                    <div class="col mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="e-profile">
                                    <div class="row">
                                        <div class="col-12 col-sm-auto mb-3">
                                            <div class="mx-auto" style="width: 140px;">
                                                <div class="d-flex justify-content-center align-items-center rounded" style="height: 140px; background-color: rgb(233, 236, 239);">
                                                    <span style="color: rgb(166, 168, 170); font: bold 8pt Arial;">140x140</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                                            <div class="text-center text-sm-left mb-2 mb-sm-0">
                                                <h4 class="pt-sm-2 pb-1 mb-0 text-nowrap"> <s:property value="user.first_name" /> <s:property value="user.last_name" /></h4>
                                                <p class="mb-0"><s:property value="user.first_name" />#0<s:property value="user.user_id" /></p>
                                                <div class="text-muted"><small>Last seen 2 hours ago</small></div>
                                                <div class="mt-2">
                                                    <button class="btn btn-primary" type="button">
                        <i class="fa fa-fw fa-camera"></i>
                        <span>Change Photo</span>
                      </button>
                                                </div>
                                            </div>
                                            <div class="text-center text-sm-right">

                                                <div class="text-muted"><small>Joined 09 Dec 2017</small></div>
                                            </div>
                                        </div>
                                    </div>

                                    <ul class="nav nav-tabs">
                                        <li class="nav-item"><a href="" class="active nav-link">Settings</a></li>
                                    </ul>
                                    <div class="tab-content pt-3">
                                        <div class="tab-pane active">
                                  <form action="update_profile_process" class="form" method="post">
                                              <s:hidden name="user.user_id" key="id" value="%{user.user_id}"  />
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>First Name</label>
                                                                    <!--<input class="form-control" type="text" name="name" placeholder="First Name">  -->
                                                                    <s:textfield class="form-control" name="user.first_name"  placeholder="First Name" value="%{user.first_name}" size="20" />
                                                                </div>
                                                            </div>
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Last Name</label>
                                                                    <s:textfield class="form-control" name="user.last_name"  placeholder="Last Name" value="%{user.last_name}" size="20" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Email</label>
                                                                    <s:textfield class="form-control" name="user.email" placeholder="example@domain.com" readOnly="%{user.email}" size="20" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Phone</label>
                                                                   <s:textfield class="form-control" name="user.contact"  placeholder="Enter your phone number" value="%{user.contact}" size="20" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Date of Birth</label>
                                                                   <s:textfield class="form-control" name="user.dob"  placeholder="YYYY/MM/DD" value="%{user.dob}" size="20" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Profession</label>
                                                                  <s:textfield class="form-control" name="user.profession"  placeholder="Eg: Programmer/Web Developer" value="%{user.profession}" size="20" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col mb-3">
                                                                <div class="form-group">
                                                                    <label>About</label>
                                                                   <s:textfield class="form-control" name="user.bio"  placeholder="My Bio" value="%{user.bio}" size="120" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                              <div class="row">
                                                    <div class="col-12 col-sm-6 mb-3">
                                                        <div class="mb-2"><b>Change Password</b></div>
                                                   	</div>  
                                              </div>
                                               
                                              <div class="row">
                                              	<div class="col-12 col-sm-6 mb-3">
                                                    <div class="form-group">
                                                       <label>New Password</label>       
                                                         <s:textfield class="form-control" name="user.password" placeholder="Your new password"  readOnly="%{user.password}" size="20" />
                                                    </div>
                                                </div>
                                                        
                                                       
                                               <div class="col-12 col-sm-6 mb-3">
                                                 <div class="form-group">
                                                 	<label>Confirm new Password</label>   
                                                         <s:textfield class="form-control" name="user.confirmpassword" placeholder="Confirm your new password"  readOnly="%{user.password}" size="20" />
                                                  </div>
                                               </div>
                                              </div>

                                               <div class="row">
                                                    <div class="col-12 col-sm-6 mb-3">
                                                        <div class="mb-2"><b>Your Time line</b></div>
                                                   	</div>  
                                              </div>
                                               
                                              <div class="row">
                                              	<div class="col-12 col-sm-6 mb-3">
                                                   <div class="form-group">
                                                       <label>Experience</label>
                                                       <s:textfield class="form-control" name="user.experience"  placeholder="Your experience" value="%{user.experience}" size="20" />
                                                    </div>
                                                </div>
                                                        
                                                       
                                               <div class="col-12 col-sm-6 mb-3">
                                                 <div class="form-group">
                                                       <label>English Level</label>
                                                       <s:textfield class="form-control" name="user.english_level"  placeholder="Your English level (Eg: Beginner/Intermediate...)" value="%{user.english_level}" size="20" />
                                                 </div>
                                               </div>
                                              </div>
                                                

                                          
                                                    <div class="col d-flex justify-content-end">
                                                        <!-- <button class="btn btn-primary" type="submit">Save Changes</button> -->
                                                         <s:submit class="btn btn-primary" method="execute" label="Update"  value="Save Changes"/>
                                                    </div>
                                            
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                  
                </div>

            </div>
        </div>
    </div>
    <!-- end of update profile session -->

    <!-- footer -->
  
<jsp:include page="footer.jsp"></jsp:include>
    <!--  end footer -->
</body>

</html>