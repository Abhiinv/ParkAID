<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String finame     = request.getParameter("fname");
String laname     = request.getParameter("lname");
String user    = request.getParameter("username");
String email    = request.getParameter("email");
String phone    = request.getParameter("pno");
String Pass     = request.getParameter("password");



try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/users", "root", "Ansh2514@");
	Statement st = conn.createStatement();
	
	Statement st1 = conn.createStatement();
		int i1 = st.executeUpdate(
				"Insert into workers (fname , lname , email, rating , password,username,pno ) values( " + "'" +  finame + "',"  + "'" + laname + "',"  + "'" + email + "', 4 ," + "'" + Pass + "',"  + "'" + user + "',"  + "'" + phone + "'"  + ")" );
		
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = admindash.jsp\" /><body><b>Worker added succesfully" + "</b></body></html>");

	
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>