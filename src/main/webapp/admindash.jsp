<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles.css">
    <title>Dashboard</title>
</head>
<body>
<style>
.viewport-max {
    min-height: 100vh;
}
.sidebar {
    border-right: 1px solid rgba(0, 0, 0, .2);
}

.info{
    color: black;
}

.left {
    position: absolute;
    left: 0px;
    width: 300px;
    padding: 10px;
}

.right {
    position: absolute;
    right: 0px;
    width: 300px;
    padding: 10px;
}

.heading {
    padding: 10px;
    background-color: #0077B5;
}

.first{
    margin-left: 35px;
    margin-right: 8px;
}

.second{
    margin-left: 450px;
    margin-right: 8px;
}

.last{
    margin-left: 350px;
    margin-right: 8px;
}

.butt{
    margin-right: 12px;
    margin-bottom: 10px;
}</style>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <h1 class="text-warning">ADMIN PANEL</h1>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarMenu" aria-controls="navbarMenu"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse collapse justify-content-end" id="navbarMenu">
                <ul class="navbar-nav d-md-none ">
                    <li class="nav-item">
                        <a class="nav-link text-muted active" href="#">
                            <i class="fas fa-home mr-2"></i>Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item bg-light">
                        <a class="nav-link" href="#">
                            <i class="mr-2 fas fa-list "></i> App
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#">
                            <i class="mr-2 fas fa-envelope-open"></i> MailBOX
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#">
                            <i class="mr-2 fas fa-desktop"></i> UI Elements
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="mr-2 fas fa-asterisk"></i> UI Elements
                        </a>
                    </li>
                </ul>


                <ul class="navbar-nav">
                    <li class="nav-item mr-2">
                        <a class="nav-link text-muted" href="#">
                            <i class="fas fa-search "></i>
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item mr-2">
                        <a class="nav-link" href="#">
                            <i class="fas fa-bell "></i>
                        </a>
                    </li>
                    <li class="nav-item mr-2">
                        <a class="nav-link" href="#">
                            <i class="fas fa-comment"></i>
                        </a>
                    </li>
                    <li class="nav-item mr-5">
                        <a class="nav-link" href="#">
                            <img src="https://cdn1.iconfinder.com/data/icons/avatar-2-2/512/Manager-512.png" width="30" alt="" class=" img-fluid rounded-circle">
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#signOutModal">
                            <i class="fas fa-sign-out-alt"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section id="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2 sidebar d-flex flex-column list-group list-group-flush viewport-max ">
                    <a href="#" class="list-group-item list-group-item-action text-center">
                        <img src="https://cdn1.iconfinder.com/data/icons/avatar-2-2/512/Programmer-512.png" alt="" class="img-fluid rounded-circle mr-2"> Big B</a>
                    <a href="#add_places" class="list-group-item list-group-item-action menu-items">
                        <i class="fas fa-plus-circle mr-2 fa-lg"></i>Add Places</a>
                    <a href="#remove_places" class="list-group-item list-group-item-action menu-items">
                        <i class="fas fa-minus-circle mr-2 fa-lg"></i>Remove Places</a>
                    <a href="#add_workers" class="list-group-item list-group-item-action menu-items">
                        <i class="fas fa-plus-circle mr-2 fa-lg"></i>Add Workers</a>
                    <a href="#remove_workers" class="list-group-item list-group-item-action menu-items">
                        <i class="fas fa-minus-circle mr-2 fa-lg"></i>Remove Workers</a>
                    <a href="#workers_list" class="list-group-item list-group-item-action menu-items">
                        <i class="fas fa-list-alt mr-2 fa-lg"></i>Workers List</a>
                    <a href="#location_list" class="list-group-item list-group-item-action menu-items">
                        <i class="fas fa-list-alt mr-2 fa-lg"></i>Location List</a>
                </div>

                <div class="col-lg-10 py-10 bg-light my-3">
                    <div class="row inform-cards">
                        <div class="col-sm-6 col-md-4 col-lg p-4">

                            <div class="card text-white my-2 rounded">
                                <div class="row">
                                    <div class="col">
                                        <h2 id="add_places" class="heading text-white">&nbsp Add Places </h2>
                                    </div>
                                </div>
                                <br>
                                <form action="./insertplace.jsp" method="post">
                                    <div class="title"></div>
                                    <div class="info">
                                        <span class="first">
                                            Location
                                        </span>
                                        <input class="fname" type="text" name="Locate" >
                                        <span class="second">
                                            &nbspDate
                                        </span>
                                        <input class="fname" type="date" name="Date" ><br><br>
                                        <span class="first">
                                            Price
                                        </span>
                                        <input class="fname" input
                                            type="number" step="any" name="Price" >
                                        <span class="second">
                                        <span class="first">
                                            Worker Name Assigned
                                        </span>
                                        <input class="fname" type="text" name="WorkerName" >&nbsp 
                                        <br>
                                        <br>
                                        <span class="first">
                                        </span>
                                        NO OF SLOTS FOR TIME DURATION - 
							<br>
									05-06 &nbsp<input class="fname" type="number" name="5-6" required> <br>
									06-07 &nbsp<input class="fname" type="number" name="6-7" required> <br>
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
									</span>                               
                                    <button type="submit" class="butt float-right">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="row inform-cards">
                        <div class="col-sm-6 col-md-4 col-lg p-4">
                            <div class="card text-white my-2 rounded">
                                <div class="row">
                                    <div class="col">
                                        <h2 id= "remove_places" class="heading text-white">&nbsp Remove Places</h2>
                                    </div>
                                </div>
                                <br>
                                <form action="./deleteplace.jsp" method="post">
                                    <div class="title"></div>
                                    <div class="info">
                                        <span class="first">
                                            Location
                                        </span>
                                        <input class="fname" type="text" name="Locate"
                                            required>
                                        <span class="second">
                                            Date
                                        </span>
                                        <input class="fname"
                                            type="date" name="Date" required> <br>
                                    </div>
                                    <br>
                                    <button type="submit" class="butt float-right">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>


                    <div class="row inform-cards">
                        <div class="col-sm-6 col-md-4 col-lg p-4">
                            <div class="card text-white my-2 rounded">
                                <div class="row">
                                    <div class="col">
                                        <h2 id="add_workers" class="heading text-white">&nbsp Add Workers</h2>
                                    </div>
                                </div>
                                <br>
                                <form action="./addworker.jsp" method="post">
                                    <div class="title"></div>
                                    <div class="info">
                                        <span class="first">
                                            First Name
                                        </span>
                                        <input class="box fname" type="text" name="fname"required>
                                        <span class="first">
                                            Last Name
                                        </span>
                                        <input class="box fname" type="text" name="lname"required>
                                        <span class="first">
                                            User Name
                                        </span>
                                        <input class="box fname" type="text" name="username"required>
                                        <span class="last">
                                            &nbsp&nbspWorker Email
                                        </span>
                                        <input class="fname" type="email" name="email"required>
                                        <span class="first">
                                            Phone Number
                                        </span>
                                        <input class="box fname" type="text" name="pno"required>
                                        <span class="first">
                                            Password
                                        </span>
                                        <input class="box fname" type="password" name="password"required>
                                    </div>
                                    <br>
                                    <button type="submit" class="butt float-right">Submit</button>
                                </form>                  
                            </div>
                        </div>
                    </div>


                    <div class="row inform-cards">
                        <div class="col-sm-6 col-md-4 col-lg p-4">
                            <div class="card text-white my-2 rounded">
                                <div class="row">
                                    <div class="col">
                                        <h2 id="remove_workers" class="heading text-white">&nbsp Remove Workers</h2>
                                    </div>
                                </div>
                                <br>
                            <form action="./removeworker.jsp" method="post">
                                <div class="title"></div>
                                <div class="info">
                                    <span class="first">
                                        Worker Email
                                    </span>
                                        <input class="fname" type="email" name="WorkerEmailRemove"
                                        required>
                                </div>
                                <br>
                                <button type="submit" class="butt float-right">Submit</button>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 text-center">
                            <form action="./Location.jsp" method="post">
                                <div class="title"></div>
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
						out.println("<table style='width:100%'><tr><th>First Name</th><th>Last Name</th><th>Rating</th><th>Email</th><th>Phone Number</th></tr>");
						while(i.next()) {
							String str1 = i.getString("fname");
							String str5 = i.getString("lname");
							String str2 = i.getString("rating");
							String str3 = i.getString("email");
							String str4 = i.getString("pno");
							
							out.println("<tr><th>"+str1+ "</th><th>"+str5+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th></tr>");
							
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
						ResultSet i = st.executeQuery("SELECT * from parkings ");
						out.println("<table style='width:100%'><tr><th>Location</th><th>Date</th><th>Price</th><th>WorkerAssigned</th></tr>");
						while(i.next()) {
							String str1 = i.getString("location");
							String str2 = i.getString("date");
							String str3 = i.getString("price");
							String str4 = i.getString("worker");
					  		out.println("<tr><th>"+str1+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th></tr>");
							
						}
						
						out.println("</table>");
					}
					
					catch (Exception e) {
						System.out.println(e.toString());
					}
					
					%>
            </div>
    </section>

    <div class="modal fade" id="signOutModal" tabindex="-1" role="dialog">
        <div class="modal-dialog  modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h2>Already want to leave?</h2>
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="lead">It is sad to see you go. Please press logout to leave.</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-danger" type="button" data-dismiss="modal">Logout</button>
                    <div class="btn btn-primary" type="button">Stay</div>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"></script>
        <script src="line.js"></script>
        <script src="sample.js"></script>
        <script src="pie.js"></script>

    <script>
        window.addEventListener('load', function () {

            document.querySelector('.navbar-toggler').innerHTML = '<i class="fas fa-arrow-down"></i>';
        })

       
    </script>
</body>

</html>