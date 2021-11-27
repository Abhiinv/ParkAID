<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*,java.net.URL,java.net.URLEncoder,javax.net.ssl.HttpsURLConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String str = (String)request.getSession().getAttribute("OTP");
	String str_verify = request.getParameter("OTP1");

	if(str.equals(str_verify)){
		String email=(String)request.getSession().getAttribute("EMAIL_VIA_REGISTER");
		String fname=(String)request.getSession().getAttribute("FNAME_VIA_REGISTER");
		String lname=(String)request.getSession().getAttribute("LNAME_VIA_REGISTER");
		String uname=(String)request.getSession().getAttribute("UNAME_VIA_REGISTER");
		String number=(String)request.getSession().getAttribute("NUMBER_VIA_REGISTER");
		String register=(String)request.getSession().getAttribute("REGISTER_VIA_REGISTER");
		String address=(String)request.getSession().getAttribute("ADDRESS_VIA_REGISTER");
		String password=(String)request.getSession().getAttribute("PASSWORD_VIA_REGISTER");
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/users", "root", "Ansh2514@");
		Statement st = conn.createStatement();
		int i1 = st.executeUpdate(
		"Insert into users(FirstName,LastName,UserName,Email,Phone,Registration,Address, Pass ) values(" + "'"
				+ fname + "'," + "'" + lname + "'," + "'" + uname + "'," + "'" + email + "'," + "'" + number
				+ "'," + "'" + register + "'," + "'" + address + "'," + "'" + password + "'" + ")");
		out.println("Welcome, directing you to userBoard.");
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = UserBoard.jsp\" /><body><b>" + "</b></body></html>");
	}
	else{
		
		out.println("Wrong OTP generated, killing previous sessions, enter a new one");
		request.getSession().invalidate();
		request.getSession().setAttribute("OTP","invalidating");
		request.getSession().setAttribute("EMAIL_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("FNAME_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("LNAME_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("UNAME_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("NUMBER_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("REGISTER_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("ADDRESS_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("PASSWORD_VIA_REGISTER","invalidating");
		request.getSession().setAttribute("EMAIL_VIA_LOGIN", "invalidating");
	
		
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = default.jsp\" /><body><b>" + "</b></body></html>");
	}
	
	%>
</body>
</html>