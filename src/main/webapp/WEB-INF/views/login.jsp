<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@400;600;700&display=swap');

	body{
		position: absolute;
		margin: auto 0;
		top: 40%;
		width: 100%;
		background-color: #F5EEDE;
		font-family: 'Josefin Slab', serif;
		display: flex;
		flex-direction: row;
		align-items: center;
		justify-content: space-between;
	}
	
	#logo{
		margin-left: 200px;
		font-size: 72px;
		font-weight: regular;
		color:  #A19793;
	}
	
	#login{
		margin-right: 300px;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
	
	a{
		font-size: 48px;
		font-weight: semibold;
		color:  #5E5F6B;
		position: relative;
		align-items: center;
		justify-content: center;
		margin: 20px auto;
	}
	
	input[type="text"], input[type="password"] { 
		height: auto;
		line-height: normal;
		padding: 12px 42px;
		width: 300px;
		background-color: transparent;
		margin: 5px;
		font-size: 24px;
		border-radius: 5px;
		border: 1px solid #5E5F6B;
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
	  border: 3px solid #fff;
	  border-radius: 5px;
	  color: #fff;
	  display: block;
	  font-size: 1.6em;
	  font-weight: bold;
	  margin: 1em auto;
	  padding: 20px 80px;
	  position: relative;
	  text-transform: uppercase;
	}
	
	button::before,
	button::after {
	  background: #fff;
	  content: '';
	  position: absolute;
	  z-index: -1;
	}
	
	button:hover {
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
	<div id="logo">DAILY HAPPINESS</div>
	<div id="login">
		<a>LOGIN</a>
		<form method="post" action="loginOk">
		<div>
			<input type='text' name='userid' placeholder="ID">
		</div>
		<div>
		 	<input type='password' name='password' placeholder="Password">
		 </div>
		 <button class="btn" type='submit'>Go!</button>
		
		</form>
	</div>
</body>
</html>