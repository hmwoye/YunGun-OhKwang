<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function () {
		var inputEmailObj = document.getElementById('inputEmail');
		var inputNameObj = document.getElementById('inputName');
		var inputPwdObj = document.getElementById('inputPwd');
		
		inputEmailObj.addEventListener('click', emailFnc, false)
		inputNameObj.addEventListener('click', nickFnc, false)
		inputPwdObj.addEventListener('click', pwdFnc, false)
	}
	
	function emailFnc() {
		var inputEmailObj = document.getElementById('inputEmail');
		inputEmailObj.placeholder = '';
	}
	function nickFnc() {
		var inputNameObj = document.getElementById('inputName');
		inputNameObj.placeholder = '';
	}
	function pwdFnc() {
		var inputPwdObj = document.getElementById('inputPwd');
		inputPwdObj.placeholder = '';
	}
</script>
</head>
<style type="text/css">
a {
	text-decoration: none;
}
#header{
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
	width: 66px;
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


#headerBtn {
	border: 0px solid;
}
#bg {
	background-color: #5383E8;
}
#inBg {
	background-color: white;
	padding: 10px;
	padding-bottom: 156px;
	padding-top: 50px;
	width: 600px;
	margin: auto;
}
#logo {
	width: 460px;
	margin: auto;
	text-align: center;
}
#input {
	margin: auto;
	width: 500px;
}
#information {
	background-color: #F6F6F6;
	padding: 18px;
	padding-right: 25px;
	width: 460px;
	margin: auto;
	color: gray;
}
#emailNmae {
	
	width: 500px;
	margin: auto;
	margin-top: 40px; 
}
#inputEmail {
	margin-bottom: 4px;
	font-size: 16px;
	width: 500px;
	border: white;
	outline: 0;
}
#inputName {
	margin-bottom: 4px;
	font-size: 16px;
	width: 500px;
	border: white;
	margin-top: 30px;
	outline: 0;
}
#warning {
	color: gray;
	margin: auto;
	width: 500px;
	font-size: 15px;
}
#inputPwd {
	margin-bottom: 4px;
	font-size: 16px;
	width: 500px;
	border: white;
	outline: 0;
}
#btn {
	margin: auto;
	width: 500px;
	margin-top: 40px;
}
#cancel {
	background-color: white;
	padding: 18px;
	padding-right: 95px;
	padding-left: 95px;
	border: 1px solid #D5D5D5;
	font-size: 16px;
	width: 240px;
}
#join {
	background-color: #D5D5D5;
	padding: 18px;
	padding-right: 85px;
	padding-left: 85px;
	border: 1px solid #EAEAEA;
	font-size: 16px;
	color: white;
	width: 240px;
	margin-left: 10px; 
}
#member {
	width: 500px;
	margin: auto;
	text-align: center;
	margin-top: 15px; 
}
</style>
<body>
	<div id="header">
		<a href="https://www.op.gg/"> 
			<img class="headerImgl" src="./img/logo3.PNG" 
				style="float: left; height: 40px;">
		</a>
		<a href=""> 
			<img class="headerImgL" src="./img/lolImg.PNG">
		</a>
		<a href=""> 
			<img id="yasuo" class="headerImgl" src="./img/yasuo.PNG">
		</a>
		
		<button id="loginBtn" class="headerImgR">로그인</button>
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
	
	<div id="bg">
		<div id="inBg" >
			<div id="logo">
				<img src="./img/logo1.PNG">				
			</div>
			<div id="input">
				<h2>기본정보입력</h2>
			</div>
			
			<div id="information">
				회원가입을 위해서 이메일 인증이 진행되며, 인증이 완료되기<br/>
			 	전까지 회원가입이 완료가 되지않습니다
			</div>
			
			<div id="emailNmae">
				<input id="inputEmail" type="text" placeholder="이메일 주소">
				<hr/>	
				<input id="inputName" type="text" placeholder="닉네임">
				<hr/>		
			</div>
				
			<div id="warning">
				개인정보를 기입하여 발생될 수 있는 피해는  OP.GG가 일절 책임지지<br/>
			 	않습니다
			</div>
				
			<div id="emailNmae">
				<input id="inputPwd" type="password" placeholder="비밀번호" value="">
				<hr/>	
			</div>
				
			<div id="btn">
				<button id="cancel">
					취소
				</button>
				<button id="join">
					가입하기
				</button>
			</div>
				
			<div id="member">
				이미 회원이신가요?&nbsp;&nbsp; <a href="">로그인하기</a>
			</div>
		</div>
	</div>
	
</body>
</html>