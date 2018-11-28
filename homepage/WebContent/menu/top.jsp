<%@ page contentType="text/html; charset=UTF-8" %> 
 
<%  
	String root = request.getContextPath();
	String id = (String)session.getAttribute("id");
	String grade = (String)session.getAttribute("grade");
%> 
  
  
<!DOCTYPE html>
<html>  
<title>W3.CSS Template</title>   
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
<style>
body,h1 {font-family: "Montserrat", sans-serif}
img {margin-bottom: -7px} 
.w3-row-padding img {margin-bottom: 12px}
body {
	margin:0; 
	padding:40px;  
	background:#fff; 
	font:80% Arial, Helvetica, sans-serif;
	color:#555;
	line-height:180%;
}

h1{
	font-size:180%;
	font-weight:normal;
	color:#555;
}
h2{ 
	clear:both;
	font-size:160%;
	font-weight:normal;
	color:#555;
	margin:0;
	padding:.5em 0;
}
a{
	text-decoration:none;
	color:#f30;	
	font-family:Montserrat;
}
p{
	clear:both;
	margin:0;
	padding:.5em 0;
}
pre{
	display:block;
	font:100% "Courier New", Courier, monospace;
	padding:10px;
	border:1px solid #bae2f0;
	background:#e3f4f9;	
	margin:.5em 0;
	overflow:auto;
	width:800px;
}

/* img{ */
/* border:none; */
/* witdth: 100%; height: 500px; */

}  
ul,li{
	margin:0;
	padding:0;
	
}
li{
	list-style:none;
	float:left;
	display:inline;
	margin-right:10px;
}
#preview{
	
	position:absolute;
	border:1px solid #ccc;
	background:#333;
	padding:5px; 
	display:none;
	color:#fff;
  
	} 
	div{
	font-size:10pt;
	}
li#admin{
float:right;
padding-right: 30px
}
</style> 
<body>   
  
<!-- Sidebar --> 
<nav class="w3-sidebar w3-black w3-animate-top w3-xxlarge" style="max-width:1000px;display:none;padding-top:80px;
	width:100%; height:90%; text-align:center; position:absolute; left:50%; transform:translateX(-50%);" " id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-black w3-xxlarge w3-padding w3-display-topright" style="padding:6px 24px">
    <i class="fa fa-remove"></i>
  </a> 
  <div class="w3-bar-block w3-center">   
    <a href="<%=root%>/index.jsp" class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size: 36px!important; font-family:Montserrat; margin-top:40px;">Home</a><br><br>
     <% if(id==null) {%> 
  
 <a href="<%=root %>/member/agreement.jsp" class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size: 36px!important; font-family:Montserrat; margin-top:40px">회원가입</a><br><br>
 <a href="<%=root %>/member/loginForm.jsp" class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size: 36px!important; font-style:normal; margin-top:40px">로그인</a><br><br>
   
 <%}else{  %>   
 <a href="<%=root %>/member/read.jsp"   class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size: 36px!important; font-family:Montserrat;">내 정보</a><br><br>
 <a href="<%=root %>/member/logout.jsp" class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size: 36px!important; font-family:Montserrat;">로그아웃</a><br><br>
   
    <a href="<%=root %>/memov3/list.jsp" class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size: 36px!important; font-family:Montserrat;">업로드 게시판</a><br><br>
    <a href="<%=root %>/Img/list.jsp" class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size: 36px!important; font-family:Montserrat;">이미지 게시판</a><br><br>
    <a href="<%=root %>/bbs/list.jsp" class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size:29pt; font-family:Montserrat;">방명록</a><br><br>
 <% }  %> 
    <%if(id!=null&&grade.equals("A")){%>
    <a href="<%=root %>/admin/list.jsp" class="w3-bar-item w3-button w3-text-grey w3-hover-black" style="font-size: 36px!important; font-family:Montserrat;">회원관리목록</a><br><br>
   <% }%> 
  </div>
</nav>    
 </div>
<!-- !PAGE CONTENT! -->
<div class="w3-content" style="max-width:1500px">
 
<!-- Header -->    
 
<div class="w3-opacity">
<span class="w3-button w3-xxlarge w3-white w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></span> 
<div class="w3-clear"></div>
<header class="w3-center w3-margin-bottom"> 
</header> 
</div> 

  
<!-- Photo Grid -->  



<!-- End Page Content --> 

</div> 
<!-- Footer --> 

<script src="./menu/images/jquery.js" type="text/javascript"></script>
<script src="./menu/images/main.js" type="text/javascript"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">


//Toggle grid padding
var myIndex = 0;
carousel();

function carousel() { 
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  myIndex++; 
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
} 


 
function myFunction() {
  var x = document.getElementById("myGrid");
  if (x.className === "w3-row") {
      x.className = "w3-row-padding";
  } else { 
      x.className = x.className.replace("w3-row-padding", "w3-row");
  }
}
 
//Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.width = "100%";
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}


</script>
<!-- 상단 메뉴 끝 --> 
 
 
  
<!-- 내용 시작 -->
<div style="width: 100%; padding-top: 10px;">

</body>
</html>

