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
	.biggestDiv {
		width: 1000px;
		height: 400px;
		margin: auto;
	}
	.noticeHeaderTextDiv {
		height: 22px;
		border: 6px solid #EBA631;
		border-width: 0 0 0 8px;
		margin-top: 40px;
		font-size: 16px;
		font-weight: bold;
	}
	.bottomLineDiv {
		width: 900px;
		border: 1px solid gray;
		border-width: 0 0 1 0px;
	}
	.freeBoardMainDiv {
		height: 260px;
	}
	.noticeSmallTextDiv {
		height: 22px;
		padding-top: 16px;
		padding-bottom: 2px;
	}
	.tableHeader {
		background-color: #A18F67;
		color: #FFFFFF;
		height: 30px;
	}
	.noTh {
		width: 60px;
	}
	.titleTh {
		width: 500px;
	}
	.writerTh {
		width: 120px;
	}
	.writeDateTh {
		width: 120px;
	}
	.viewTh {
		width: 80px;
	}
	.bodyTr {
		height: 30px;
	}
	.firstTd {
		font-weight: bold;
		text-align: center;
	}
	.secondTd {
		font-weight: bold;
	}
	.fourthTd {
		text-align: center;
	}
	.fifthTd {
		text-align: center;
	}
	.footerTopDiv {
		height: 40px;
	}
	.floatLeftDivs {
		float: left;
		margin-top: 1px;
	}
	.selectTag {		
		height: 24px;
	}
	#textInput {
		margin-top: 0px;
		margin-left: 8px;
	}
	.textInput {
		height: 18px;
	}
	.searchButton {
		margin-left: 8px;
		box-shadow: 1.5px 1.5px #D5D5D5;
	}
	#blankDiv {
		width: 500px;
		border: 0px solid black;
		background-color: white;
	}
	.writeButton {
		box-shadow: 1.5px 1.5px #D5D5D5;
	}
	.footerBottomDiv {
		height: 40px;
		text-align: center;
	}
	.switchButton {
		border: 0px;
	}
	
</style>
   <script type="text/javascript">
      
   </script>
</head>

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
		
		<button id="loginBtn" class="headerImgR">로그아웃</button>
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
	<div class='biggestDiv'>
		<div class='noticeHeaderTextDiv'>&nbsp;공지사항</div>
		<div class='bottomLineDiv'></div>
		<div class='freeBoardMainDiv'>
			<div class='noticeSmallTextDiv'><span style="color: #EBA631; font-weight: bold;">↘</span> 아람보감에서 알려드려요. 꼭 읽어주세요 :)</div>
			<table>
				<tr class='tableHeader'>
					<th class='noTh'>번호</th>
					<th class='titleTh'>제목</th>
					<th class='writerTh'>작성자</th>
					<th class='writeDateTh'>작성일</th>
					<th class='viewTh'>조회</th>
				</tr>
				<tr class='bodyTr'>
					<td class='firstTd'>공지</td>
					<td class='secondTd'>[EVENT] 아람보감 블로그와 이웃을 맺으면 적립금을 쏜다!</td>
					<td>아람보감★</td>
					<td class='fourthTd'>2012-11-06</td>
					<td class='fifthTd'>0</td>
				</tr>
				<tr class='bodyTr'>
					<td class='firstTd'>공지</td>
					<td class='secondTd'>#[MBC 생방송 오늘 아침] 빼빼목 방영 이후 인기 폭발!!!</td>
					<td>아람보감★</td>
					<td class='fourthTd'>2012-10-26</td>
					<td class='fifthTd'>3</td>
				</tr>
			</table>
			<div class='footerTopDiv'>
				<div class='floatLeftDivs'>
					<select class='selectTag'>
						<option selected>제목</option>
						<option>작성자</option>
					</select></div>
				<div class='floatLeftDivs' id='textInput'>
					<input class='textInput' type='text'>
				</div>
				<div class='floatLeftDivs'>
					<button class='searchButton'><img style="width: 15px; height: 15px;" src="./imgRJG/search.jpg"/>찾기</button>
				</div>
				<div class='floatLeftDivs' id='blankDiv'></div>
				<div class='floatLeftDivs'>
					<button class='writeButton' onclick="location.href='freeBoardDetail.jsp'"><img style="width: 15px; height: 15px;" src="./imgRJG/pencil.jpg"/>글쓰기</button>
				</div>
			</div>
			<div class='footerBottomDiv'>
				<button class='switchButton'>[이전]</button>
				<span style="color: #FF0000; font-weight: bold;">1</span>
				<button class='switchButton'>[다음]</button>
			</div>
		</div>
	</div>

</body>
</html>