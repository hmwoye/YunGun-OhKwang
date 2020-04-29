	//============================board===================================//

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
		
		var listButtonObj = document.getElementById('listButton');
		listButtonObj.addEventListener('mouseenter', testFnc, false);
		
		var contentList = document.getElementsByTagName('inputBox');
		var a = contentList[0].textContent;
		alert(a);


	}
	
	
	//============================boardDetail===================================//


function testFnc() {
	var listButtonObj = document.getElementById('listButton');
	listButtonObj.setAttribute("onclick", "location.href='javascript:history.back();'");
}

function checkFnc() {
	var inputStr = document.getElementsByTagName('input');
	var inputTextarea = document.getElementById('writeBox');

	
	if(inputStr[0].value == '') {
		alert('이름을 입력해 주세요');
		return false;
	}else if (inputStr[1].value == '') {
		alert('비밀번호를 입력해 주세요');
		return false;
	}else if (inputStr[2].value == '') {
		alert('이메일을 입력해 주세요');
		return false;
	}else if (inputStr[3].value == '') {
		alert('홈페이지를 입력해 주세요');
		return false;
	}else if (inputStr[4].value == '') {
		alert('제목 입력해 주세요');
		return false;
	}else if (inputTextarea.value == '') {
		alert('내용을 입력해 주세요');
		return false;
	}else{
		alert('게시글이 등록되었습니다');	
	}
	
	
	
}
