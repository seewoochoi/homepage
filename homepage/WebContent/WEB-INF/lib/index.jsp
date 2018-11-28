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

img{
border:none;
witdth: 100%; height: 500px;

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

</style> 
<body>  
 
<!-- Sidebar -->
<nav class="w3-sidebar w3-black w3-animate-top w3-xxlarge" style="max-width:1500px;display:none;padding-top:240px;
	width:100%; height:90%; position:absolute;" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-black w3-xxlarge w3-padding w3-display-topright" style="padding:6px 24px">
    <i class="fa fa-remove"></i>
  </a>
  <div class="w3-bar-block w3-center">  
    <a href='member/agreement.jsp' class="w3-bar-item w3-button w3-text-grey w3-hover-black">회원가입</a><br>
    <a href="mem" class="w3-bar-item w3-button w3-text-grey w3-hover-black">업로드 게시판</a><br>
    <a href="#" class="w3-bar-item w3-button w3-text-grey w3-hover-black">이미지 게시판</a><br>
    <a href="#" class="w3-bar-item w3-button w3-text-grey w3-hover-black">방명록</a><br>
  </div>
</nav>   
 
<!-- !PAGE CONTENT! -->
<div class="w3-content" style="max-width:1500px">
 
<!-- Header -->  
<div class="w3-opacity">
<span class="w3-button w3-xxlarge w3-white w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></span> 
<div class="w3-clear"></div>
<header class="w3-center w3-margin-bottom">
  <h1><b>♣어서오세요♣</b></h1>
  <p><b>내가 찍은 세상 by SEOWOO.</b></p>
  <p class="w3-padding-16"><button class="w3-button w3-black" onclick="myFunction()" style=color:black>사진블로그에 오신걸 환영합니다.</button></p>
</header> 
</div> 
  
<!-- Photo Grid -->  

<div class="w3-row" id="myGrid" style="margin-bottom:128px; margin-left:125px;">
  <div class="w3-third" style="witdth: 100%; height: 300px;">
   <a href=https://www.starbucks.com/><img class="w3-padding w3-padding-hor-16" src="./menu/images/1.jpg" style="width:100%; height:90%; align:right;" ></a>
    <a href=http://www.kkc.or.kr/main/main.html><img class="w3-padding w3-padding-hor-16" src="./menu/images/2.jpg" style="width:100%; height:90%; align:right; "></a>
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/3.jpg" style="width:100%; height:90%; align:right;">
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/4.jpg" style="width:100%; height:90%; align:right;">
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/5.jpg" style="width:100%; height:90%; align:right;">
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/6.jpg"  style="width:100%; height:90%; align:right;">
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/20.jpg" style="width:100%; height:90%; align:right;">
    
 
  </div>   
  <div class="w3-third" style="display: inline-block; width:20%;">  
	<a href="./menu/images/21.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/21.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a>
  <a href="./menu/images/22.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/22.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a> 
  <a href="./menu/images/19.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/19.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a> 
  <a href="./menu/images/24.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/24.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a> 
  <a href="./menu/images/25.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/25.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a> 
   <a href="./menu/images/7.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/7.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a> 
  <a href="./menu/images/8.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/8.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a> 
  <a href="./menu/images/9.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/9.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a> 
  <a href="./menu/images/10.jpg" class="preview"><img class="w3-padding w3-padding-hor-16" src="./menu/images/10.jpg" 
  alt="gallery thumbnail" style="width:100%; height:90%; align:left; "></a> 
  </div>   

   

  <div class="w3-third" style="witdth: 100%; height: 300px;"> 
  <a href=http://vancouver-chinatown.com><img class="w3-padding w3-padding-hor-16" src="./menu/images/13.jpg" style="width:100%; height:90%; align:left;"></a>
  <a href=http://www.catcare.or.kr><img class="w3-padding w3-padding-hor-16" src="./menu/images/14.jpg" style="width:100%; height:90%; align:left;"></a>
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/15.jpg" style="width:100%; height:90%; align:left;">
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/16.jpg" style="width:100%; height:90%; align:left;">
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/17.jpg" style="width:100%; height:90%; align:left;"> 
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/18.jpg" style="width:100%; height:90%; align:left;">
    <img class="w3-padding w3-padding-hor-16" src="./menu/images/23.jpg" style="width:100%; height:90%; align:left;">
   </div>  
</div>   


<!-- End Page Content --> 

</div> 
<!-- Footer --> 
<footer class="w3-container w3-padding-64 w3-light-grey w3-center w3-opacity w3-xlarge" style="margin-top:128px"> 
  <a class="fa fa-facebook-official w3-hover-opacity" href=></a>
  <a class="fa fa-instagram w3-hover-opacity"></a>
  <a class="fa fa-snapchat w3-hover-opacity"></a>
  <a class="fa fa-pinterest-p w3-hover-opacity"></a>
  <a class="fa fa-twitter w3-hover-opacity"></a>
  <a class="fa fa-linkedin w3-hover-opacity"></a>
  <p class="w3-medium">SEOWOO by <a href="https://blog.naver.com/seowoo911" target="_blank" class="w3-hover-text-green">blog</a></p>
</footer> 
<script src="./menu/images/jquery.js" type="text/javascript"></script>
<script src="./menu/images/main.js" type="text/javascript"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">

// Toggle grid padding
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

// Open and close sidebar
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

