<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER.OP.GG</title>
<link rel="stylesheet" type="text/css" href="./css/log-in.css" />
<script type="text/javascript">
	
</script>

</head>
<body>
	<div id="header">
		<a href="./logIn.jsp"> 
		<img class="headerImgl"
			src="./img/logo3.PNG" style="float: left; height: 40px;">
		</a> 
		<a href=""> 
			<img class="headerImgL" src="./img/lolImg.PNG">
		</a> 
		<a href=""> 
			<img id="yasuo" class="headerImgl" src="./img/yasuo.PNG">
		</a>

		<button id="loginBtn" class="headerImgR" onclick="location.href='logIn.jsp'">
			로그인
		</button>
		<select id="selectBox">
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
							src="https://member.op.gg/img_opgglogo.1924961d.svg" alt="OP.GG">
					</h1>
					<div class="info-div">
						<h1 class="easy-login">간편 로그인</h1>
						<a
							href="https://www.facebook.com/login.php?skip_api_login=1&api_key=677811765617932&kid_directed_site=0&app_id=677811765617932&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fv2.12%2Fdialog%2Foauth%3Fapp_id%3D677811765617932%26cbt%3D1587962645609%26channel_url%3Dhttps%253A%252F%252Fstaticxx.facebook.com%252Fconnect%252Fxd_arbiter.php%253Fversion%253D46%2523cb%253Dff7e89a1c86cc8%2526domain%253Dmember.op.gg%2526origin%253Dhttps%25253A%25252F%25252Fmember.op.gg%25252Ff36af9a1ae22308%2526relation%253Dopener%26client_id%3D677811765617932%26display%3Dpopup%26domain%3Dmember.op.gg%26e2e%3D%257B%257D%26fallback_redirect_uri%3Dhttps%253A%252F%252Fmember.op.gg%252F%253Fredirect_url%253D%26locale%3Dko_KR%26logger_id%3Df123e2a6e615aec%26origin%3D1%26redirect_uri%3Dhttps%253A%252F%252Fstaticxx.facebook.com%252Fconnect%252Fxd_arbiter.php%253Fversion%253D46%2523cb%253Df18a99d9247fb34%2526domain%253Dmember.op.gg%2526origin%253Dhttps%25253A%25252F%25252Fmember.op.gg%25252Ff36af9a1ae22308%2526relation%253Dopener%2526frame%253Df3b442a7420f0c%26response_type%3Dtoken%252Csigned_request%252Cgraph_domain%26scope%3Demail%26sdk%3Djoey%26version%3Dv2.12%26ret%3Dlogin%26fbapp_pres%3D0%26logged_out_behavior%3D6&cancel_url=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D46%23cb%3Df18a99d9247fb34%26domain%3Dmember.op.gg%26origin%3Dhttps%253A%252F%252Fmember.op.gg%252Ff36af9a1ae22308%26relation%3Dopener%26frame%3Df3b442a7420f0c%26error%3Daccess_denied%26error_code%3D200%26error_description%3DPermissions%2Berror%26error_reason%3Duser_denied&display=popup&locale=ko_KR&pl_dbl=0"><button
								class="facebook-bnt">
								<img src="./img/facebook-icon.png" alt="facebook">
							</button></a> <a
							href="https://appleid.apple.com/auth/authorize?client_id=gg.op.member&redirect_uri=https%3A%2F%2Fmember-node.op.gg%2Fapi%2Fauthentication%2Fwebhook%2Fapple&response_type=code%20id_token&state=%257B%2522type%2522%253A%2522LOGIN%2522%252C%2522language%2522%253A%2522en%2522%252C%2522remember_me%2522%253Afalse%252C%2522redirect_url%2522%253A%2522https%253A%252F%252Fwww.op.gg%2522%257D&scope=name%20email&response_mode=form_post&frame_id=b3f4a59a-4e65-412c-8869-28e7c941784f&m=11&v=1.4.2"><button
								class="apple-bnt">
								<img src="./img/apple-icon.png" alt="apple">
							</button></a>
						<div class="or-line">
							<hr class="hr-left">
							OR
							<hr class="hr-right">
						</div>

						<h2 class="login__email-title">이메일 로그인</h2>

						<div class="input-box">
							<input class="input-contents" type="text" id="placeholder"
								name="이메일 주소" autocomplete="off" value="" /><label
								class="member-input__label" for="placeholder">이메일 주소</label>
						</div>

						<div class="input-box">
							<input class="input-contents" type="password" id="placeholder"
								name="비밀번호" autocomplete="off" value="" /><label
								class="member-input__label" for="placeholder">비밀번호</label>
						</div>

						<div class="find-box">
							<div class="login-check">
								<input type="checkbox" class="login-check-box"> <label
									class="login-check-box-label">로그인 상태 유지하기</label>
							</div>
							<span class="find-password-box"><a
								class="find-passwor-text" href="./pwdFind.jsp">비밀번호를
									잊으셨나요?</a></span>
						</div>
						<form action="./freeBoard.jsp">
						<button type="submit" class="login-button">로그인</button>
						</form>
						<div class="hello-text">
							OP.GG에 처음이세요?<span class="signUp-link"><a
								class="member-link" href="./memberJoin.jsp">회원가입하기</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>