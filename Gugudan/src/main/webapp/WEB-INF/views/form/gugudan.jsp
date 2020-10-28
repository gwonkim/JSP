<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
div.container {
	width: 600px;
	margin: 20px auto;
}

form div {
	margin-bottom: 10px;
}

input {
	width: 200px;
	padding: 4px;
}

button {
	padding: 0.2em 3em;
	margin: 10px auto;
}

table {
	border-collapse: collapse;
}

td {
	border: 1px solid;
	width: 80px;
	height: 30px;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<input type="text" name="number1" value="${ number1 }" />
			<button type="submit">확인</button>
			<table>
				<c:forEach var="i" begin="${number1}" end="${number1}">
					<tr>
						<c:forEach var="j" begin="1" end="9">
							<td>${ i } x ${ j } = ${ i*j }</td>
						</c:forEach>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>
