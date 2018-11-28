<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.util.*" %>
<%@ page import="memo.*" %>
<%@ page import="team.*" %>
<%@ page import="address.*" %>
<%@ page import="bbs.*" %> 
<%@ page import="utility.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="member.*" %> 
<%@ page import="img.*" %> 
<% request.setCharacterEncoding("utf-8");  
	String root = request.getContextPath();
	%> 
 <jsp:useBean id="ddao" class="memo.memoDAO"/>
<jsp:useBean id="bdao" class="bbs.BbsDAO"/>
   
  