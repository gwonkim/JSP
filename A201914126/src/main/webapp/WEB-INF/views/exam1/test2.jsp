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
	width: 70px;
	margin-bottom: 20px;
}
input {
	margin-right : 5px;
}

label {
	margin-right : 20px;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<div>
				<label><input type="radio" name="color1" value="yellow"
					${ color1 == "yellow" ? "checked" : "" } />yellow</label> 
				<label> <input type="radio" name="color1" value="green"
					${ color1 == "green" ? "checked" : "" } />green</label> 
				<label> <input type="radio" name="color1" value="red"
					${ color1 == "red" ? "checked" : "" } />red</label>
			</div>
			<br />
			<button type="submit">확인</button>
			<br />
			<label>color: ${ color1 }</label>
		</form>
	</div>
</body>
</html>