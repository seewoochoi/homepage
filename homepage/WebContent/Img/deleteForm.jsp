<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
<%
int no =  Integer.parseInt(request.getParameter("no"));
%>
 
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
</style> 
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->

<DIV class="title">삭제</DIV>
 
<FORM name='frm' method='POST' action='./deleteProc.jsp'>
<input type="hidden" name="no"  value="<%=no%>">




<div class = "content">
정말 삭제 하시겠습니까?
</div>
  <table>
<tr>
<td>비밀번호</td>

<td><input type="password" name="passwd">

</tr>
</table>
  <DIV class='bottom'>
    <input type='submit' value='삭제' >
    <input type='button' value='취소' onclick="history.back()">
  </DIV>
</FORM>
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 