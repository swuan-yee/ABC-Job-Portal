
<nav class="navbar navbar-expand-lg navbar-dark " style="background:linear-gradient(59deg, #3A6073, #16222A);">
	 <a class="navbar-brand " href="">
            <img src="assets/abclogo.png" alt="logo" width="90"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
    </button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">

			

			<%
				if (session.getAttribute("email") != null) {
			%>
			<li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #afeeee;color:black;" type="submit" role="button" href=""><i class="fa fa-home"></i> Home</a>
            </li>&nbsp;
            <li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #afeeee; color:black;"  type="submit" role="button" href="profile"><i class="fa fa-user"></i> Profile</a>
            </li>&nbsp;


			 <% 
			 int roleId = Integer.parseInt((String) session.getAttribute("role_id"));
			 
			 if(roleId==1){ %>
			 <li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #afeeee;color:black;" type="submit" role="button" href="manageUser"><i class="fa fa-user"></i> Manage user</a>
            </li>&nbsp;
			<%} %>
			<li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #afeeee;color:black;" type="submit" role="button" href="logout"><i class="fa fa-sign-out"></i> Logout</a>
            </li>&nbsp;
			
			
			
		

			<%
				}else{
			%>
			<li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #afeeee;" type="submit" role="button" href=""><i class="fa fa-home"></i> Home</a>
            </li>&nbsp;

			<li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #afeeee;" type="submit" role="button" href="register"><i class="fa fa-user"></i> Register</a>
            </li>&nbsp;
        	<li class="form-inline my-2 my-lg-0">
                <a class="btn my-2 my-sm-0" style="background: #afeeee;" type="submit" role="button" href="login"><i class="fa fa-sign-in"></i> Login</a>
        	</li>&nbsp;
			<%
				}
			%>
			

		</ul>
		
		<% if (session.getAttribute("email") != null) { %>
		<form class="form-inline my-2 my-lg-0" action="search">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search" name="search_keyword">
			<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
		</form>
		<% } %>
	</div>
</nav>