<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="bbs.BbsDAO"/>
<%

int bbsno= Integer.parseInt(request.getParameter("bbsno"));
boolean flag= dao.checkRefnum(bbsno); 
 
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
function blist(){
	var url = "list.jsp";
	
	location.href=url
}
</script>
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 <% if(flag){ %>
 
 <DIV class="title">삭제</DIV>
<div class="content">답변글이 존재합니다.<br>
부모글을 삭제할 수 없습니다.

</div>
 <DIV class='bottom'>
   
    <input type='button' value='목록' onclick="blist()">
  </DIV>
 
 <%}else{ %> 
<DIV class="title">삭제</DIV>
<div class="content">삭제하면 복구할 수 없습니다.</div>
<FORM name='frm' method='POST' action='./deleteProc.jsp'
	  onsubmit="return incheck(this)">
<input type="hidden" name="bbsno" value="<%=bbsno %>"/>
<input type="hidden" name="oldfile" value="<%=request.getParameter("oldfile")%>">
<input type="hidden" name="col" value="<%=request.getParameter("col")%>">
<input type="hidden" name="word" value="<%=request.getParameter("word")%>">
<input type="hidden" name="nowPage" value="<%=request.getParameter("nowPage")%>">




  <TABLE>
    <TR>
      <TH>패스워드</TH>
      <TD><input type="password" name="passwd"></TD>
    </TR>
  </TABLE>
  
  <DIV class='bottom'>
    <input type='submit' value='확인'>
    <input type='button' value='취소' onclick="history.back()">
  </DIV>
</FORM>
 <%} %>
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 