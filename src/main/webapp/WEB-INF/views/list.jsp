<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Daily Happiness</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainPage.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
tr { display: block; float: left; }
th, td { display: block; }
</style>
</head>
<body>
<h1>Daily Happiness</h1>
<button type="button" onclick="location.href='add'">기록하기</button>
<table id="list" width="90%">

<c:forEach items="${list}" var="u">
   <tr>
      <td>${u.day}</td>
      <td>${u.date}</td>
      <td>${u.happy}</td>
      <td>${u.title}</td>
      <td>${u.content}</td>
      <td>${u.photo}</td>
      <td><a href="editform/${u.seq}">수정</a></td>
      <td><a href="javascript:delete_ok('${u.seq}')">삭제</a></td>
   </tr>
</c:forEach>



</table>
</body>
</html>
<script>
function delete_ok(id){
	var a = confirm("정말로 삭제하시겠습니까?");
	if(a) location.href='deleteok/' + id;
}
</script>