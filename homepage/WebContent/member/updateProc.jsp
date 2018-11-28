<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="member.memberDAO"/>
<jsp:useBean id="dto" class="member.memberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	boolean flag= dao.update(dto);
%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function mread(){
	var url = "read.jsp";
	url = url + "?id=<%=dto.getId()%>";
	
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
 
<DIV class="title">정보수정</DIV>

<div class="content">
<%
	if(flag){
		out.print("정보수정을 성공했습니다.");
	}else{
		out.print("정보수정을 실패했습니다.");
	}
%>
 </div> 
   
  <DIV class='bottom'>
    <input type='button' value='정보확인' onclick="mread()">
    <input type='button' value='다시시도' onclick="history.back()">
  </DIV>

 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 