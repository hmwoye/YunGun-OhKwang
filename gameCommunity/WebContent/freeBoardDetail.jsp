<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
<style type="text/css">
	#header {
		height: 40px;
		background-color: #232F46;
	}
	.headerImgL{ 
	height: 40px;
	float: left;
	}
	#yasuo{
		height: 32px;
		margin-bottom: 4px;
		margin-top: 4px;
		margin-left: 40px;
	}
	.headerImgR{ 
		height: 40px;
		float: right;
	}
	#loginBtn {
		height: 28px;
		width: 70px;
		margin-bottom: 6px;
		margin-top: 6px;
		background-color: #5383E8;
		margin-right: 20px;
		border: 1px solid #5383E8;
		border-radius: 6px;
		color: white;
	}
	#selectBox {
		height: 28px;
		width: 66px;
		float: right;
		margin-top: 6px;
		margin-right: 18px;
		margin-bottom: 6px;
		background-color: #232F46;
		color: white;
		border: 1px solid #232F46;
	}
	#mainBox{
		margin: auto;
		width : 1000px; 
		height: 800px;
		padding: 10px 10px;
	}
	#writeMenu{
		padding-top:10px;
		border: 1px solid #D5D5D5; 
		height: 40px;
		margin: 20px 0px;
		padding-left:10px;
		font-size: 20px;
		font-weight: bold;
		box-shadow: 2px 2px #D5D5D5;
		background: linear-gradient(to bottom, white, #f0f0f0 );
	}
	.contentLine{
		border-bottom: 1px solid black;
		margin: 10px 0px;
		height: 40px;
	}
	.content{
		width : 100px;
		height : 33px;
		text-align: center;
		float: left;
		padding-top: 4px;
		color: grey;
	}
	.inputBox{
		width : 200px;
		height : 20px;
		margin-top: 3px;
	}
	#writeBox{
		border: 1px solid black;
		width : 993px;
		height: 300px;
		margin-top: 50px;
		resize: none;
		display: table-cell;
        vertical-align: middle;
	}
	#buttonBox{
		margin-top: 30px;
		text-align: center;
		height: 30px;
		
	}
	#writeButton{
		font-weight: bold;
		margin-right: 20px; 
		padding-bottom: 3px;
	}
	#listButton{
		font-weight: bold;
		color: grey;
	}
	
</style>	
<script type="text/javascript">
	
</script>

</head>

<body>
	<div id="header">
		<a href="./logIn.jsp"> 
			<img class="headerImgl" src="./img/logo3.PNG" 
				style="float: left; height: 40px;">
		</a>
		<a> 
			<img class="headerImgL" src="./img/lolImg.PNG">
		</a>
		<a> 
			<img id="yasuo" class="headerImgl" src="./img/yasuo.PNG">
		</a>
		
		<button id="loginBtn" class="headerImgR" onclick="location.href='logIn.jsp'">
			로그아웃
		</button>
		<select id="selectBox">
			<option>한국어</option>
			<option>english</option>
			<option>中国語</option>
			<option>日本語</option>
			<option>español</option>
			<option>Deutsch</option>
		</select>
 		<a>
 			<img class="headerImgR" src="./img/earth.PNG">
 		</a>
	</div>
	
	<div id="mainBox">
		<div id = "writeMenu">
			። 글쓰기 ።
		</div>
		<div class="contentLine">
			<div class="content">이 름</div>
			<input class="inputBox" type="text">
		</div>
		<div class="contentLine">
			<div class="content">패스워드</div>
			<input class="inputBox" type="password">
		</div>
		<div class="contentLine">
			<div class="content">이메일</div>
			<input class="inputBox" type="email" style="width: 400px;">
		</div>
		<div class="contentLine">
			<div class="content">홈페이지</div>
			<input class="inputBox" type="text" style="width: 400px;">
		</div>
		<div class="contentLine">
			<div class="content">제목</div>
			<input class="inputBox" type="text" style="width: 894px;">
		</div>
		<textarea id="writeBox"></textarea>
		
		<div id="buttonBox">
			<button id="writeButton" onclick="location.href='freeBoard.jsp'"><img alt="연필" src="./img/pencil.jpg" style="width: 15px; height: 12px; margin-top: 3px;">
				 &nbsp;글쓰기
			</button>
			<button id ="listButton" style="padding-bottom: 3px;" onclick="location.href='freeBoard.jsp'">목록</button>
		</div>
		
	
	</div>
	
	
	
	
</body>
</html>