<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="member.memberDAO"/>
<%
	
	String id = request.getParameter("id");
	dao.read(id);
	memberDTO dto = dao.read(id);
%>
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function inCheck(f){
	if(f.passwd.value==""){
		alert("패스워드를 입력하세요");
		f.passwd.focus();
		return false;
	}
	if(f.newpasswd.value==""){
		alert("새 패스워드를 입력하세요");
		f.newpasswd.focus();
		return false;
	}
	if(f.repasswd.value==""){
		alert("새패스워드 확인을 입력하세요");
		f.repasswd.focus();
		return false;
	}
	if(f.newpasswd.value!=f.repasswd.value){
		alert("비밀번호가 일치하지 않습니다. 다시 입력하세요.");
		f.passwd.focus();
		return false;
	}
	if(f.newpasswd.value==f.passwd.value){
		alert("기존 비밀번호가 같습니다. 다시 입력하세요");
		f.newpasswd.focus();
		return false;
	}
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
 
<DIV class="title">패스워드 변경</DIV>
 
<FORM name='frm' method='POST' 
	  action='./updatePwProc.jsp'
	  onsubmit="return inCheck(this)">
	  <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
	  <input type="hidden" name="passwd" value="<%=request.getParameter("passwd")%>">
  <TABLE>
    <TR>
      <TH>기존 패스워드</TH>
      <TD><input type="password" name="passwd" value="<%=dto.getPasswd()%>"></TD>
    </TR> 
    <TR> 
      <TH>변경 후 패스워드</TH>
      <TD><input type="password" name="newpasswd"></TD>
    </TR>
    <TR> 
      <TH>패스워드확인</TH>
      <TD><input type="password" name="repasswd"></TD>
    </TR>
  </TABLE>
  
  <DIV class='bottom'>
    <input type='submit' value='패스워드 수정'>
    <input type='button' value='취소' onclick="history.back()">
  </DIV>
</FORM>
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 