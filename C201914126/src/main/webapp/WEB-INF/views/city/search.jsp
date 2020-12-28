<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 600px; margin: 50px auto; }
    input { padding: 5px; font-size: 10pt; }
    button { margin: 10px ; padding: 0.4em 2em; }    
    thead th { background-color: #eee; }
    table{ border-collapse: collapse; width: 100%; }
    td, th { padding: 4px; border: 1px solid lightgray; }
    td:nth-child(4) { text-align: center; }
    td.align { text-align : right }
  </style>
</head>
<body>
<div class="container">

  <h1>도시목록</h1>
  <form>
    <label>도</label>
    <input type="text" name="srchText" value="${ srchText }" placeholder="검색조건" />
    <button type="submit">조회</button>
  </form>
  
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
        <tr>
          <td>${ city.id }</td>
          <td><a href="detail?id=${ city.id }">${ city.name }</a></td>
          <td>${ city.districtName }</td>
          <td class="align">${ city.population }</td>
          <td class="align">${ city.area }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

</div>
</body>
</html>
