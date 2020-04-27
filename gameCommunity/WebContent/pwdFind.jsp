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
		
		inputEmailObj.addEventListener('click', pwdFnc, false)
	}
	
	function pwdFnc() {
		var inputEmailObj = document.getElementById('inputEmail');
		inputEmailObj.placehloder = '';
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
#bg {
	padding-top: 130px;
	background-color: #5383E8;
	padding-bottom: 54px;
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
}
#inputEmail {
 	width: 400px;
	font-size: 16px;
	border: white;	
	outline: 0;
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

.textbox {position: relative; width: 200px; margin: 15px}

.textbox label {
  position: absolute;
  top: 1px;  /* input 요소의 border-top 설정값 만큼 */
  left: 1px;  /* input 요소의 border-left 설정값 만큼 */
  padding: .8em .5em;  /* input 요소의 padding 값 만큼 */
  color: #999;
  cursor: text;
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
		<div id="inBg">
			<div id="logo">
				<img src="./img/logo2.PNG">
			</div>
			
			<div id="pwdFind">
				<h2>비밀번호찾기</h2>
			</div>
			
			<div id="contents">
				비밀번호를 찾고자 하는 OP.GG 이메일 ID를 입력해주시면<br/>
				해당 메일 주소로 비밀번호 재설정 링크를 보내드립니다.
			</div>
			
			<div id="emailAdr">
				<input id="inputEmail" type="email" placeholder="이메일 주소" value="">
				<hr />
			</div>
			
			<div id="btn">
				<button id="emailBtn">이메일 보내기</button>
			</div>
			
			<div id="back">
				<a href="">로그인으로 돌아가기</a>
			</div>
		</div>
	</div>
</body>
</html>

