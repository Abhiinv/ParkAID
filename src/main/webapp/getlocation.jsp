<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*" %>
<!--

=========================================================
* Now UI Dashboard - v1.5.0
=========================================================

* Product Page: https://www.creative-tim.com/product/now-ui-dashboard
* Copyright 2019 Creative Tim (http://www.creative-tim.com)

* Designed by www.invisionapp.com Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Now UI Dashboard by Creative Tim</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<!-- CSS Files -->
<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="black">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text logo-mini">
					OOPS </a> <a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Project </a>
			</div>
			<div class="sidebar-wrapper" id="sidebar-wrapper">
				<ul class="nav">
					<li><a href="./dashboard.html"> 
							Dashboard
					</a></li>
					<li><a href="./map.html"> 
							My Booking
					</a></li>
					<li><a href="./icons.html"> 
							Waiting List
					</a></li>
					<li><a href="./notifications.jsp"> 
							My Wallet
					</a></li>
					
					<li><a href="./Cancellation.jsp"> 
							Cancellation
					</a></li>
					<li class="active "><a href="./location.jsp"> 
							Search Location
					</a></li>
					<li><a href="./typography.html"> 
							Review us
					</a></li>
					<li class="active-pro"><a href="./upgrade.html"> 
							Upgrade to PRO
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">Locations</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<form>
							<div class="input-group no-border">
							<%
							Class.forName("com.mysql.jdbc.Driver");
                    		Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/users", "root", "Ansh2514@");
                    		Statement st=conn.createStatement();
                    		ResultSet  i =st.executeQuery("SELECT * from parkings ");
							
                    			
								
								while(i.next()){
								String locate = i.getString("location");
								
								}
								%>
								
								

							</div>
						</form>

					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Locations</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary">
											<th class="text-center">Location</th>
											<th class="text-center">Date</th>
											<th class="text-center">Duration(hrs)</th>
											<th class="text-center">Worker Assigned</th>
											<th class="text-center">Worker Rating</th>
										
											<th class="text-center">Car Repair</th>
											<th class="text-center">Car Wash</th>
											<th class="text-center">Fuel Refill</th>
											<th class="text-center">Slots</th>
											
											<th class="text-center">Price/Slot</th>
										</thead>
										<tbody>
											<%
										
											String Locate = (String)request.getParameter("location");
											String Date = (String)request.getParameter("Date");
											String In = (String)request.getParameter("Checkin");
											String Out = (String)request.getParameter("Checkout");
											
											Class.forName("com.mysql.jdbc.Driver");
				                    		Connection conn1 = DriverManager.getConnection("jdbc:mysql:// localhost:3306/users", "root", "Ansh2514@");
				                    		Statement st1=conn.createStatement();
				                    		ResultSet  i1 =st.executeQuery("SELECT * from parkings where location = '" +Locate+ "'  and date = '"+ Date +"'" );
				                    		out.println("<tr>");
				                    		int ar[] = new int[10];
				                    	
				                    		String price="";
			                    			String Location="";
			                    			String date="";
			                    			String Worker="";
			                    			String Rating="";
			                    			String a78="0";
			                    			String a89="0";
			                    			String a910="0";
			                    			String a1011="0";
			                    			String a1112="0";
			                    			String a1213="0";
			                    			String a1314="0";
			                    			String a1415="0";
			                    			String a1516="0";
			                    			String a1617="0";
			                    			String CR="0";
			                    			String CW="0";
			                    			String FR="0";
			                    			int Duration = 0;
			                    			int slots =0;
			                    			
				                    		if(i1.next()){
				                    			price = i1.getString("price");
				                    			Location = i1.getString("location");
				                    			date =  i1.getString("date");
				                    			Worker =  i1.getString("Worker");
				                    			Class.forName("com.mysql.jdbc.Driver");
					                    		Connection conn2 = DriverManager.getConnection("jdbc:mysql:// localhost:3306/users", "root", "Ansh2514@");
					                    		Statement st2=conn2.createStatement();
					                    		ResultSet  i2=st2.executeQuery("SELECT * from workers where fname= '" +Worker+ "'" );
					                    		if(i2.next())
				                    		    Rating =  i2.getString("WorkerRating");
					                    		else{
					                    		Rating =  "0";	
					                    		
					                    		}
					                    		CR =  i2.getString("CarRepair");
					                    		CW =  i2.getString("CarWash");
					                    		FR =  i2.getString("FuelRefill");
				                    			a78 =  i1.getString("a78");
				                    			ar[0]=Integer.parseInt(a78);
				                    			a89 =  i1.getString("a89");
				                    			ar[1]=Integer.parseInt(a89);
				                    			a910 =  i1.getString("a910");
				                    			ar[2]=Integer.parseInt(a910);
				                    			a1011 =  i1.getString("a1011");
				                    			ar[3]=Integer.parseInt(a1011);
				                    			a1112 =  i1.getString("a1112");
				                    			ar[4]=Integer.parseInt(a1112);
				                    			a1213 =  i1.getString("a1213");
				                    			ar[5]=Integer.parseInt(a1213);
				                    			a1314 =  i1.getString("a1314");
				                    			ar[6]=Integer.parseInt(a1314);
				                    			a1415 =  i1.getString("a1415");
				                    			ar[7]=Integer.parseInt(a1415);
				                    			a1516 =  i1.getString("a1516");
				                    			ar[8]=Integer.parseInt(a1516);
				                    			a1617 =  i1.getString("a1617");
				                    			
				                    			ar[9]= Integer.parseInt(a1617);
				                    			
				                    			System.out.println(In);
				                    			int inTime=Integer.parseInt(In);
				                    			int outTime=Integer.parseInt(Out);
				                    			int min = ar[inTime-8];  
				                    		        //Loop through the array  
				                    		        for (int i3 = inTime-8; i3 <= outTime-8; i3++) {  
				                    		            //Compare elements of array with min  
				                    		           if(ar[i3] <min)  
				                    		               min = ar[i3];  
				                    		        }  
				                    			slots = min;
				                    			Duration = (outTime - inTime +1);
				                    			request.getSession().setAttribute("Location",Locate);
				                    			request.getSession().setAttribute("date",Date);
				                    			request.getSession().setAttribute("Slots",slots);
				                    			request.getSession().setAttribute("Intime",inTime);
				                    			request.getSession().setAttribute("Outtime",outTime);
											}
				                    		out.println("</tr>");
											
											
												out.println("<td class='text-center'>"+Location+"</td>");
												out.println("<td class='text-center'>"+date+"</td>");
												out.println("<td class='text-center'>"+Duration+"</td>");
												out.println("<td class='text-center'>"+Worker+"</td>");
												out.println("<td class='text-center'>"+Rating+"</td>");
												if(CR.equals("1"))
												out.println("<td class='text-center'>Available</td>");
												else{
													out.println("<td class='text-center'>Unvailable</td>");	
												}
												
												if(CW.equals("1"))
													out.println("<td class='text-center'>Available</td>");
												else{
														out.println("<td class='text-center'>Unvailable</td>");	
													}
												
												if(FR.equals("1"))
													out.println("<td class='text-center'>Available</td>");
												else{
														out.println("<td class='text-center'>Unvailable</td>");	
												}
												
												
												out.println("<td class='text-center'>"+slots+"</td>");
												
												out.println("<td class= 'text-center' >"+price+"</td>");
												
											%>	
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
												
						
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">No Slots available currently</h4>
							</div>
							<div class="card-body">
								<div>
								<form action = "waitingList.jsp" method = "post">
								<%
									if(slots <= 0 ){
										out.println("No of slots 0.25 AutoBIT /slot&nbsp&nbsp<input class='fname' type='number' step =1 min=1 name='waitingPAY'  required>");
										out.println("<br><br>");
										out.println("Waiting List??<br><br><button type='submit'>Enroll Me</button>");	
									}
									else{
										out.println("slots available");
									}
								%>
							
											
								
								
								</form>
						</div>
							</div>
						</div>
						
						
						
						
						
						
						
						
						
						
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Confirm BOOKING</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary">
										
										</thead>
										<tbody>
									<form action="./MakeFinalPayment.jsp" method="post">
								
										<div style ='color:black; text-align:center'>
										<% 
										
										out.println("No of slots 0.25 AutoBIT /slot&nbsp&nbsp<input class='fname' type='number' step =1 min=1 max = "+ slots +" name='valuePAY'  required>");
										out.println("<br><br>");
										if(CR.equals("1"))
out.println("<input type='checkbox' id='CR' name='CR' value='1'><label for='CR'> &nbsp&nbsp(0.05 AutoBIT) Car Repair</label><br>");
											
											
											if(CW.equals("1"))
out.println("<input type='checkbox' id='CW' name='CW' value='1'><label for='CW'> &nbsp&nbsp(0.01 AutoBIT) Car Wash</label><br>");
											
											
											if(FR.equals("1"))
out.println("<input type='checkbox' id='FR' name='FR' value='1'><label for='FR'> &nbsp&nbsp(0.08 AutoBIT) Fuel Refill</label><br>");
											
										%>
										<br><br>
											<%
											if(slots != 0){
											out.println("<button type='submit'>Proceed to final Booking </button>");
											}
											else{
												out.println("Unavailable :(");
											}
											%>
										<br><br><br><br>
											<a href="location.jsp">Cancel </a>	
									</div>
								
							      </form>	
		
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				
				</div>
			</div>
			
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="../assets/js/core/jquery.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="../assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../assets/js/now-ui-dashboard.min.js?v=1.5.0"
		type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script src="../assets/demo/demo.js"></script>
</body>

</html>