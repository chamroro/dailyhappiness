<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daily Happiness</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addPage.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<h2>DAILY HAPPINESS</h2>
	<div class="container">
		<h3>Record your precious day.</h3>
		<form action="addok" method="post">
			<input type="hidden" name="seq" value ="${u.seq}"/>
				<label for="date">date</label>
		        <input type="date" id="name" name="date" value="${u.date}" min="2021-01-01" max="2022-12-31"><br>
		        
		        <input type="radio" id="day" name="day" value="sun">Sun 
		        <input type="radio" id="day" name="day" value="mon">Mon 
		        <input type="radio" id="day" name="day" value="tue">Tue 
		        <input type="radio" id="day" name="day" value="wed">Wed 
		        <input type="radio" id="day" name="day" value="thu">Thu 
		        <input type="radio" id="day" name="day" value="fri">Fri 
		        <input type="radio" id="day" name="day" value="sat">Sat 
		        <br>    
				<label for="title">title</label>
				<input type="text" id="title" name="title" value="${u.title}"><br>
				<label for="Content">Content</label><br>
				<textarea rows="10" cols="50" name="content" >${u.content}</textarea><br>
				<label for="happy">emotion</label>
				<input type="text" id="happy" name="happy" placeholder="행복도 또는 감정을 이모티콘으로 나타내세요." value="${u.happy}"><br>
				<input type="button" class="btn" value="back" onclick="history.back()">
				<input type="submit" class="btn" value="upload">
				
		</form>
	</div>

</body>
</html>

