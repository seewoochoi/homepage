<%@ page contentType="text/html; charset=UTF-8"%>

<%@include file="../ssi/ssi.jsp"%>
<jsp:useBean id="dao" class="img.ImgDAO" />
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String passwd = request.getParameter("passwd");	
	
	Map map = new HashMap();
	map.put("no", no);
	map.put("passwd", passwd);
	 
	boolean flag = false;
	boolean pflag = dao.passCheck(map);
	if(pflag){
		flag = dao.delete(no);
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
* {
	font-family: gulim;
	font-size: 24px;
}
 
div {
	text-align: center;
	margin-top: 100px;
}
</style>
<script type="text/javascript">
function ilist() {
	var url = "list.jsp";

	location.href = url;
}
</script>
</head> 
<body>
	<div>
		<%
if(pflag){
	out.print("삭제 성공");
	
}else{
	out.print("삭제 실패");
}
		%>
		<br> <input type="button" value="목록" onclick="ilist()">
	</div>
</body>
</html>