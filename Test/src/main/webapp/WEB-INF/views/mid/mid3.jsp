<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
div.container {
	padding: 10px
}

div {
	margin: 10px auto
}

input, select {
	padding: 5px;
}

button {
	padding: 0.4em 2em;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<div>
				<label> <input type="radio" name="radio1" value="one"
					${ text1 == "one" ? "checked" : "" } />one
				</label> <label> <input type="radio" name="radio1" value="two"
					${ text1 == "two" ? "checked" : "" } />two
				</label> <label> <input type="radio" name="radio1" value="three"
					${ text1 == "three" ? "checked" : "" } />three
				</label>
			</div>
		
			<select name="text1">
				<option value="one" ${ text1 == "one" ? "selected" : "" }>one</option>
				<option value="two" ${ text1 == "two" ? "selected" : "" }>two</option>
				<option value="three" ${ text1 == "three" ? "selected" : "" }>three</option>
			</select> 
			<button type="submit">Ok</button>
			
			
		</form>
	</div>
</body>
</html>
