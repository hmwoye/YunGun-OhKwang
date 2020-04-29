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
		background-color: white;
	}
	
</style>
<script type="text/javascript" >
	
	window.onload = function() {
		var thisUrl = decodeURIComponent(location.href);
		if (location.href != 'http://localhost:8090/gameCommunity/freeBoard.jsp') {
			
			var UrlList = thisUrl.split('&');
			var nameUrl = UrlList[0];
			var pwdUrl = UrlList[1];
			var emailUrl = UrlList[2];
			var titleUrl = UrlList[3];
			var contUrl = UrlList[4];
			var count =1;
			
			var today = new Date();   

			var year = today.getFullYear(); // 년도
			var month = today.getMonth() + 1;  // 월
			if(month/10<1){ 
				month = '0'+month; 
			}
			var date = today.getDate();  // 날짜
			if(date/10<1){	
				date = '0'+date; 
			}
			
			var dateStr = year +"-"+month+"-"+date;

			var startNum= nameUrl.indexOf('=')+1;
			var getName = nameUrl.substring(startNum, nameUrl.length);
			var startNum= titleUrl.indexOf('=')+1;
			var getTitle = titleUrl.substring(startNum, titleUrl.length);
			var findPlus = 1;
			
			while (findPlus>=0) {
				findPlus= getTitle.indexOf('+');
				getTitle= getTitle.replace('+',' ');
			}
			
			var copyTr = document.createElement('tr');
			var copyTd1 = document.createElement('td');
			var copytext1 = document.createTextNode(count);
			var copyTd2 = document.createElement('td');
			var copytext2 = document.createTextNode(getTitle);
			var copyTd3 = document.createElement('td');
			var copytext3 = document.createTextNode(getName);
			var copyTd4 = document.createElement('td');
			var copytext4 = document.createTextNode(dateStr);
			var copyTd5 = document.createElement('td');
			var copytext5 = document.createTextNode(0);
			
			copyTd1.setAttribute('style', 'text-align : center; font-weight : bold;');
			copyTd2.setAttribute('style', 'font-weight : bold;');
			copyTd4.setAttribute('style', 'text-align : center;');
			copyTd5.setAttribute('style', 'text-align : center;');
			
			copyTr.appendChild(copyTd1);
			copyTr.appendChild(copyTd2);
			copyTr.appendChild(copyTd3);
			copyTr.appendChild(copyTd4);
			copyTr.appendChild(copyTd5);
			copyTd1.appendChild(copytext1);
			copyTd2.appendChild(copytext2);
			copyTd3.appendChild(copytext3);
			copyTd4.appendChild(copytext4);
			copyTd5.appendChild(copytext5);
			
			document.getElementsByTagName('table')[0].appendChild(copyTr);
		}
		
		var searchButtonObj = document.getElementsByClassName('searchButton')[0];
		var selectTagObj = document.getElementsByClassName('selectTag')[0];
		var firstOptObj = document.getElementById('firstOpt').value;
		var secondOptObj = document.getElementById('secondOpt').value;
		searchButtonObj.setAttribute("onmouseenter", "selectFnc();");
	}
	
	function selectFnc() {
		var searchButtonObj = document.getElementsByClassName('searchButton')[0];
		var selectTagObj = document.getElementsByClassName('selectTag')[0];
		var firstOptObj = document.getElementById('firstOpt').value;
		var secondOptObj = document.getElementById('secondOpt').value;
		if(selectTagObj.options[selectTagObj.selectedIndex].value === firstOptObj) {
			searchButtonObj.setAttribute("onclick", "testFnc();");
		}else if(selectTagObj.options[selectTagObj.selectedIndex].value === secondOptObj){
			searchButtonObj.setAttribute("onclick", "testFnc2();");
		}
	}
	
	function testFnc() {
		var textInputValue = document.getElementsByClassName('textInput')[0].value;	
		var titleTdList = document.getElementsByClassName('secondTd');
		var writerTdList = document.getElementsByClassName('thirdTd');
		//몇 번 등장하는지 => count //몇 개를 검색했는지 => totalNum //몇 번째 줄에 있었는지 => index
		var count = 0;
		var totalNum = 0;
		var titleStrArr = new Array();
		var writerStrArr = new Array();
		var indexArr = new Array();
		for (var i = 0; i < titleTdList.length; i++) {
			totalNum++;
			titleStrArr[i] = titleTdList[i].textContent;
			if(titleStrArr[i].indexOf(textInputValue) != -1) {
				count++;
				indexArr.push(totalNum);
				var bodyTrList = document.getElementsByClassName('bodyTr');
				bodyTrList[totalNum-1].children[1].setAttribute("style", "background-color: #9B3A67;");
			}
		}
		var totalNumStr = '번째 줄까지의 검색 결과';
		totalNumStr = totalNum + totalNumStr;
		alert(totalNumStr);
		
		if(count > 0) {
			var indexArrStr = indexArr.join(',');
			var resultStr = '찾는 내용이 총 ';
			resultStr = resultStr + count + '회 등장하고 \n' + indexArrStr + '번째 줄에 있습니다';
			alert(resultStr);
			
		}else {
			alert('찾는 내용이 없습니다');
		}
	}
	
	function testFnc2() {
		var textInputValue = document.getElementsByClassName('textInput')[0].value;	
		var titleTdList = document.getElementsByClassName('secondTd');
		var writerTdList = document.getElementsByClassName('thirdTd');
		//몇 번 등장하는지 => count //몇 개를 검색했는지 => totalNum //몇 번째 줄에 있었는지 => index
		var count = 0;
		var totalNum = 0;
		var titleStrArr = new Array();
		var writerStrArr = new Array();
		var indexArr = new Array();
		for (var i = 0; i < writerTdList.length; i++) {
			totalNum++;
			writerStrArr[i] = writerTdList[i].textContent;
			if(writerStrArr[i].indexOf(textInputValue) != -1) {
				count++;
				indexArr.push(totalNum);
				var bodyTrList = document.getElementsByClassName('bodyTr');
				bodyTrList[totalNum-1].children[2].setAttribute("style", "background-color: #9B3A67;");
			}
		}
		var totalNumStr = '번째 줄까지의 검색 결과';
		totalNumStr = totalNum + totalNumStr;
		alert(totalNumStr);
		
		if(count > 0) {
			var indexArrStr = indexArr.join(',');
			var resultStr = '찾는 내용이 총 ';
			resultStr = resultStr + count + '회 등장하고 \n' + indexArrStr + '번째 줄에 있습니다';
			alert(resultStr);
			
		}else {
			alert('찾는 내용이 없습니다');
		}
	}
	
</script>

</head>

<body>
<%-- <%
//request 객체로부터 파라미터를 가져옴.
String userName = request.getParameter("getName");
String userTitle = request.getParameter("getTitle");
String userContent = request.getParameter("getContent");
int count = 1;
%> --%>
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
				<%-- <%if(userName.length()>0){
					out.print("<tr class='bodyTr'>");
						out.print("<td class='firstTd'>");
						out.print(count);
						out.print("</td>");
						out.print("<td class='secondTd'>");
						out.print(userTitle);
						out.print("</td>");
						out.print("<td class='fourthTd'>");
						out.print(userName);
						out.print("</td>");
						out.print("<td class='fifthTd'>");
						out.print("2020-04-28");
						out.print("</td>");
						out.print("<td class='fifthTd'>");
						out.print(0);
						out.print("</td>");
					out.print("</tr>");
					count++;
					}
				%> --%>
				
				<tr class='bodyTr'>
					<td class='firstTd'>공지</td>
					<td class='secondTd'>[EVENT] 아람보감 블로그와 이웃을 맺으면 적립금을 쏜다!</td>
					<td class='thirdTd'>아람보감★</td>
					<td class='fourthTd'>2012-11-06</td>
					<td class='fifthTd'>0</td>
				</tr>

				<tr class='bodyTr'>
					<td class='firstTd'>공지</td>
					<td class='secondTd'>#[MBC 생방송 오늘 아침] 빼빼목 방영 이후 인기 폭발!!!</td>
					<td class='thirdTd'>아람보감★</td>
					<td class='fourthTd'>2012-10-26</td>
					<td class='fifthTd'>3</td>
				</tr>
				
			</table>
			<div class='footerTopDiv'>
				<div class='floatLeftDivs'>
					<select class='selectTag'>
						<option id='firstOpt' value="제목">제목</option>
						<option id='secondOpt' value="작성자">작성자</option>
					</select></div>
				<div class='floatLeftDivs' id='textInput'>
					<input class='textInput' type='text'>
				</div>
				<div class='floatLeftDivs'>
					<button class='searchButton'><img style="width: 15px; height: 15px;" src="./img/search.jpg"/>찾기</button>
				</div>
				<div class='floatLeftDivs' id='blankDiv'></div>
				<div class='floatLeftDivs'>
					<button class='writeButton' onclick="location.href='freeBoardDetail.jsp'"><img style="width: 15px; height: 15px;" src="./img/pencil.jpg"/>글쓰기</button>
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