<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
table {
	border-collapse: collapse;
}
td {
		border : 1px solid;	
		width : 80px; 
		text-align : center;
}
</style>
</head>
<body>
	<table>
		<%
			for(int i=1; i<10; i++){
				out.println("<tr>");
				for(int j=2; j<10; j++){
					out.print("<td> "+j+" x "+i);
					out.print(" = ");
					out.print((j*i)+" </td>");
					
				}
				out.print("</tr>");
			}
		%>

	</table>


</body>
</html>
