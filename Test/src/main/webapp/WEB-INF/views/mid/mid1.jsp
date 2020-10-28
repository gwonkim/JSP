<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
div.container {
	margin-botton: 10px;
}

input {
	padding: 5px;
	width: 150px;
}

button {
	padding: 0.4em 2em;
}

table {
	border-collapse: collapse;
	margin-top: 10px;
}

td {
	border: 1px solid gray;
	padding: 5px;
	width: 150px;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<input type="text" name="number1" value="${ number1 }" />
			<button type="submit">단</button>
			<table>
				<c:forEach var="j" begin="1" end="9">
					<tr>
						<td>${ number1 }x ${ j } = ${ number1*j }</td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>
