<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <title>Successfully change password</title>
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
        body {
            background: #ffffff;
            background: linear-gradient(to bottom, #ffffff 0%, #e1e8ed 100%);
            height: auto;
            margin: 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        
        .wrapper-1 {
            width: 100%;
            height: auto;
            display: flex;
            flex-direction: column;
        }
        
        .wrapper-2 {
            padding: 30px;
            text-align: center;
        }
        
        h4 {
            font-size: 1.5em;
            letter-spacing: 3px;
            color: #5892FF;
            margin: 0;
            margin-bottom: 20px;
        }
        
        .wrapper-2 p {
            margin: 0;
            font-size: 1.3em;
            color: #aaa;
            font-family: 'Balsamiq Sans', cursive;
            letter-spacing: 1px;
        }
        
        .login {
            color: #fff;
            background: #5892FF;
            border: none;
            padding: 10px 50px;
            margin: 30px 0;
            border-radius: 30px;
            text-transform: capitalize;
            box-shadow: 0 10px 16px 1px rgba(174, 199, 251, 1);
        }
        
        @media (min-width:360px) {
            h1 {
                font-size: 4.5em;
            }
            .login {
                margin-bottom: 9px;
            }
        }
        
        @media (min-width:600px) {
            .content {
                max-width: 1000px;
                margin: 0 auto;
            }
            .wrapper-1 {
                height: initial;
                max-width: 620px;
                margin: 0 auto;
                margin-top: 50px;
                margin-bottom: 50px;
                box-shadow: 4px 8px 40px 8px rgba(88, 146, 255, 0.2);
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

    <!-- starting thank you coding session -->
    <div class=content>
        <div class="wrapper-1">
            <div class="wrapper-2">
                <h4>Successfully changed your password.</h4>
                <p>You can login now.</p>
                <button class="login" onclick="location.href='login'">
        Login Now
        </button>
            </div>
        </div>
    </div>
    <!-- end of thankyou coding session -->

    <!-- footer -->
    
<jsp:include page="footer.jsp"></jsp:include>
    <!--  end footer -->
</body>
</html>