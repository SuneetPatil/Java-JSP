<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expression Language</title>
</head>
<body>
	<TABLE BORDER=1 ALIGN="CENTER">
		<TR>
			<TH CLASS="COLORED" COLSPAN=2>Arithmetic Operators</TH>
		</TR>
		<TR>
			<TH>Expression</TH>
			<TH>Result</TH>
		</TR>
		<TR ALIGN="CENTER">
			<TD>\${3+2-1}</TD>
			<TD>${3+2-1}</TD>
		</TR>	
		<TR ALIGN="CENTER">
			<TD>\${"1"+2}</TD>
			<TD>${"1"+2}</TD>
		</TR>	
		<TR ALIGN="CENTER">
			<TD>\${1 + 2*3 + 3/4}</TD>
			<TD>${1 + 2*3 + 3/4}</TD>
		</TR>	
		<TR ALIGN="CENTER">
			<TD>\${3%2}</TD>
			<TD>${3%2}</TD>
		</TR>
	</TABLE>	
	<br/><br/>
	<TABLE BORDER=1 ALIGN="CENTER">
		<TR>
			<TH CLASS="COLORED" COLSPAN=2>Relational Operators</TH>
		</TR>
		<TR>
			<TH>Expression</TH>
			<TH>Result</TH>
		</TR>
		<TR ALIGN="CENTER">
			<TD>\${1&lt;2}</TD>
			<TD>${1<2}</TD>
		</TR>	
		<TR ALIGN="CENTER">
			<TD>\${"a"&lt;"b"}</TD>
			<TD>${"a"<"b"}</TD>
		</TR>	
		<TR ALIGN="CENTER">
			<TD>\${2/3 &gt;= 3/2}</TD>
			<TD>${2/3 >= 3/2}</TD>
		</TR>	
		<TR ALIGN="CENTER">
			<TD>\${3/4 == 0.75}</TD>
			<TD>${3/4 == 0.75}</TD>
		</TR>
	</TABLE>	
		
</body>
</html>