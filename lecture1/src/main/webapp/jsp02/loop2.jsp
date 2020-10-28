<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lecture1</title>
<style>
    table { border-collapse: collapse; }
    td { padding: 5px; border: solid 1px gray; }
</style>
</head>
<body>

<table>
  <c:forEach var="i" begin="0" end="3">
    <tr>  
    <c:forEach var="j" begin="1" end="4">
        <td>${ i * 4 + j }</td>
    </c:forEach>
    </tr>
  </c:forEach>
</table>

</body>
</html>

