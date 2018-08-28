<%@page import="java.util.ArrayList"%>
<%@page import="suneet.jsp.training.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Example</title>
</head>
<body>
	<c:out value="Welcome to JSTL Example..!!!"/>
	<br><br>
	
	<c:set var="studentId" value="6523" scope="session"/>
	<c:out value="Student Id: ${studentId}"/>
	<br><br>
	
	<c:set var="marks" value="81" scope="session"/>
	<c:if test="${marks > 80}" var="visits">
		Congratulations! You got distinction!!!
	</c:if>
	
	<c:set var="gender" value="male" scope="session"/>
	<c:choose>
		<c:when test="${gender == male}">
			Person is Male..!!!
		</c:when>
		<c:otherwise>
			Person is Female..!!!
		</c:otherwise>
	</c:choose>
	<br><br>
	
	<% 
		List<Student> students = new ArrayList<Student>();
		students.add(new Student("Suneet", 45.25));
		students.add(new Student("Patil", 25.45));
	%>
	<c:set var="students" value="<%=students%>" scope="session"/>
	Student Details:<br>
	<c:out value="---------------------------"/><br>
	<c:forEach var="student" items="${students}" > 
		<c:out value = "Student Name : ${student.name}" /> <br><c:out value = "Marks : ${student.marks}"/><br><br> 
	</c:forEach>
</body>
</html>