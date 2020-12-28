<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
div.container {
	width: 600px;
	margin: 50px auto;
}

thead th {
	background-color: #eee;
}

table {
	border-collapse: collapse;
	width: 100%;
}

td, th {
	padding: 4px;
	border: 1px solid lightgray;
}

td:nth-child(4) {
	text-align: center;
}

td.align {
	text-align: right
}

tr[data-url]:hover {
	background-color: #ffb;
	cursor: pointer;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">

		<h1>도시목록</h1>

		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>id</th>
					<th>도시</th>
					<th>도</th>
					<th>인구</th>
					<th>면적</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="city" items="${ cities }">
					<tr data-url="detail?id=${ city.id }">
						<td>${ city.id }</td>
						<td>${ city.name }</td>
						<td>${ city.districtName }</td>
						<td class="align">${ city.population }</td>
						<td class="align">${ city.area }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script>
$("[data-url]").click(function() {
  var url = $(this).attr("data-url");
  location.href = url;
})
</script>

</body>
</html>
