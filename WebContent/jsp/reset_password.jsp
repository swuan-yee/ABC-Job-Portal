<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

<head>
    <title>Forget password </title>
    <link rel="shortcut icon" href="assets/abclogo.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!--font style-->
    <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <!-- external css for footer -->
    <link rel="stylesheet" href="assets/footer.css">
    <!-- end of external css for footer -->
    <style>
        @media (min-width: 768px) {
            .omb_row-sm-offset-3 div:first-child[class*="col-"] {
                margin-left: 25%;
            }
        }
        
        .omb_login .omb_authTitle {
            text-align: center;
            line-height: 300%;
        }
        
        .omb_login .omb_socialButtons a {
            color: white;
            opacity: 0.9;
        }
        
        .omb_login .omb_socialButtons a:hover {
            color: white;
            opacity: 1;
        }
        
        .omb_login .omb_socialButtons .omb_btn-facebook {
            background: #3b5998;
        }
        
        .omb_login .omb_socialButtons .omb_btn-twitter {
            background: #00aced;
        }
        
        .omb_login .omb_loginOr {
            position: relative;
            font-size: 1.5em;
            color: #aaa;
            margin-top: 1em;
            margin-bottom: 1em;
            padding-top: 0.5em;
            padding-bottom: 0.5em;
        }
        
        .omb_login .omb_loginOr .omb_hrOr {
            background-color: #cdcdcd;
            height: 1px;
            margin-top: 0px !important;
            margin-bottom: 0px !important;
        }
        
        .omb_login .omb_loginOr .omb_spanOr {
            display: block;
            position: absolute;
            left: 50%;
            top: -0.6em;
            margin-left: -1.5em;
            background-color: white;
            width: 3em;
            text-align: center;
        }
        
        .omb_login .omb_loginForm .input-group.i {
            width: 2em;
        }
        
        .omb_login .omb_loginForm .help-block {
            color: red;
        }
        
        @media (min-width: 768px) {
            .omb_login .omb_forgotPwd {
                text-align: right;
                margin-top: 10px;
            }
        }
    </style>

</head>

<body>
    <!-- Navigation bar -->
<jsp:include page="header.jsp"></jsp:include>


 	<%
      	if(session.getAttribute("email")!=null){
      		%>
			<%= session.getAttribute("email") %>
      		
      		<%
      	}
      
	%>
    <!-- end of Navigation bar -->

    <!-- forget password -->
    <form method="POST" onsubmit="return validate()" action="changed_password">
    <div class="form-group">
		<input type="hidden" class="form-control" name="hiddenemail" value="<s:property value="user.email" />">
	</div>
<!--  <input type="hidden" class="form-control" name="hiddenemail" value="<s:property value="user.email" />">-->
					
        <div class="container">
            <article class="card-body mx-auto" style="max-width:600px; text-align: center;">
                <h3 class="card-title mt-3 text-center">Create new password</h3>
                <form>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                        </div>
                        <input class="form-control" name="pass" placeholder="Create password" type="password" id="pass1">
                    </div>
                    <p id="error_password1" style="color:red;"></p>
                    <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                        </div>
                        <input class="form-control" name="" placeholder="Re-enter password" type="password" id="pass2">
                    </div>
                    <p id="error_password2" style="color:red;"></p>
                    <!-- form-group// -->
                    <div class="form-group">
                        <button type="submit" class="btn btn-dark btn-block">Confirm</button>
                    </div>

                </form>
            </article>
        </div>
    </form>

    <!-- end of forget password -->

    <!-- footer -->
   
<jsp:include page="footer.jsp"></jsp:include>
    <!--  end footer -->

    <!--validation form with Javascript-->
    <script>
        function validate() {
            var input = true;
            var a = document.forms["hiddenemail"]["pass1"].value;
            if (a == "") {
                document.getElementById("error_password1").innerHTML = "&nbsp;&nbsp;&nbsp;Please enter new-password";
                input = false;
            } else {
                document.getElementById("error_password1").innerHTML = "";
            }
            var a = document.forms["hiddenemail"]["pass2"].value;
            if (a == "") {
                document.getElementById("error_password2").innerHTML = "&nbsp;&nbsp;&nbsp;Please re-enter your password";
                input = false;
            } else {
                document.getElementById("error_password2").innerHTML = "";
            }
            var a = document.forms["hiddenemail"]["pass1"].value;
            var b = document.forms["hiddenemail"]["pass2"].value;
            if (a != b) {
                document.getElementById("error_password2").innerHTML = "&nbsp;&nbsp;&nbsp;Password must be same.";
                input = false;
            } else
                document.getElementById("error_password2").innerHTML = "";

            return input;
        }
    </script>

</body>

</html>