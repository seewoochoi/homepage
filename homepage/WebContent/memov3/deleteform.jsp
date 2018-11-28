<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="memo.memoDAO"/>
<%
int memono = Integer.parseInt(request.getParameter("memono"));

boolean flag= dao.checkRefnum(memono);

System.out.print(flag);
  


%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function incheck(f){
	if(f.passwd.value==""){
		alert("비번을 입력하세요");
		f.passwd.focus();
		return false;
	}
	
}
</script>
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 24px; 
} 
div{
text-align: center;
margin-top:20px;
margin-bottom:20px;
}
</style>   
</head> 
 
<body> 
<jsp:include page="/menu/top.jsp"/>
 <% if(flag){ %>
<div class="content">답변글이 존재합니다.<br>
부모글을 삭제할 수 없습니다.
</div>
<div class='bottom'>
<input type="button" value="목록" onclick="location.href='./list.jsp?col=<%=request.getParameter("col")%>&word=<%=request.getParameter("word")%>&nowPage<%=request.getParameter("nowPage")%>'">
</div> 
 <%}else{ %> 
<div class="content">
삭제를 하면 복구 될 수 없습니다.<br><br>
삭제하시려면 삭제버튼을 클릭하세요<br><br>
취소는 '목록'버튼을 누르세요 <br><br></div>
<form method="post" action='./deleteProc.jsp'
onsubmit="return incheck(this)"> 
 
<input type="hidden" name="memono" value="<%=memono%>"> 
<input type="hidden" name="col" value="<%=request.getParameter("col")%>"> 
<input type="hidden" name="word" value="<%=request.getParameter("word")%>"> 
<input type="hidden" name="nowPage" value="<%=request.getParameter("nowPage")%>">


  <TABLE>
    <TR>
      <TH>패스워드</TH>
      <TD><input type="password" name="passwd"></TD>
    </TR>
  </TABLE>
  
 <div class='bottom'>
<input type="submit" value="삭제처리"> 
<input type="button" value="취소" onclick="history.back()"> 
 
</div>
</form>  
<%}System.out.print(flag); %>
<jsp:include page="/menu/bottom.jsp"/>
</body> 
</html> 