<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
	border-collapse: collapse;
	margin-top: 10px;
}

td {
	border: 1.5px solid black;
	padding: 5px;
	width: 10px
	height :10px;
}
tr:nth-child(even) { background-color : lightgreen; } 
tr:nth-child(odd) { background-color : #ff9;}


</style>
</head>
<body>
	<div class="container">
	<table>
		<c:forEach var="i" begin="1" end="9">
			<tr>
			<td>3 x ${ i } = ${ i*3 }</td>
			</tr>
		</c:forEach>
		</table>
	</div>
</body>
</html>
