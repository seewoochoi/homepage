<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="member.memberDAO"/>
<%
	String id = request.getParameter("id");
	if(id==null)id= (String)session.getAttribute("id");

	memberDTO dto = dao.read(id);
%> 
<!DOCTYPE html>    
<html>  
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function mdel(){
	var url ="deleteForm.jsp";
	url = url + "?id=<%=id%>";
	location.href= url;
}
function mupdate(){
	var url = "updateForm.jsp";
	url = url + "?id=<%=id%>";
	 
	location.href=url;
}
function updateFile(){
	var url = "updateFileForm.jsp";
	url += "?id=<%=dto.getId()%>";
	url += "&oldfile=<%=dto.getFname()%>";
	
	location.href=url;
}
function updatePw(){
	var url= "updatePwForm.jsp";
	url += "?id=<%=dto.getId()%>";
	
	
	location.href=url;
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
 
<DIV class="title"><%=dto.getMname() %>의 회원정보</DIV>
 
<FORM name='frm' method='POST' action='./.do'>
  <TABLE>
    <TR>
     <TD colspan="2"><img src='./storage/<%=dto.getFname()%>'>
     </TD> 
    </TR>
    <TR>
      <TH>아이디</TH>
      <TD><%=dto.getId() %></TD>
    </TR>
    <TR>
      <TH>성명</TH>
      <TD><%=dto.getMname() %></TD>
    </TR>
    <TR>
      <TH>전화번호</TH>
      <TD><%=dto.getTel() %></TD>
    </TR>
    <TR>
      <TH>이메일</TH>
      <TD><%=dto.getEmail() %></TD>
    </TR>
    <TR> 
      <TH>우편번호</TH>
      <TD><%=dto.getZipcode() %></TD>
    </TR>
    <TR> 
      <TH>주소</TH>
      <TD><%=dto.getAddress1() %>
      	  <%=Utility.checkNull(dto.getAddress2()) %>
      	  </TD>
    </TR>
    <TR> 
      <TH>직업</TH>
      <TD><%=dto.getJob() %>(<%=Utility.getCodeValue(dto.getJob()) %>)
      </TD>
    </TR>
   
  </TABLE>
  
  <DIV class='bottom'>
    <input type='button' value='정보수정' onclick="mupdate()">
    <input type='button' value='사진수정' onclick="updateFile()">
    <input type='button' value='패스워드 변경' onclick="updatePw()">
    <input type='button' value='회원 탈퇴' onclick="mdel()">
  </DIV> 
</FORM> 
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 