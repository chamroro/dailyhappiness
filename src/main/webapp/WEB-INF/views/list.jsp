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
      <td><script>getDay(Date(${u.regdate}).getDay() ,'spanID')</script>  <span id='spanID'></span></td>
      <td>${u.regdate}</td>
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
function getDay(day, id) {
    var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
    var Day = week[day];
    document.getElementById(id).innerHTML = Day;
}
</script>