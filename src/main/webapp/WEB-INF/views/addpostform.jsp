<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daily Happiness</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@400;600;700&family=Nanum+Brush+Script&display=swap');
	body{
		position: relative;
		background-color: #F5EEDE;
		align-items: center;
		margin-left: auto;
	    margin-right: auto;

	}
	h2{
		font-size: 48px;
		font-weight: normal;
		color:  #A19793;
		font-family: 'Josefin Slab', serif;
		text-align: center;
	}
	
	h3{
		font-family: Nanum Brush Script;
		font-style: italic;
		font-weight: normal;
		font-size: 36px;
		line-height: 41px;
		text-align: center;
		color: #F5EEDE;
	}
	
	.container{
		margin: 0px auto;
		width: 627px;
		padding: 60px 70px; 
		background: #A78B74;
		border: 1px solid #A78B74;
		box-sizing: border-box;
		border-radius: 49px;
	}
	
	input[type="date"]{
		padding: 10px;
		margin-left:20px;
		margin-bottom:20px;
		border-radius: 5px;
		border: 1px solid #F5EEDE;
		background-color: rgba(245, 238, 222, 0.5);
	}


	label{
		font-family: Nanum Brush Script;
		font-style: italic;
		font-weight: normal;
		font-size: 36px;
		line-height: 41px;
		text-align: center;
		color: #F5EEDE;
	}
	
	input[type="text"], input[type="password"] { 
		height: auto;
		line-height: normal;
		padding: 8px 24px;
		width: 300px;
		background-color: rgba(245, 238, 222, 0.5);
		margin: 5px;
		font-size: 24px;
		border: 1px solid #F5EEDE;
		box-sizing: border-box;
		border-radius: 5px;
		font-family: Nanum Brush Script;
	
		font-weight: normal;
		font-size: 24px;
		color: #5E5F6B;
	}
	textarea{
		background-color: rgba(245, 238, 222, 0.5);
		padding: 8px;
		margin: 5px;
		font-size: 24px;
		border: 1px solid #F5EEDE;
		box-sizing: border-box;
		border-radius: 5px;
		font-family: Nanum Brush Script;
		font-weight: normal;
		font-size: 24px;
		color: #5E5F6B;
	}
	#happy{
		width:70%;
	}
	
	
	input[type="submit"],
	input[type="button"],
	input[type="submit"]::after,
	input[type="button"]::after {
	  -webkit-transition: all 0.3s;
		-moz-transition: all 0.3s;
	  -o-transition: all 0.3s;
		transition: all 0.3s;
	}
	
	input[type="submit"],
	input[type="button"]{
	  background: none;
	  border: 1px solid #fff;
	  border-radius: 30px;
	  font-family: Nanum Brush Script;
	  font-weight: normal;
	  color: #fff;
	  font-size: 24px;
	  margin: 10px;
	  padding: 10px 50px;
	  position: relative;
	}
	
	input[type="submit"]::before,
	input[type="button"]::before,
	input[type="submit"]::after,
	input[type="button"]::after{
	  background: #fff;
	  content: '';
	  position: absolute;
	  z-index: -1;
	}
	
	input[type="submit"]:hover ,
	input[type="button"]:hover {
	  color: #5E5F6B;;
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
	
	
</style>
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

