<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../ssi/ssi.jsp" %>
 
 <%	//검색관련처리 아무것도 없는상태에서 request.getparameter하면  null값을 가져오기때문에 nullpoint exception이 발생한다.
	String col = Utility.checkNull(request.getParameter("col"));
	String word = Utility.checkNull(request.getParameter("word"));
 	
 	if(col.equals("total")) word= ""; 
 	   
 	//paging관련      
 	int nowPage = 1;   
 	int recordPerPage = 5;   
 	
 	if(request.getParameter("nowPage")!=null){
 	nowPage = Integer.parseInt(request.getParameter("nowPage"));  //null포인트를 숫자로 바꾸면 numberformatException에 발생한다.(주의)
 	}
 	
 	//BD에서 가져올 레코드의 순번
 	
 	int sno = ((nowPage-1)*recordPerPage) + 1;
 	int eno = nowPage * recordPerPage;
 	
 	Map map = new HashMap();
 	map.put("col", col);
 	map.put("word", word); 
 	map.put("sno", sno);
 	map.put("eno", eno);
 	     
 	List<BbsDTO> list = bdao.list(map);
 	//전체 레코드 갯수(col.word)
 	int totalRecord = bdao.total(map);
 	 
 %>
<!DOCTYPE html> 
<html> 
<head>  
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function read(bbsno){
	var url = "read.jsp";
	url = url+ "?bbsno="+bbsno;  //?는 데이터라는것을 알려주기 위한것 이동경로 지정후 ?하는이유
	url = url+ "&col=<%=col%>";
	url = url+ "&word=<%=word%>"; 
	url = url+ "&nowPage=<%=nowPage%>";
	
	location.href=url; 
	
}
function fileDown(filename){
	var url = "<%=root%>/download";
	url = url + "?filename="+filename;
	url = url + "&dir=/bbs/storage";
	
	location.href= url;
}
</script>
<style type="text/css"> 
/* *{  */
/*   font-family: gulim;   */
/*   font-size: 20px;  */
/* }  */
.search{
	width:80%;
	text-align: center;
	margin:2px auto;
}
</style> 
</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 


 <div class="search"> 
 <form method="post" action="./list.jsp">
 <select name="col">
 <option value="wname" 
 <%if(col.equals("wname")) out.print("selected");%>
 >성명</option>
 
 <option value="title"
 <%if(col.equals("title")) out.print("selected");%>
 >제목</option>
 
 <option value="content" 
 <%if(col.equals("content")) out.print("selected");%>
 >내용</option>
 
 <option value="total">전체출력</option>
 </select> 
 <input type="text" name="word" value="<%=word %>">
 <button>검색</button> 
 <button type="button" onclick="location.href='createForm.jsp'">등록</button>
 </form>
 
 </div>
 <div class="container">
 <h2><span class="glyphicon glyphicon-th-list"></span>
 목록
 </h2>
  <TABLE class="table table-hover">
  <thead>
    <TR>
      <TH>번호</TH>
      <TH>제목</TH>
      <TH>성명</TH>
      <TH>조회수</TH>
      <TH>등록일</TH>
      <TH>파일명</TH>
      
     </TR>
     </thead>
<% 
if(list.size()==0){
%>
	<tbody>
	<tr><td colspan="6">등록된 글이 없습니다.</td></tr></tbody>
	
<%
}else{
	
	for(int i=0; i<list.size();i++){
		BbsDTO dto = list.get(i);
	
%>     
	<tbody>
     <tr>
     	<td><%=dto.getBbsno() %></td>
     	<td>
     	<%
     	for(int r=0; r<dto.getIndent(); r++){
     		out.print(" &nbsp;&nbsp;  ");
     	} 
     	if(dto.getIndent()>0){
     		out.print("<img src='../images/re.jpg'>");}
     	%> 
     	<a href="javascript:read('<%=dto.getBbsno() %>')">
     	<%=dto.getTitle() %></a>
     	<% 
     	if(Utility.compareDay(dto.getWdate()))
			out.print("<img src='../images/new.gif'>");
     	%> 
     	</td>
     	<td><%=dto.getWname() %></td>
     	<td><%=dto.getViewcnt() %></td>
     	<td><%=dto.getWdate() %></td>
     	<td><%if(dto.getFilename()!=null ){%>
     	<a href="javascript:fileDown('<%=dto.getFilename() %>')">
     <span class="glyphicon glyphicon-download-alt"></span></a> 
     		<%
     		}else{
     		out.print("파일없음");
     	} 
     	%>
     	 
     	
     	</td>
     	
     </tr> 
     </tbody>
 <%
	}//for-end
	
}//if-end
 
 %>    
 
  </TABLE>
  
  <DIV class='bottom'>
 	<%=Utility.paging3(totalRecord, nowPage, recordPerPage, col, word) %>

	</div>
        
  </DIV>

 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 