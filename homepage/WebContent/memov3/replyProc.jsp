<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
 <jsp:useBean id="dao" class="memo.memoDAO"/>
 <jsp:useBean id="dto" class="memo.memoDTO"/>
 <jsp:setProperty property="*" name="dto" />
  
 <%
	 int memono = Integer.parseInt(request.getParameter("memono"));
	 

	Map map = new HashMap();
	map.put("grpno", dto.getGrpno());
	map.put("ansnum", dto.getAnsnum());

	dao.upAnsnum(map);
	boolean flag=dao.replyCreate(dto);
 %>
<!DOCTYPE html>    
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script>
function mlist(){
	var url = "list.jsp";
	
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

<DIV class="title">처리결과</DIV>
 
	<div class="content">
	<%
	if(flag){
		out.print("답변이 등록되었습니다.");
	}else{
		out.print("답변등록이 실패했습니다.");
	}

	%>	
  
	</div> 
  
  <DIV class='bottom'>
    <input type='button' value='목록' onclick="mlist()">
    <input type='button' value='등록' onclick="location.href='replyform.jsp?memono=<%=memono%>&col=<%=request.getParameter("col")%>&word=<%=request.getParameter("word")%>&nowPage=<%=request.getParameter("nowPage")%>'">
  </DIV>

 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 