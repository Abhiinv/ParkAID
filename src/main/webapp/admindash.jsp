<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<title>Auto PARK</title>
</head>
<body>

	<p class="text-center">
		ADMIN BOARD<br>
	</p>


	<div class="message">
		<div class="container">
			<h2 class="text-center">ADD PLACES</h2>
			<br> <br> <br>


			<div class="row">
				<div class="col-12 text-center">
					<form action="./InsertPlaces.jsp" method="post">
						<div class="title"></div>
						<div class="info">
							Location <input class="fname" type="text" name="Locate" >&nbsp

							Date <input class="fname" type="date" name="Date" >&nbsp<br><br>


							Price <input class="fname" input
								type="number" step="any" name="Price" >&nbsp<br><br>
							
							Image <input class="fname" type="text" name="Image" placeholder="Enter URl" >&nbsp<br><br>
                            Worker Name Assigned <input class="fname" type="text" name="WorkerName" >&nbsp 
                            
                          
 							ImageWorker <input class="fname" type="text" placeholder="Enter URl" name="TmageWorker" > <br>
							<br>
							NO OF SLOTS FOR TIME DURATION - 
							<br>
							07-08 &nbsp<input class="fname" type="number" name="7-8" required> <br>
							08-09 &nbsp<input class="fname" type="number" name="8-9" required> <br>
							09-10 &nbsp<input class="fname" type="number" name="9-10" required> <br>
							10-11 &nbsp<input class="fname" type="number" name="10-11" required> <br>
							11-12 &nbsp<input class="fname" type="number" name="11-12" required> <br>
							12-13 &nbsp<input class="fname" type="number" name="12-13" required> <br>
							13-14 &nbsp<input class="fname" type="number" name="13-14" required> <br>
							14-15 &nbsp<input class="fname" type="number" name="14-15" required> <br>
							15-16 &nbsp<input class="fname" type="number" name="15-16" required> <br>
							16-17 &nbsp<input class="fname" type="number" name="16-17" required> <br>
							<br>
						</div>
						<br>
						<button type="submit">Submit</button>
					</form>

					<div class="message">
						<div class="container">
							<h2 class="text-center">REMOVE PLACES</h2>
							<br> <br> <br>
							<form action="./DeletePlaces.jsp" method="post">
								<div class="title"></div>
								<div class="info">
									Location <input class="fname" type="text" name="Locate"
										required>&nbsp&nbsp Date <input class="fname"
										type="date" name="Date" required> <br>
								</div>
								<br>
								<button type="submit">Submit</button>
							</form>
							<br> <br> <br> <br>
							
							<h2 class="text-center">ADD WORKERS</h2>
							<br> <br> <br>
							<form action="./AddWorkers.jsp" method="post">
								<div class="title"></div>
								<div class="info">
									Worker Name <input class="fname" type="text" name="WorkerName"
										required> ImageWorker <input class="fname"
										type="text" name="Image" required> 
										Worker Email <input class="fname" type="text" name="WorkerEmail"
										required>
								</div>
								<br>
								<button type="submit">Submit</button>
							</form>
							<br> <br> <br> <br>
							<h2 class="text-center">REMOVE WORKERS</h2>
							<br> <br> <br>
							<form action="./RemoveWorker.jsp" method="post">
								<div class="title"></div>
								<div class="info">
										Worker Email <input class="fname" type="text" name="WorkerEmailRemove"
										required>
								</div>
								<br>
								<button type="submit">Submit</button>
							</form>
							<br> <br> <br> <br>
							<div class="row">
								<div class="col-12 text-center">
									<form action="./Location.jsp" method="post">
										<div class="title"></div>
								</div>
							</div>
						</div>
					</div>
					
						<h2 class="text-center">Worker List</h2>
							<br> <br> <br>
					<%
					try {


						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/users", "root", "Ansh2514@");
						Statement st = conn.createStatement();
						ResultSet i = st.executeQuery("SELECT * from workers ");
						out.println("<table style='width:100%'><tr><th>WorkerName</th><th>WorkerRating</th><th>Email</th><th>Password</th></tr>");
						while(i.next()) {
							String str1 = i.getString("WorkerName");
							String str2 = i.getString("WorkerRating");
							String str3 = i.getString("Email");
							String str4 = i.getString("Pass");
							
							out.println("<tr><th>"+str1+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th></tr>");
							
						}
						
						out.println("</table>");
					}
					
					catch (Exception e) {
						System.out.println(e.toString());
					}
					
					%>
						<br> <br> <br>
						<h2 class="text-center">Location List</h2>
						<br> <br> <br>
					<%
					try {


						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/users", "root", "Ansh2514@");
						Statement st = conn.createStatement();
						ResultSet i = st.executeQuery("SELECT * from parkingslots ");
						out.println("<table style='width:100%'><tr><th>Location</th><th>Date</th><th>Price</th><th>WorkerAssigned</th></tr>");
						while(i.next()) {
							String str1 = i.getString("location");
							String str2 = i.getString("dateofEvent");
							String str3 = i.getString("price");
							String str4 = i.getString("Worker");
					  		out.println("<tr><th>"+str1+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th></tr>");
							
						}
						
						out.println("</table>");
					}
					
					catch (Exception e) {
						System.out.println(e.toString());
					}
					
					%>
  					 
  					 <br> <br> <br> <br> <br> <br>
					





					
</body>
</html>