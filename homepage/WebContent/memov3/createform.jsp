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
  font-size: 24px; 
} 
div{
text-align:center;
margin-top:20px;
margin-bottom:20px;
}
table{
width:50%;
margin: 0 auto
}
table,th,td{
border:1px solid black;
border-collapse:collapse;
}
</style> 
<script type="text/javascript">
//f는 this를 그러니까 form을 나타내는 것이다.
function incheck(f){
	if(f.passwd.value==""){
	alert("비밀번호를 입력하세요");
	return false;
	}
	if(f.title.value==""){
	alert("제목을 입력하세요");
	f.title.focus();
	return false; //return false;하면 submit이 안된다.
	}
	if(f.content.value==""){
	alert("내용을 입력하세요");
	f.content.focus();
	return false; //return false;하면 submit이 안된다.
	}
	
}
</script> 
</head> 
<body> 
<jsp:include page="/menu/top.jsp"/>
<div>등록</div>
<form name="frm" method="POST" action="./createProc.jsp"
onsubmit="return incheck(this)">
<table>
<tr>
<th>제목</th>
<td>
<input type="text" name="title" size="30" value="두시회의"/>
</td>
</tr>
<tr>
<th>내용</th>
<td>
<textarea rows="10" cols="30" name="content">SQL관련</textarea>
</td>
</tr>
<tr>
<th>비밀번호</th>
<td>
<input type="password" name="passwd">
</td>
</tr>
</table>
<div>
<input type="submit" value="전송">
<input type="button" value="취소" onclick="history.back()">
</div>
</form>
<jsp:include page="/menu/bottom.jsp"/>

</body> 
</html> 