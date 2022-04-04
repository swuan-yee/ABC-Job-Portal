<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>ABC Job portal</title>
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
    <!-- end of external css for footer -->
    <style>
     .main {
            width: 100%;
            margin: 70px auto;
        }
        /* Bootstrap 4 text input with search icon */
        
        .has-search .form-control {
            padding-left: 2.375rem;
        }
        
        .has-search .form-control-feedback {
            position: absolute;
            z-index: 2;
            display: block;
            width: 2.375rem;
            height: 2.375rem;
            line-height: 2.375rem;
            text-align: center;
            pointer-events: none;
            color: #aaa;
        }

    </style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


 	<%
      	if(session.getAttribute("email")!=null){
      		%>
			<%= session.getAttribute("email") %>
      		
      		<%
      	}
      
	%>
      
	<!-- body session -->
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
                                <a class="btn btn-secondary" type="button" href="">
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
    <!--popular jobs-->
    <div class="center">

        <h2><b>Popular Jobs</b></h2>
    </div>
    <ul class="card-list">

        <li class="card">
            <a class="card-image" href="" target="_blank" style="background-image: url(assets/tele.png);" data-image-full="assets/tele.png">
                <img src="assets/tele.png" alt="Telecommunication" />
            </a>
            <a class="card-description" href="" target="_blank">
                <h6>Telecommunication</h6>

            </a>
        </li>

        <li class="card">
            <a class="card-image" href="" target="_blank" style="background-image: url(assets/accounting.jpg);" data-image-full="assets/accounting.jpg">
                <img src="assets/accounting.jpg" alt="Accounting" />
            </a>
            <a class="card-description" href="" target="_blank">
                <h6>Accounting/Finance</h6>

            </a>
        </li>

        <li class="card">
            <a class="card-image" href="" target="_blank" style="background-image: url(assets/healthcare.jpg);" data-image-full="assets/healthcare.jpg">
                <img src="assets/healthcare.jpg" alt="Healthcare" />
            </a>
            <a class="card-description" href="" target="_blank">
                <h6>Health care</h6>

            </a>
        </li>

        <li class="card">
            <a class="card-image" href="" target="_blank" style="background-image: url(assets/edu_train.jpg);" data-image-full="assets/edu_train.jpg">
                <img src="assets/edu_train.jpg" alt="Education training" />
            </a>
            <a class="card-description" href="" target="_blank">
                <h6>Education Training</h6>

            </a>
        </li>

        <li class="card">
            <a class="card-image" href="" target="_blank" style="background-image: url(assets/trans.jpg);" data-image-full="assets/trans.jpg">
                <img src="assets/trans.jpg" alt="Transportation" />
            </a>
            <a class="card-description" href="" target="_blank">
                <h6>Transportation/Logistics</h6>

            </a>
        </li>

        <li class="card">
            <a class="card-image" href="" target="_blank" style="background-image: url(assets/automotive.jpg);" data-image-full="assets/automotive.jpg">
                <img src="assets/automotive.jpg" alt="Automotive" />
            </a>
            <a class="card-description" href="" target="_blank">
                <h6>Automotive Jobs</h6>

            </a>
        </li>

        <li class="card">
            <a class="card-image" href="" target="_blank" style="background-image: url(assets/construction.jpg);" data-image-full="assets/construction.jpg">
                <img src="assets/construction.jpg" alt="Construction" />
            </a>
            <a class="card-description" href="" target="_blank">
                <h6>Construction/Facilities</h6>

            </a>
        </li>

        <li class="card">
            <a class="card-image" href="" target="_blank" style="background-image: url(assets/food.jpg);" data-image-full="assets/food.jpg">
                <img src="assets/food.jpg" alt="food" />
            </a>
            <a class="card-description" href="" target="_blank">
                <h6>Restaurant/Food Service</h6>

            </a>
        </li>

    </ul><br>

    <!--recent jobs-->
    <div class="center">
        <h2><b>Recent Jobs</b></h2>
    </div>
    <div class="container ">
        <div class="row mt-1">
            <div class="col-md-4">
                <div class="p-card bg-white p-2 rounded px-3">
                    <div class="d-flex align-items-center credits"><img src="https://i.imgur.com/hlz6G90.png" width="16px"><span class="text-black-50 ml-2">1 credits</span></div>
                    <h5 class="mt-2">Strategic Insights Manager</h5><span class="badge badge-danger py-1 mb-2">Full time</span>
                    <p>$600</p><span class="d-block mb-5">Myanmar Japan Tobacco Co., Ltd | Yangon</span>
                    <a href="">View More</a>

                    <div class="d-flex justify-content-between stats">
                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">1 months ago</span></div>

                        <div class="d-flex flex-row align-items-center">
                            <div class="profiles"><img class="rounded-circle" src="https://i.imgur.com/4nUVGjW.jpg" width="30"><img class="rounded-circle" src=" https://i.imgur.com/GHCtqgp.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/UL0GS75.jpg" width="30"></div>
                            <span class="ml-3">12</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="p-card bg-white p-2 rounded px-3">
                    <div class="d-flex align-items-center credits"><img src="https://i.imgur.com/hlz6G90.png" width="16px"><span class="text-black-50 ml-2">2 credits</span></div>
                    <h5 class="mt-2">Digital Media Deputy Manager</h5><span class="badge badge-danger py-1 mb-2">Full time</span>
                    <p>$1200</p><span class="d-block mb-5">MPT Myanmar | Yangon
                    </span>
                    <a href="">View More</a>
                    <div class="d-flex justify-content-between stats">
                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">2 days ago</span></div>
                        <div class="d-flex flex-row align-items-center">
                            <div class="profiles"><img class="rounded-circle" src="https://i.imgur.com/KcxKRBm.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/DukIAef.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/UL0GS75.jpg" width="30"></div>
                            <span class="ml-3">16</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-card bg-white p-2 rounded px-3">
                    <div class="d-flex align-items-center credits"><img src="https://i.imgur.com/hlz6G90.png" width="16px"><span class="text-black-50 ml-2">2 credits</span></div>
                    <h5 class="mt-2">Backend Developer</h5><span class="badge badge-primary py-1 mb-2">Part-time</span>
                    <p>$1000</p><span class="d-block mb-5">Super Seven Stars Co.,Ltd | Yangon, Myanmar</span>
                    <a href="">View More</a>
                    <div class="d-flex justify-content-between stats">
                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">1 week ago</span></div>
                        <div class="d-flex flex-row align-items-center">
                            <div class="profiles"><img class="rounded-circle" src="https://i.imgur.com/KcxKRBm.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/DukIAef.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/UL0GS75.jpg" width="30"></div>
                            <span class="ml-3">16</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-card bg-white p-2 rounded px-3">
                    <div class="d-flex align-items-center credits"><img src="https://i.imgur.com/hlz6G90.png" width="16px"><span class="text-black-50 ml-2">2 credits</span></div>
                    <h5 class="mt-2">Science Teacher</h5><span class="badge badge-danger py-1 mb-2">Full time</span>
                    <p>$800</p><span class="d-block mb-5">EMPS Group of Schools | Yangon
                    </span>
                    <a href="">View More</a>
                    <div class="d-flex justify-content-between stats">
                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">4 days ago</span></div>
                        <div class="d-flex flex-row align-items-center">
                            <div class="profiles"><img class="rounded-circle" src="https://i.imgur.com/KcxKRBm.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/DukIAef.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/UL0GS75.jpg" width="30"></div>
                            <span class="ml-3">16</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-card bg-white p-2 rounded px-3">
                    <div class="d-flex align-items-center credits"><img src="https://i.imgur.com/hlz6G90.png" width="16px"><span class="text-black-50 ml-2">2 credits</span></div>
                    <h5 class="mt-2">OPEX Manager</h5><span class="badge badge-danger py-1 mb-2">Full time</span>
                    <p>MMK 6,000,000 - 8,000,000</p><span class="d-block mb-5">Gold Yacht Company | Yangon
                    </span>
                    <a href="">View More</a>
                    <div class="d-flex justify-content-between stats">
                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">1 days ago</span></div>
                        <div class="d-flex flex-row align-items-center">
                            <div class="profiles"><img class="rounded-circle" src="https://i.imgur.com/KcxKRBm.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/DukIAef.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/UL0GS75.jpg" width="30"></div>
                            <span class="ml-3">16</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-card bg-white p-2 rounded px-3">
                    <div class="d-flex align-items-center credits"><img src="https://i.imgur.com/hlz6G90.png" width="16px"><span class="text-black-50 ml-2">2 credits</span></div>
                    <h5 class="mt-2">Procurement Manager</h5><span class="badge badge-danger py-1 mb-2">Full time</span>
                    <p>MMK 3,500,000 - 4,000,000</p><span class="d-block mb-5">MyJobs | Yangon
                    </span>
                    <a href="">View More</a>
                    <div class="d-flex justify-content-between stats">
                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">1 week ago</span></div>
                        <div class="d-flex flex-row align-items-center">
                            <div class="profiles"><img class="rounded-circle" src="https://i.imgur.com/KcxKRBm.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/DukIAef.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/UL0GS75.jpg" width="30"></div>
                            <span class="ml-3">16</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><br><br>

    <!--trending search -->
    <div class="center">
        <h2><b>Trending Searches</b></h2>
    </div>
    <div class="container center">
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Accounting</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Customer Service</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Engineering</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">IT</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Logistics</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Marketing</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Business Development</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Teaching</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Part Time</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Digital</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Full Time</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Home Based</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">HR</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Management Trainee</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">PMET</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Security</a>
        <a class="bubble-link" data-gtm="homepage|recent-search-clicked" href="">Work From Home</a>
    </div><br>

    <!--our partners -->

    <div class="content" id="">
        <div class="center">
            <div class="top-sub-title"></div>
            <h2><b>Our Partners</b></h2>
        </div>
        <div class="full center mobile-no-center pb0">
            <div class="horizontal-scroll">
                <div class="horizontal-scroll-content" style="width: auto;">
                    <a class="img horizontal-scroll-element wauto" href="" style="height: 90px;"><img alt="Goldtech Resources Pte Ltd   Default Jobs" src="https://jobscentral.com.sg/cdn/optimized/JC-production/9cc96418e45df6694afbed379ad001f5.png">
                    </a>
                    <a class="img horizontal-scroll-element wauto" href="" style="height: 90px;"><img alt="Creative Eateries Jobs" src="https://jobscentral.com.sg/cdn/optimized/JC-production/e062375fe11171c2c22d4bf66cb86064.jpg">
                    </a>

                    <a class="img horizontal-scroll-element wauto" href="" style="height: 90px;"><img alt="The Privé Group Jobs" src="https://jobscentral.com.sg/cdn/optimized/JC-production/9803533ae9e0e1302280b4d918964d9c.jpg">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- end of home -->



<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>