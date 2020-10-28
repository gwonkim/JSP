<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body { font-family: 굴림체; font-size: 10pt; }
  div.container { width: 400px; margin: 20px auto; }
  
    table { border-collapse: collapse; margin-top: 40px; }
    td { padding: 5px; border: solid 1px gray; width: 150px }
    button { width : 100px;}
  div.error { margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa; }
div { padding : 10px}



</style>

</head>
<body>
<div class="container">
<form method="post">
<h3>회원 등록</h3>
<label>이름<br /><input type="text" name="name" value="${ name }" /></label>
<br />

<div>
<label>성별</label><br />
<label><input type="radio" name="sex" value="남자" ${ sex == "남자" ? "checked" : "" } />남자</label>
<br />
<label><input type="radio" name="sex" value="여자" ${ sex == "여자" ? "checked" : "" } />여자</label>
</div> 

<button type="submit">회원등록</button>
<br />
</form>

<c:if test = "${ err != null }">
<div class="error">회원등록 실패 : ${ err }</div>
</c:if>

<table>
<tr>
<td>이름</td><td>${ name }</td>
</tr>
<tr>
<td>성별</td><td>${ sex }</td>
</tr>
</table>

</div>
</body>
</html>