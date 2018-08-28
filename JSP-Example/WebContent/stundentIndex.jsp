<%@page import="suneet.jsp.training.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Index</title>
<%!Student student = null;%>
</head>
<body>
	<%
		student = new Student("Patil", 547);
		double percentage = (student.getMarks() / 600) * 100;
	%>
	
	Using Expression Tag in JSP:<br>--------------------------------------------------<br>
	Student Name: <%=student.getName()%> <br> 
	Student Percentage: <%=percentage%>
	<br/><br/>
	<%
		out.write("<br>--------------------------------------------------"+
			"<br>Using Implicit Objects in JSP :"+
			"<br>--------------------------------------------------");
		out.write("<br> Name: " + request.getParameter("name"));
		out.write("<br> Content Type: " + response.getContentType());
		out.write("<br> Config: " + config.toString());
		out.write("<br> Server Information: " + application.getServerInfo());
	%>	
	<br/><br/>
	<%	
		out.write("<br>--------------------------------------------------"+
			"<br>Reading From Session:"+
			"<br>--------------------------------------------------");
		session.setAttribute("myname", "Suneet Patil");
		out.write("<br> Name: " + session.getAttribute("myname"));
		out.write("<br><br><br>--------------------------------------------------<br>");
	%>
	<br/><br/>
</body>
	<jsp:include page='studentInfo.jsp' />
</html>