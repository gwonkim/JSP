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
	border: 1px solid gray;
	padding: 5px;
	width: 50px;
	height : 50px;
}

td: nth-child(even) { background-color : "lightgreen"}
td: nth-child(odd) { background-color : "lightgreen"}
</style>
</head>
<body>
	<div class="container">
		<c:forEach var="i" begin="0" end="4">
			<c:forEach var="j" begin="0" end="4">
				<tr>
					<td>${ i * 4 + j }</td>
				</tr>
			</c:forEach>
		</c:forEach>
	</div>
</body>
</html>
