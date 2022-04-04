<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html>
<html>

<head>
    <title>Result</title>
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
    <link rel="stylesheet" href="assets/index.css">
    <!-- end of external css for footer -->
    <style>
        /*for search bar with background*/
        
           /*for search bar with background*/
        
        body .search_header {
            background-image: url(assets/job01.jpg) !important;
            background-size: cover;
            padding: 190px 0 30px 0
        }
        
        .search_header {
            padding: 40px;
            margin-bottom: 22px;
            color: #87CEFA;
            text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
            background-color: #2e9df7;
            -webkit-box-shadow: 0 15px 15px -15px rgba(0, 0, 0, 0.25) inset, 0 -15px 15px -15px rgba(0, 0, 0, 0.25) inset;
            box-shadow: 0 15px 15px -15px rgba(0, 0, 0, 0.25) inset, 0 -15px 15px -15px rgba(0, 0, 0, 0.25) inset
        }
        
        .search_header form {
            position: relative;
            width: 540px;
            margin: 22px auto 0
        }
        
        span {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
            font-weight: inherit;
            font-style: inherit;
            font-size: 100%;
            font-family: inherit;
            vertical-align: baseline
        }
        
        .search_header form input[type="text"] {
            padding: 15px 20px;
            padding-right: 100px;
            border-color: transparent;
            border-radius: 4px
        }
        
        input.InputBox {
            color: #333;
            font-size: 15px;
            padding: 3px;
            margin: 0;
            width: 250px;
            background: #fff;
            border: 1px solid #999;
            border: 1px solid rgba(0, 0, 0, 0.4)
        }
        
        input[type=text] {
            box-sizing: border-box
        }
        
        .InputBox {
            display: block;
            width: 100% !important;
            padding: 6px 12px;
            font-size: 15px;
            line-height: 22px;
            border-radius: 4px
        }
        
        .search_header form input[type="submit"] {
            position: absolute;
            top: 5px;
            right: 5px;
            float: right;
            padding: 10px 25px
        }
        
        body .Button,
        body .button {
            background-color: #1268b3;
            background-image: none
        }
        
        input[type="submit"] {
            -webkit-appearance: button;
            cursor: pointer
        }
        
        .Button,
        .Button:hover,
        .Button:focus,
        .Button:active {
            text-shadow: none;
            border-color: transparent
        }
        
        .Button {
            display: inline-block;
            padding: 6px 12px;
            vertical-align: middle;
            font-size: 13px;
            font-weight: 700;
            line-height: 22px;
            text-transform: uppercase;
            border: transparent solid 1px;
            border-radius: 3px;
            -webkit-transition: -webkit-box-shadow 50ms;
            transition: -webkit-box-shadow 50ms;
            -o-transition: box-shadow 50ms;
            transition: box-shadow 50ms;
            transition: box-shadow 50ms, -webkit-box-shadow 50ms;
            -webkit-font-smoothing: inherit;
            color: #fff;
            background-color: #2e9df7;
            background-repeat: repeat-x;
            background-color: #38a2f7;
            background-image: -webkit-linear-gradient(#38a2f7, #2498f7);
            background-image: -webkit-gradient(linear, left top, left bottom, from(#38a2f7), to(#2498f7));
            background-image: -o-linear-gradient(#38a2f7, #2498f7);
            background-image: linear-gradient(#38a2f7, #2498f7)
        }
       
    </style>

</head>

<body>
    <!-- Navigation bar -->
   <jsp:include page="header.jsp"></jsp:include>


 	
    <!-- end of Navigation bar -->

    <!-- body session -->
    <!--header search -->
   <!--header search -->
    <div class="search_header">
        <div class="container">
            <h2><b>Get Jobs Fast !</b></h2>
            <h2><b>Thousands of jobs available for you anytime, anywhere.</b></h2>
            <form>
               <div class="d-flex justify-content-center px-5">
                    <div class="main">

                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for the best result...">
                            <div class="input-group-append">
                                <a class="btn btn-secondary" type="button" href="search_result">
                                    <i class="fa fa-search"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--end header search-->
    <!--end header search-->
    <!--result-->
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                <s:iterator value="userbeanList">
                    <table class="table table-hover table-striped">
                        <tbody>
                            <tr>

                                <td>
                                    <img src="https://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" class="img-circle" width="60">
                                </td>
                                <td>
                                    <h4>
                                        <b><s:property value="first_name" /></b>
                                    </h4>
                                    <a href=""><s:property value="email" /></a>
                                </td>
                                <td>User</td>
                                <td>
                                    <div class="btn-group">
                                        <button class="btn btn-default" value="left" type="button">
                                            <i class="fa fa-fw s fa-remove"></i> Remove</button>
                                        <button class="btn btn-default" value="right" type="button">
                                            <a class="fa fa-user" href="view_other_user?userid=<s:property value='user_id'/>"> View Profile</a></button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                 </s:iterator>
                </div>
            </div>
        </div>
    </div>


    <!-- end of result -->

    <!-- footer -->

<jsp:include page="footer.jsp"></jsp:include>
    <!--  end footer -->

   
</body>

</html>