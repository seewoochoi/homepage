<%@ page contentType="text/html; charset=UTF-8" %> 
<% request.setCharacterEncoding("utf-8"); %> 

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
#idcss{
	color: #ff0000;
	background-color: #ffff00;
	font=size: 50px;
	text-align: center;
	width:35%;
	margin:0 auto;
}
</style>  
<link href="./style.css" rel="stylesheet" type="text/css">
</head> 
<body> 
<div class='title'>게시판 version 2.0</div>

<div class='content'>내용</div>

<TABLE class='table'>
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>내용</th>
</tr>
	<tr>
	<td align='center'>1</td>
	<td align='center'>월요일</td>
	<td>첫눈</td>
	</tr>
<tr>
	<td align='center'>2</td>
	<td align='center'>수요일</td>
	<td>메모장 테스트</td>
</tr>
<tr>
	<td align='center'>3</td>
	<td align='center'>수요일</td>
	<td>메모장 테스트</td>
</tr>
	
</TABLE>
<div class='content'>
 <a href='http://www.kma.go.kr'>기상청</a>
</div>

<div id='idcss'>
	<br>
	고유한 CSS적용
	<br><br>
</div>
<div class='bottom'>하단 메뉴</div>
</body> 
</html> 