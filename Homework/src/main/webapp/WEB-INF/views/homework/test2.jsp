<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

select, input {
	width: 200px;
	padding: 4px;
	margin-top: 10px;
}

button {
	padding: 0.4em 3em;
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<select name="text1">
				<option value="one" ${ text1 == "one" ? "selected" : "" }>one</option>
				<option value="two" ${ text1 == "two" ? "selected" : "" }>two</option>
				<option value="three" ${ text1 == "three" ? "selected" : "" }>three</option>
			</select> 
			<br /> 
			<input type="text" value="${ text1 }" /> 
			<br />
			<button type="submit">Ok!</button>
		</form>
	</div>
</body>
</html>
