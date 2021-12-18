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
@import url('https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@400;600;700&family=Nanum+Brush+Script&display=swap');
body{
	position: relative;
	background-color: #F5EEDE;
	align-items: center;
	margin-left: auto;
    margin-right: auto;
    display: flex;
    justify-content: center;
    align-items: center;
}
div{
	align-items: center;
	margin-left: auto;
    margin-right: auto;
}

h1{
	font-size: 48px;
	font-weight: normal;
	color:  #A19793;
	font-family: 'Josefin Slab', serif;
	text-align: center;
}


button,
button::after {
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
  -o-transition: all 0.3s;
	transition: all 0.3s;
}

button {
  background: none;
  border: 1px solid #A78B74;
  border-radius: 50px;
  color: #A78B74;
  display: block;
  font-size: 1.6em;
  font-weight: bold;
  margin: 1em auto;
  padding: 10px 110px;
  position: relative;
  text-transform: uppercase;
  font-family: 'Nanum Brush Script', cursive;
  font-size: 36px;
}

button::before,
button::after {
  background: #A78B74;
  content: '';
  border-radius: 50px;
  position: absolute;
  z-index: -1;
}

button:hover {
  color: #fff;
}

.btn::after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}

.btn:hover:after {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}


table {
	  margin: 10px auto;
	  table-layout: fixed;
	  width: 80%;
	  border-collapse: collapse;
	  border: 1px solid purple;
	  text-align: center
}


th, td {
  padding: 20px;
  border: 1px solid #A19793;
  font-family: 'Nanum Brush Script', cursive;
  font-size: 24px;
}

.happy{
	width: 5%;
	font-size: 48px;
}

.date{
	width: 10%;
}

.day{
	width: 5%;
}

.title{
	width: 10%;
}
.content{
 	width: 60%;
}
.buttons{
	width: 10%;
}


</style>

</head>
<body>
	<div>
		<h1>DAILY HAPPINESS</h1>
		<button type="button" class="btn" onclick="location.href='add'">기록하기</button>
		<table id="list" width="100%">
		
		<c:forEach items="${list}" var="u">
		  
		    
 
		   <tr>
		   		<td class="happy">${u.happy}</td>
		      <td class="date">${u.date}</td>
		      <td class="day">${u.day}</td>
		      
		      <td class="title">${u.title}</td>
		      <td class="content">${u.content}</td>
		      <td class="buttons">
			      <a href="editform/${u.seq}">수정</a>
			      <a href="javascript:delete_ok('${u.seq}')">삭제</a>
		      </td>
		   </tr>
		    
		</c:forEach>
		</table>
	</div>
</body>
</html>
<script>
function delete_ok(id){
	var a = confirm("정말로 삭제하시겠습니까?");
	if(a) location.href='deleteok/' + id;
}
</script>