<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
div.container {
	margin: 20px;
}

button {
	width: 80px;
	height: 25px;
	font-size: 5px;
	margin-bottom: 10px;
}

input {
	width: 120px;
	margin-bottom: 10px;
}
</style>

</head>
<body>
	<div class="container">
		<form method="post">
			<input type="text" name="number1" value="${ number1 }" /> 
			<input type="text" name="number2" value="${ number2 }" /><br />
			<button type="submit">더하기</button><br /> 
			<input type="text" name="number3" value="${ number3 }" />
		</form>
	</div>
</body>
</html>