<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
div.container {
	margin: 20px auto
}

input select {
	padding: 5px;
	width: 150px;
}

table {
	border-collapse: collapse;
}

td {
	padding: 5px;
	border: solid 1px gray;
}

table {
	border-collapse: collapse;
}

td {
	padding: 5px;
	border: solid 1px gray;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<div>
				<label>
				<input type="radio" name="radio1" value="one"
					${ radio1 == "one" ? "checked" : "" } />one</label>
				<label>
				<input type="radio" name="radio1" value="two"
					${ radio1 == "two" ? "checked" : "" } />two</label>
				<label>
				<input type="radio" name="radio1" value="three"
					${ radio1 == "three" ? "checked" : "" } />three</label>
			</div>
			<input type="text" name="radio" value="${ radio1 }" /> <br />
			<button type="submit">Ok</button>

		</form>
	</div>


</body>
</html>
