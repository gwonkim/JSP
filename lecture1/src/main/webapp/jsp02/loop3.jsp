<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<c:set var="list" value="apple, banana, orange, kiwi" />
<ul>
  <c:forEach var="s" items="${ list }">
      <li>${ s }</li>
  </c:forEach>
</ul>

</body>
</html>
