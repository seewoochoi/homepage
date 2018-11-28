<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
<jsp:useBean id="dao" class="memo.memoDAO"/>
<%
int memono = Integer.parseInt(request.getParameter("memono"));
String passwd = request.getParameter("passwd");
 Map map = new HashMap();
 map.put("memono", memono);
 map.put("passwd", passwd);
 
 boolean pflag = ddao.passwdCheck(map);
 boolean flag = false;
 if(pflag){
	 flag = dao.delete(memono);
 } 
    


%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function mlist(){
	var url = "list.jsp";  
	url = url +"?col=<%=request.getParameter("col")%>";
	url = url +"&word=<%=request.getParameter("word")%>";
	url = url +"&nowPage=<%=request.getParameter("nowPage")%>";
	
	location.href = url;
}
</script>
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 24px; 
} 
div{
text-align: center;
margin-top:100px;
}
</style> 
</head> 
<body>
<div>
<%
	if(pflag==false){
		out.print("패스워드가 일치하지 않습니다.");
	}else if(flag){
	out.print("메모를 삭제했습니다.");
	}else{
	out.print("메모삭제를 실패했습니다.");
	}
	
		 
		
%>
 
</div>
<div class="bottom">
<input type="button" value="목록" onclick="mlist()">
<input type="button" value="다시시도" onclick="history.back()">
</div> 

</body> 
</html> 
