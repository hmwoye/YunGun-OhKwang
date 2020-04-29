<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var inputEmailObj = document.getElementById('inputEmail');
		var submitBntObj = document.getElementById('emailBtn');
		var selectBoxObj = document.getElementById('selectBox1');
		selectBoxObj.addEventListener('mouseover', blockBgChangeOverFnc, false);
		selectBoxObj.addEventListener('mouseleave', blockBgChangeLeaveFnc,
				false);
		inputEmailObj.addEventListener('focus', pwdFnc, false);
		inputEmailObj.addEventListener('keyup', pwdFnc, false);
		inputEmailObj.addEventListener('blur', placeReturnFnc);
		submitBntObj.addEventListener('click', emailFnc);
	}

	function pwdFnc() {

		var inputEmailObj = document.getElementById('inputEmail');
		var emailButton = document.getElementById('emailBtn');
		var msg = document.getElementsByClassName('member-input-wrong-message');
		var emailValue = inputEmailObj.value;
		var textOne = "@";
		var textTwo = ".";

		if (emailValue.indexOf(textOne) > -1
				&& emailValue.indexOf(textTwo) > -1) {
			emailButton.disabled = false;
			emailButton.style.backgroundColor = '#5383E8';
			emailButton.style.cursor = 'pointer';
			msg[0].innerHTML = "";

		}
		if (emailValue.indexOf(textOne) <= -1
				|| emailValue.indexOf(textTwo) <= -1) {
			emailButton.disabled = true;
			emailButton.style.backgroundColor = '#D5D5D5';
			emailButton.style.cursor = '';
		}

		if (emailValue.length >= 1
				&& (emailValue.indexOf(textOne) <= -1 || emailValue
						.indexOf(textTwo) <= -1)) {
			msg[0].innerHTML = "<img src='./img/warning.svg'" 
               +"style=\"margin-right : 10px; vertical-align: middle;\">"
					+ "유효한 이메일 주소를 입력해 주시기 바랍니다.";
		}

		if (emailValue == 0) {
			msg[0].innerHTML = "";
		}

		this.parentNode.style.borderBottom = '1px solid #1ea1f7';
		this.parentNode.children[0].style.transform = 'scale(.75) translateY(-39px)';
		this.parentNode.children[0].style.color = '#1ea1f7';

	}

	function emailFnc() {
		var emailValue = document.getElementById('inputEmail').value;
		var textOne = "@";
		var textTwo = ".";

		if (emailValue.indexOf(textOne) > -1
				&& emailValue.indexOf(textTwo) > -1) {
			alert('비밀번호 재설정 메일이 발송되었습니다.');
		}
	}

	function placeReturnFnc() {

		if (this.value.length == 0) {
			this.parentNode.style.borderBottom = '1px solid #dddfe4';
			this.parentNode.children[0].style.color = '#7b858e';
			this.parentNode.children[0].style.transform = '';

		} else if (this.value.length > 0) {
			this.parentNode.style.borderBottom = '1px solid #dddfe4';
			this.parentNode.children[0].style.color = '#7b858e';
			this.parentNode.children[0].style.transform = 'scale(.75) translateY(-39px)';
		}
	}

	function blockBgChangeOverFnc() {
		var selectBoxObj = document.getElementById('selectBox1');
		selectBoxObj.style.backgroundColor = '#2F436E';
	}
	function blockBgChangeLeaveFnc() {
		var selectBoxObj = document.getElementById('selectBox1');
		selectBoxObj.style.backgroundColor = '#232F46';
	}
</script>
</head>

<style type="text/css">
body {
	margin: 0px;
	background-color: #f3f5f7;
}

header>a {
	text-decoration: none;
}

#header {
	height: 40px;
	background-color: #232F46;
}

.headerImgL {
	height: 40px;
	float: left;
}

#yasuo {
	height: 32px;
	margin-bottom: 4px;
	margin-top: 4px;
	margin-left: 40px;
}

.headerImgR {
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

.selectBox {
	height: 28px;
	float: right;
	margin-top: 6px;
	margin-right: 18px;
	margin-bottom: 6px;
	background-color: #232F46;
	color: white;
	border: 1px solid #232F46;
}

#selectBox1 {
	width: 150px;
	float: left;
}

#selectBox2 {
	width: 66px;
	float: right;
}

#bg {
	padding-top: 130px;
	padding-bottom: 54px;
	background-color: #5383e8;
}

#inBg {
	background-color: white;
	padding: 30px;
	padding-bottom: 280px;
	padding-top: 50px;
	width: 430px;
	margin: auto;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .2);
}

#logo {
	width: 400px;
	margin: auto;
	text-align: center;
}

#pwdFind {
	width: 400px;
	margin: auto;
}

#contents {
	color: gray;
	width: 400px;
	margin: auto;
	font-size: 14px;
}

#emailAdr {
	width: 400px;
	margin: auto;
	margin-top: 40px;
	border-bottom: 1px solid #dddfe4;
}

#inputEmail {
	width: 400px;
	font-size: 16px;
	border: white;
	outline: 0;
}

.member-input__label {
	color: #7b858e;
	position: absolute;
	transform-origin: bottom left;
	transition: all .3s cubic-bezier(.2, 0, .2, 1);
}

.input-contents {
	position: relative;
	z-index: 10;
	border: 0;
	padding: 5px 0px;
	background-color: transparent;
	outline: 0;
	width: 400px;
	font-size: 16px;
}

.member-input-wrong-message {
	font-weight: 400;
	font-size: 14px;
	line-height: 20px;
	margin-top: 8px;
	position: relative;
	padding-left: 14px;
	color: #fe453b;
}

#btn {
	width: 400px;
	margin: auto;
}

#emailBtn {
	color: white;
	font-size: 16px;
	text-align: center;
	width: 400px;
	background-color: #D5D5D5;
	border: 1px solid #D5D5D5;
	padding-top: 15px;
	padding-bottom: 15px;
	margin-top: 30px;
}

#back {
	width: 400px;
	margin: auto;
	margin-top: 15px;
	text-align: center;
}

.where {
	display: block;
	margin: 25px 15px;
	font-size: 11px;
	color: #000;
	text-decoration: none;
	font-family: verdana;
	font-style: italic;
}
</style>
<body>
	<div id="header">
		<a href="./logIn.jsp"> <img class="headerImgl"
			src="./img/logo3.PNG" style="float: left; height: 40px;">
		</a> <a href=""> <img class="headerImgL" src="./img/lolImg.PNG"
			style="height: 24px; margin: 8px 0px 8px 12px;">
		</a> <select class="selectBox" id='selectBox1' name="select"
			onchange="if(this.value) location.href=(this.value);">
			<option value="">League of Legends</option>
			<option value="https://pubg.op.gg/">배틀그라운드</option>
			<option value="https://overwatch.op.gg/">오버워치</option>
			<option value="https://fortnite.op.gg/">포트나이트</option>
			<option value="https://r6.op.gg/">레인보우 식스 시즈</option>
			<option value="https://talk.op.gg/">톡피지지</option>
		</select> <a
			href="https://playruneterra.com/ko-kr/?_branch_match_id=770454022758730522">
			<img id="yasuo" class="headerImgl" src="./img/yasuo.PNG">
		</a>
		<button id="loginBtn" class="headerImgR"
			onclick="location.href='logIn.jsp'">로그인</button>
		<select class="selectBox" id='selectBox2'>
			<option>한국어</option>
			<option>english</option>
			<option>中国語</option>
			<option>日本語</option>
			<option>español</option>
			<option>Deutsch</option>
		</select> <a> <img class="headerImgR" src="./img/earth.PNG">
		</a>
	</div>

	<div id="bg">
		<div id="inBg">
			<div id="logo">
				<img src="./img/logo2.PNG">
			</div>

			<div id="pwdFind">
				<h2>비밀번호찾기</h2>
			</div>

			<div id="contents">
				비밀번호를 찾고자 하는 OP.GG 이메일 ID를 입력해주시면<br /> 해당 메일 주소로 비밀번호 재설정 링크를
				보내드립니다.
			</div>
			<form action="">
				<div id="emailAdr">
					<label class="member-input__label" for="inputEmail">이메일 주소</label>
					<input id="inputEmail" class="input-contents" type="email"
						autocomplete="off">

				</div>
				<!-- <div id="warningMsg"></div> -->
				<div class="member-input-wrong-message"></div>

				<div id="btn">
					<button id="emailBtn" disabled="disabled">이메일 보내기</button>
				</div>

				<div id="back">
					<a href="./logIn.jsp" style="color: #1ea1f7;">로그인으로 돌아가기</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
