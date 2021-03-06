<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0px;
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

#mainBox {
	margin: auto;
	width: 1000px;
	height: 800px;
	padding: 10px 10px;
}

#writeMenu {
	padding-top: 10px;
	border: 1px solid #D5D5D5;
	height: 40px;
	margin: 20px 0px;
	padding-left: 10px;
	font-size: 20px;
	font-weight: bold;
	box-shadow: 2px 2px #D5D5D5;
	background: linear-gradient(to bottom, white, #f0f0f0);
}

.contentLine {
	border-bottom: 1px solid black;
	margin: 10px 0px;
	height: 40px;
}

.content {
	width: 100px;
	height: 33px;
	text-align: center;
	float: left;
	padding-top: 4px;
	color: grey;
}

.inputBox {
	width: 200px;
	height: 20px;
	margin-top: 3px;
}

#writeBox {
	border: 1px solid black;
	width: 993px;
	height: 300px;
	margin-top: 50px;
	resize: none;
	display: table-cell;
	vertical-align: middle;
}

#buttonBox {
	margin-top: 30px;
	text-align: center;
	height: 30px;
}

#writeButton {
	font-weight: bold;
	margin-right: 20px;
	padding-bottom: 3px;
}

#listButton {
	font-weight: bold;
	color: grey;
	padding-bottom: 3px;
}
</style>


</head>

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
			onclick="location.href='logIn.jsp'">로그아웃</button>
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

	<div id="mainBox">
		<div id="writeMenu">። 글쓰기 ።</div>

		<form action="./freeBoard.jsp" method="get"
			onsubmit="return checkFnc();">
			<div class="contentLine">
				<div class="content">이 름</div>
				<input class="inputBox" type="text" name="getName">
			</div>
			<div class="contentLine">
				<div class="content">패스워드</div>
				<input class="inputBox" type="password" name="getPwd">
			</div>
			<div class="contentLine">
				<div class="content">이메일</div>
				<input class="inputBox" type="email" style="width: 400px;"
					name="getEamil">
			</div>
			<div class="contentLine">
				<div class="content">홈페이지</div>
				<input class="inputBox" type="text" style="width: 400px;">
			</div>
			<div class="contentLine">
				<div class="content">제목</div>
				<input class="inputBox" type="text" style="width: 894px;"
					name="getTitle">
			</div>
			<textarea id="writeBox" name="getContent"></textarea>



			<div id="buttonBox">

				<button id="writeButton">
					<img alt="연필" src="./img/pencil.jpg"
						style="width: 15px; height: 12px; margin-top: 3px;">
					&nbsp;글쓰기
				</button>
				<input id="listButton" type="button" value="목록">
			</div>
		</form>
	</div>




</body>

<script type="text/javascript">
	window.onload = function() {
		//현석작성부분
		var listButtonObj = document.getElementById('listButton');
		listButtonObj.addEventListener('mouseenter', historyBackFnc, false);

		var contentList = document.getElementsByTagName('inputBox');
		var a = contentList[0].textContent;
		var selectBoxObj = document.getElementById('selectBox1');
		selectBoxObj.addEventListener('mouseover', blockBgChangeOverFnc, false);
		selectBoxObj.addEventListener('mouseleave', blockBgChangeLeaveFnc,
				false);

		alert(a);
	}

	function historyBackFnc() {
		var listButtonObj = document.getElementById('listButton');
		listButtonObj.setAttribute("onclick",
				"location.href='javascript:history.back();'");
	}

	function checkFnc() {
		var inputStr = document.getElementsByTagName('input');
		var inputTextarea = document.getElementById('writeBox');

		if (inputStr[0].value == '') {
			alert('이름을 입력해 주세요');
			return false;
		} else if (inputStr[1].value == '') {
			alert('비밀번호를 입력해 주세요');
			return false;
		} else if (inputStr[2].value == '') {
			alert('이메일을 입력해 주세요');
			return false;
		} else if (inputStr[3].value == '') {
			alert('홈페이지를 입력해 주세요');
			return false;
		} else if (inputStr[4].value == '') {
			alert('제목 입력해 주세요');
			return false;
		} else if (inputTextarea.value == '') {
			alert('내용을 입력해 주세요');
			return false;
		} else {
			alert('게시글이 등록되었습니다');
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


</html>