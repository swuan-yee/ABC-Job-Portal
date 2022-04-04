<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

<head>
    <title>Register confirmation email</title>
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
    <style>
        /*FOOTER, body and header*/
        
        body {
            margin: 0;
            background-color: #e9ecef;
            font-family: 'Balsamiq Sans', cursive;
        }
        
        footer {
            background: #16222A;
            background: -webkit-linear-gradient(59deg, #3A6073, #16222A);
            background: linear-gradient(59deg, #3A6073, #16222A);
            color: white;
            margin-top: 100px;
        }
        
        footer a {
            color: #fff;
            font-size: 14px;
            transition-duration: 0.2s;
        }
        
        footer a:hover {
            color: #FA944B;
            text-decoration: none;
        }
        
        .copy {
            font-size: 12px;
            padding: 10px;
            border-top: 1px solid #FFFFFF;
        }
        
        .footer-middle {
            padding-top: 2em;
            color: white;
        }
        /*social media icons*/
        /* footer social icons */
        
        ul.social-network {
            list-style: none;
            display: inline;
            margin-left: 0 !important;
            padding: 0;
        }
        
        ul.social-network li {
            display: inline;
            margin: 0 5px;
        }
        /* footer social icons */
        
        .social-network a.icoFacebook:hover {
            background-color: #3B5998;
        }
        
        .social-network a.icoLinkedin:hover {
            background-color: #007bb7;
        }
        
        .social-network a.icoTwitter:hover {
            background-color: #00acee;
        }
        
        .social-network a.icoInstagram:hover {
            background-color: #3f729b;
        }
        
        .social-network a.icoFacebook:hover i,
        .social-network a.icoLinkedin:hover i,
        .social-network a.icoInstagram:hover i,
        .social-network a.icoTwitter:hover {
            color: #fff;
        }
        
        .social-network a.socialIcon:hover,
        .socialHoverClass {
            color: #44BCDD;
        }
        
        .social-circle li a {
            display: inline-block;
            position: relative;
            margin: 0 auto 0 auto;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            text-align: center;
            width: 30px;
            height: 30px;
            font-size: 15px;
        }
        
        .social-circle li i {
            margin: 0;
            line-height: 30px;
            text-align: center;
        }
        
        .social-circle li a:hover i,
        .triggeredHover {
            -moz-transform: rotate(360deg);
            -webkit-transform: rotate(360deg);
            -ms--transform: rotate(360deg);
            transform: rotate(360deg);
            -webkit-transition: all 0.2s;
            -moz-transition: all 0.2s;
            -o-transition: all 0.2s;
            -ms-transition: all 0.2s;
            transition: all 0.2s;
        }
        
        .social-circle i {
            color: #595959;
            -webkit-transition: all 0.8s;
            -moz-transition: all 0.8s;
            -o-transition: all 0.8s;
            -ms-transition: all 0.8s;
            transition: all 0.8s;
        }
        
        .social-network a {
            background-color: #F9F9F9;
        }
        /*====== footer font family ===========*/
        
        strong {
            font-family: 'Balsamiq Sans', cursive;
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
    <!-- confirmation mail -->
    <div class="wrapper" style="max-width:580px;margin:20px auto;">
        <div class="space" style="height:5rem;"></div>
        <div class="container" style="position:relative;background:#fff;overflow:hidden;border-radius:15px;">
            <div id="content" style="padding:2rem;border-top:1px solid #DDE2E5;border-bottom:1px solid #DDE2E5;text-align:center;">
                <h2 style="font-weight:normal;font-weight:bold;">Email Verification</h2>
                <p style="color:#495057;font-size:1em;padding:0 8%;">Thanks for choosing to secure your ABC Job portal account by providing an email address. If you submitted this request, please click the button below to complete the verification process:
                </p>
                    <a class="btn my-2 my-sm-0" style="background: #afeeee;" type="submit" role="button" href="register_success"><i class="fa fa-envelope"></i> Confirm</a>
                <p style="color:#495057;font-size:1em;padding:0 8%;">Thank you,
                </p>
                <p style="color:#495057;font-size:1em;padding:0 8%;">ABC Jobs Pte Ltd
                </p>
            </div>

        </div>

    </div>


    <!-- footer -->
   
<jsp:include page="footer.jsp"></jsp:include>
    <!--  end footer -->

</body>

</html>