<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<style type="text/css">
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
	text-overflow: none;
	width: 500px;
	margin: auto;
	margin-top: 40px; 
}
#inputEmail {
	margin-bottom: 4px;
	font-size: 16px;
	width: 500px;
	border: white;
}
#inputName {
	margin-bottom: 4px;
	font-size: 16px;
	width: 500px;
	border: white;
	margin-top: 30px;
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
	<div id="logo">
		<img src="./LOGO.PNG">
	</div>
	<div id="input">
		<h2>기본정보입력</h2>
	</div>
	
	<div id="information">
		회원가입을 위해서 이메일 인증이 진행되며, 인증이 완료되기<br/>
	 	전까지 회원가입이 완료가 되지않습니다
	</div>
	
	<div id="emailNmae">
		<input id="inputEmail" type="text" placeholder="이메일 주소" value="">
		<hr/>	
		<input id="inputName" type="text" placeholder="닉네임" value="">
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

</body>
</html>