<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Confirm your email </title>
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
      
	%><br>
    <!-- end of Navigation bar -->

    <!-- confirm mail -->
    <div class="container">
        <div class="omb_login">
            <h3 class="omb_authTitle">Confirm your email address.</a>
            </h3>

        </div>
        <div class="row omb_row-sm-offset-3 omb_loginOr">

        </div>
        <div class="row omb_row-sm-offset-3">
            <div class="col-xs-12 col-sm-6">
                <form name="con" method="POST" onsubmit="return validate()"action="reset_password">
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                        </div>
                        <input name="email" class="form-control" placeholder="Confirm your email address" id="con_mail">
                    </div>
                    <p id="error_con_email" style="color:red;"></p>
                    <button class="btn btn-lg btn-dark btn-block" type="submit">Confirm</button>
                </form>
            </div>
        </div>
        <br>
    </div>

    <!-- end of confirm mail -->

    <!-- footer -->
   
<jsp:include page="footer.jsp"></jsp:include>
    <!--  end footer -->

    <!--validation form with Javascript-->
    <script>
        function validate() {
            var input = true;

            var a = document.forms["con"]["mail"].value;
            if (a == "") {
                document.getElementById("error_con_email").innerHTML = "&nbsp;&nbsp;&nbsp;Insert your email.";
                input = false;
            } else {
                document.getElementById("error_con_email").innerHTML = "";
            }

            return input;
        }
    </script>
    </form>
</body>

</html>