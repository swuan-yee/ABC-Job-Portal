<head>
    <title>Register</title>
    <link rel="shortcut icon" href="assets/abclogo.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <!-- external css for footer -->
   <link rel="stylesheet" href="assets/footer.css">
    <link rel="stylesheet" href="assets/index.css">
    <!-- end of external css for footer =-->
    <style>
        /*for register form */
        
        .divider-text {
            position: relative;
            text-align: center;
            margin-top: 15px;
            margin-bottom: 15px;
        }
        
        .divider-text span {
            padding: 7px;
            font-size: 12px;
            position: relative;
            z-index: 2;
        }
        
        .divider-text:after {
            content: "";
            position: absolute;
            width: 100%;
            border-bottom: 1px solid #ddd;
            top: 55%;
            left: 0;
            z-index: 1;
        }
        
        .btn-facebook {
            background-color: #405D9D;
            color: #fff;
        }
        
        .btn-twitter {
            background-color: #42AEEC;
            color: #fff;
        }
    </style>
</head>
<body>

		<jsp:include page="header.jsp"></jsp:include>

		 <!--starting coding of register form -->
    <form name="register" method="POST" onsubmit="return validate()" action="registeruser">
        <div class="container">
            <article class="card-body mx-auto" style="max-width:600px; text-align: center;">
                <h3 class="card-title mt-3 text-center">Sign Up</h3>
                <p class="text-center">Get started with your free account</p>
                <p>
                    <a href="" class="btn btn-block btn-twitter"> <i class="fa fa-twitter"></i>   Sign-up with Twitter
                    </a>
                    <a href="" class="btn btn-block btn-facebook"> <i class="fa fa-facebook-f"></i>   Sign-up with Facebook
                    </a>
                </p>
                <p class="divider-text">
                    <span class="bg-light">OR</span>
                </p>
                <form>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                        </div>
                        <input name="fname" class="form-control" placeholder="First Name" id="fn">
                    </div>
                    <p id="error_first-name" style="color:red;"></p>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                        </div>
                        <input name="lname" class="form-control" placeholder="Last Name" id="ln">
                    </div>
                    <p id="error_last-name" style="color:red;"></p>
                    <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                        </div>
                        <input name="email" class="form-control" placeholder="Email address" id="em">
                    </div>
                    <p id="error_email" style="color:red;"></p>
                    <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                        </div>
                        <select class="custom-select" style="max-width: 100px;">
                            <option selected="">+95</option>
                            <option value="1">+65</option>
                            <option value="2">+91</option>
                            <option value="3">+86</option>
                        </select>
                        <input name="phone" class="form-control" placeholder="Phone number" type="contact" id="contact">
                    </div>
                    <p id="error_contact" style="color:red;"></p>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                        </div>
                        <input name="password" class="form-control" placeholder="Create password" type="password" id="pass1">
                    </div>
                    <p id="error_password1" style="color:red;"></p>
                    <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                        </div>
                        <input class="form-control" placeholder="Re-enter password" type="password" id="pass2">
                    </div>
                    <p id="error_password2" style="color:red;"></p>
                    <!-- form-group// -->
                    <div class="form-group">
                        <button type="submit" class="btn btn-dark btn-block">Sign Up</button>
                    </div>
                    <!-- form-group// -->
                    <p class="text-center">Do you have learning centre account?<a href="login">Log In</a> </p>
                </form>
            </article>
        </div>


	<jsp:include page="footer.jsp"></jsp:include>
	 <script>
            function validate() {
                var input = true;

                var a = document.forms["register"]["fn"].value;
                if (a == "") {
                    document.getElementById("error_first-name").innerHTML = "&nbsp;&nbsp;&nbsp;Please enter First Name";
                    input = false;
                } else {
                    document.getElementById("error_first-name").innerHTML = "";
                }

                var a = document.forms["register"]["ln"].value;
                if (a == "") {
                    document.getElementById("error_last-name").innerHTML = "&nbsp;&nbsp;&nbsp;Please enter Last Name";
                    input = false;
                } else {
                    document.getElementById("error_last-name").innerHTML = "";
                }

                var a = document.forms["register"]["em"].value;
                if (a == "") {
                    document.getElementById("error_email").innerHTML = "&nbsp;&nbsp;&nbsp;Please enter Email";
                    input = false;
                } else {
                    document.getElementById("error_email").innerHTML = "";
                }

                var a = document.forms["register"]["contact"].value;
                if (a == "") {
                    document.getElementById("error_contact").innerHTML = "&nbsp;&nbsp;&nbsp;Please enter contact";
                    input = false;
                } else {
                    document.getElementById("error_contact").innerHTML = "";
                }

                var a = document.forms["register"]["pass1"].value;
                if (a == "") {
                    document.getElementById("error_password1").innerHTML = "&nbsp;&nbsp;&nbsp;Please enter password";
                    input = false;
                } else {
                    document.getElementById("error_password1").innerHTML = "";
                }
                var a = document.forms["register"]["pass2"].value;
                if (a == "") {
                    document.getElementById("error_password2").innerHTML = "&nbsp;&nbsp;&nbsp;Please re-enter password";
                    input = false;
                } else {
                    document.getElementById("error_password2").innerHTML = "";
                }
                var a = document.forms["register"]["password"].value;
                var b = document.forms["register"]["pass2"].value;
                if (a != b) {
                    document.getElementById("error_password2").innerHTML = "&nbsp;&nbsp;&nbsp;You need to enter the same password.";
                    input = false;
                } else
                    document.getElementById("error_password2").innerHTML = "";

                return input;
            }

            /*check validate email*/
            function validateEmail(email) {
                var email = document.forms["register"]["em"].value;
                var first = email.indexOf("@");
                var second = email.lastIndexOf(".");

                if (email == "") {
                    document.getElementById("error_email").innerHTML = "Please fill the required email";
                } else {
                    if (first < 4 || second < first + 3) {
                        document.getElementById("error_email").innerHTML = "Insert the email with '@' and '.' sign";
                    } else {
                        document.getElementById("error_email").innerHTML = "";
                    }
                }

            }
        </script>
        </form>
</body>
</html>