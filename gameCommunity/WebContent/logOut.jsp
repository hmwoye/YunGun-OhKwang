<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/NewFile4.css" />
<meta charset="UTF-8">
<title>MEMBER.OP.GG</title>

<script type="text/javascript">
	window.onload = function() {

		var buttonObj = document.getElementsByClassName('profile-bnt');
		var selectBoxObj = document.getElementById('selectBox1');
		selectBoxObj.addEventListener('mouseover', blockBgChangeOverFnc, false);
		selectBoxObj.addEventListener('mouseleave', blockBgChangeLeaveFnc,
				false);

		for (var i = 0; i < buttonObj.length; i++) {
			buttonObj[i].addEventListener('mouseenter', buttonColorFnc, false)
			buttonObj[i].addEventListener('mouseleave', buttonColorReturnFnc,
					false)
		}

	}

	function buttonColorFnc() {
		this.style.backgroundColor = '#fef0ef';
	}

	function buttonColorReturnFnc() {
		this.style.backgroundColor = '';
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
	<div id="root">
		<div class="member-card-layout">
			<div class="member-card">
				<div class="member-card-layout-inner">

					<h1 class="member-card-layout__logo">
						<img class="member-card-layout__logo-image"
							src="./img/img_opgglogo.1924961d.svg" alt="OP.GG">
					</h1>

					<div class="info-div">
						<h1 class="profile-info">MY</h1>

						<div class="box" style="background: #BDBDBD;">
							<img class="profile" src="./img/hy.png">
						</div>

						<h1 class="user-name">오현석님</h1>


						<button id="main-bnt" class="profile-bnt">우르곳찌찌</button>

						<div class="or-line">
							<hr class="hr-left">

							<hr class="hr-right">
						</div>

						<button class="profile-bnt">설정</button>

						<div class="or-line">
							<hr class="hr-left">

							<hr class="hr-right">
						</div>

						<form id="formSecond" action="./logIn.jsp">
							<button type="submit" class="profile-bnt">로그아웃</button>
						</form>

						<div class="or-line">
							<hr class="hr-left">

							<hr class="hr-right">
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>