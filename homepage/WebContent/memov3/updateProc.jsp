<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="memo.memoDAO" />
<jsp:useBean id="dto" class="memo.memoDTO" />
<jsp:setProperty name="dto" property="*"/>
<%
	
	boolean flag = dao.update(dto);
%>
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
 margin-top:100px;
 }
</style> 
</head> 
<body> 
<div>
<%
if(flag){
	out.print("메모를 수정했습니다.");
}else{
	out.print("메모수정이 실패했습니다.");
}
%>
<br> 
<input type="button" value="목록"
onclick="location.href='./list.jsp?col=<%=request.getParameter("col")%>&word=<%=request.getParameter("word")%>&nowPage=<%=request.getParameter("nowPage")%>'">
</div> 
</body>  
</html> 
