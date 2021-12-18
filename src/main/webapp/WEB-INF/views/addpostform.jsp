<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daily Happiness</title>
</head>
<body>
<h1>Record your precious day.</h1>
<form action="addok" method="post">
	<input type="hidden" name="seq" value ="${u.seq}"/>
		<label for="date">date:</label>
            <input type="date" id="name" name="date" value="${u.date}" min="2021-01-01" max="2022-12-31"><br>
        
        <input type="radio" id="day" name="day" value="sun">sun 
        <input type="radio" id="day" name="day" value="mon">mon 
        <input type="radio" id="day" name="day" value="tue">tue 
        <input type="radio" id="day" name="day" value="wed">wed 
        <input type="radio" id="day" name="day" value="thu">thu 
        <input type="radio" id="day" name="day" value="fri">fri 
        <input type="radio" id="day" name="day" value="sat">sat 
        <br>    
		<label for="title">title:</label>
		<input type="text" id="title" name="title" value="${u.title}"><br>
		<label for="Content">Content:</label><br>
		<textarea rows="10" cols="100" name="content">${u.content}</textarea><br>
		<label for="happy">emotion:</label>
		<input type="text" id="happy" name="happy" value="${u.happy}"><br>
		
		<input type="submit" value="upload">
		<input type="button" value="back" onclick="history.back()">
</form>
</body>
</html>

