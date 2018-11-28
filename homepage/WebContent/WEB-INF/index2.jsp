<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../ssi/ssi.jsp"%> 
<jsp:useBean id="dao" class="member.MemberDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
 
<style>
table{
	font-size: 
}
body,h1,h5 {font-family: "Raleway", sans-serif}
body, html {
background-image: url('./indeximg/spring2.jpg');
height: 100%}
.bgimg { 
    
    min-height: 100%;
    background-position: center;
    background-size: cover;
    
}
td{ 

 width: 60px;
 height: 60px;
 text-align: center;
 font-size: 20px;
 font-family: 바탕;
 border:2px dotted #AC58FA;
 border-radius:8px;
}


</style>
<script type="text/javascript">

function send(){ 
    // Checkbox 체크 검사 
    // 폼이름.input 태그의 주어진 이름.속성 
    if(document.frm2.agree.checked == false){ 
      alert('회원 약관에 동의해야 회원 가입이 가능합니다.'); 
      return false; // 서브밋 중지 
    }else{ 
     var url= "./member/createForm.jsp"; 
     location.href=url;
    } 
  } 

function check(f){
	if(f.id.value==""){
		alert("아이디를 입력하세요");
		f.id.focus();
		return false;
		
	}
	
	if(f.passwd.value==""){
		alert("비밀번호를 입력하세요");
		f.passwd.focus();
		return false;
	}
}


</script>
<body>

<strong><table id="calendar" boarder="3" align="center" width="400" style="position:relative; right:expression((document.body.clientWidth-500)/2); top: 650px; left:500px">
 <tr>
     <td><label onclick="prevCalendar()"></label></td>
        <td colspan="5" align="center" id="calendarYM">yyyy년 m월</td>
        <td><label onclick="nextCalendar()">
           
        </label></td>
    </tr>
    <tr>
     <td align="center">일</td>
     <td align="center">월</td>
     <td align="center">화</td>
     <td align="center">수</td>
     <td align="center">목</td>
     <td align="center">금</td>
     <td align="center">토</td>
   </tr>
 
 
</table></strong>
<script language="javascript" type="text/javascript">
	var today = new Date();

//	document.getElementById("demo").innerHTML = d.getFullYear()+"/" + d.getMonth()+"/"+d.getDate();
		
	function prevCalendar(){
		today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
		 buildCalendar(); // 현재 달 
		 thisdate=todayDate.getDate(); 
		 startspaces=thisdate; 

		}
		 
		function nextCalendar() {
		 
		 
		 today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
		 buildCalendar();
		}
		 
		function buildCalendar() {// 현재 달fur
		 var nMonth = new Date(today.getFullYear(), today.getMonth(), 1);  // 이번 달의 첫째 날
		 var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0); // 이번 달의 마지막 날
		 var tblCalendar = document.getElementById("calendar");     // 테이블 달력을 만들 테이블
		 var tblCalendarYM = document.getElementById("calendarYM");    // yyyy년 m월 출력할 곳
		 tblCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월";  // yyyy년 m월 출력
		// 기존 테이블에 뿌려진 줄, 칸 삭제
		 
		 
		 while (tblCalendar.rows.length > 2) {
		  tblCalendar.deleteRow(tblCalendar.rows.length - 1);
		 }
		 var row = null;
		 row = tblCalendar.insertRow();
		 var cnt = 0;
		// 1일이 시작되는 칸을 맞추어 줌
		 for (i=0; i<nMonth.getDay(); i++) {
		  cell = row.insertCell();
		  cnt = cnt + 1;
		 }
		 
		 for (i=1; i<=lastDate.getDate(); i++) { 
		  cell = row.insertCell();
		  cell.innerHTML = i;
		  cnt = cnt + 1;
		  if (cnt%7 == 0)// 1주일이 7일 이므로
		   row = calendar.insertRow();// 줄 추가
		 }
		
		
		}

 
</script>

<script language="javascript" type="text/javascript">

buildCalendar();
</script>
<div class="bgimg w3-display-container w3-text-white">
  <div class="w3-display-middle w3-jumbo">
  
  <h1 class="w3-text-white" style="text-shadow:1px 1px 0 #444">
  <b style="color:white; font-size: 45px">나만의 세상</b></h1>

  </div>
  <div class="w3-display-topleft w3-container w3-xlarge">
    <p><button onclick="document.getElementById('sign').style.display='block'" class="w3-button w3-black">회원가입</button></p>
    <p><button onclick="document.getElementById('login').style.display='block'" class="w3-button w3-black">Login</button></p>
    <p><button onclick="document.getElementById('contact').style.display='block'" class="w3-button w3-black">ID PW 찾기</button></p>
  </div>
  <div class="w3-display-bottomleft w3-container">
  
    <p id="demo"></p>
    
    <p class="w3-large">42 village St, New York</p>
    <p>powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
  </div>
</div>

<!-- 회원가입 Modal -->

<div id="sign" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-black w3-display-container">
      <span onclick="document.getElementById('sign').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>회원가입</h1>
    </div>
    <div class="w3-container">
      <form name="frm2" method="post"  
     
      action="./member/createForm.jsp" class="form-inline">
 
<h3 style="text-align: center"><strong>약관동의</strong></h3> 

<table cellspacing="0" cellpadding="2"  align="center"> 
    <tr id="textA">  
        <td id="textB" align="center" style="width:900px; height: 300px"> 
            <textarea readonly="readonly" style="font-size: 10px; width:100%; height: 100%"> 

 <jsp:include page="./agreement.html" />

            </textarea> 
        </td> 
    </tr> 
</table> 
 
<div class="center" style="text-align: center"> 
  <label><input type="checkbox" name="agree" value="1" >약관에 동의합니다

   </label> 
  
</div> 
 
</form> 
    </div>
    <div class="w3-container" style="text-align: center" >
     <input type="button" value="회원가입" onclick="send()" >  
    </div>
    <div class="w3-container w3-black">
      
    </div>
     </div>
</div>

if()
<FORM name='frm' method='POST' action='./member/loginproc.jsp' onsubmit="return check(this)" class="form-inline">
<div id="login" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-black w3-display-container">
      <span onclick="document.getElementById('login').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>로그인</h1>
      <%  
/*----쿠키설정 내용시작----------------------------*/
String c_id = "";     // ID 저장 여부를 저장하는 변수, Y
String c_id_val = ""; // ID 값
 
Cookie[] cookies = request.getCookies(); 
Cookie cookie=null; 
 
if (cookies != null){ 
 for (int i = 0; i < cookies.length; i++) { 
   cookie = cookies[i]; 
 
   if (cookie.getName().equals("c_id")){ 
     c_id = cookie.getValue();     // Y 
   }else if(cookie.getName().equals("c_id_val")){ 
     c_id_val = cookie.getValue(); // user1... 
   } 
 } 
} 

/*----쿠키설정 내용 끝----------------------------*/
 
%> 

    </div>
    <div class="w3-container" style="margin-top: 10px">
       <label for="id"></label>       
    <input type="text" name="id" class="form-control" id="id" value="아이디" size="15" style="width: 200px; height: 40px">
    <label><input type="checkbox">ID저장</label>
   
    </div>
    <div class="w3-container">
       <label for="passwd"></label>
    <input type="password" name="passwd" class="form-control" id="passwd" value="패스워드" size="15" style="width: 200px; height: 40px">
      
    </div>
</form>
   
    <div class="w3-container" style="margin-top: 5px">
	<input type='submit' value='로그인'>
    <input type='button' value='회원가입' onclick="document.getElementById('login').style.display='none'; document.getElementById('sign').style.display='block'" >
    </div>
  </div>
</div>


<!-- ID PW 찾기 Modal -->
<div id="contact" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-black">
      <span onclick="document.getElementById('contact').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>ID, PW찾기</h1>
    </div>
    <div class="w3-container">
      <p>아이디나 패스워드를 잊어버리신 분들은 아이디 찾기, 패스워드 찾기를 이용하세요</p>
     
     
        <p><button onclick="document.getElementById('contact').style.display='none'; document.getElementById('contact4').style.display='block'" class="w3-button w3-black">ID 찾기</button></p>
        <p><button onclick="document.getElementById('contact').style.display='none';document.getElementById('contact5').style.display='block'" class="w3-button w3-black">PW 찾기</button></p>
     
    </div>
  </div>
</div>

<!-- ID찾기 Modal -->
<div id="contact4" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-black">
      <span onclick="document.getElementById('contact4').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>ID찾기</h1>
    </div>
    <div class="w3-container">
      <p>가입하셨던 <strong>이름</strong>과 <strong>이메일</strong>을 입력하세요</p>
      <form name="frm4" method="post">
        <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="이름" required name="name"></p>
        <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="이메일 주소" required name="email"></p>
       
             <p><strong><div id="idcheck"></div></strong></p>
        <p><button class="w3-button" type="button" onclick="idcheck()">확인</button>
        <p><button class="w3-button" type="button" onclick="document.getElementById('contact4').style.display='none'; document.getElementById('contact').style.display='block'" >뒤로가기</button></p>
      </form>
    </div>
  </div>
</div>

<!-- PW찾기 Modal -->
<div id="contact5" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-black">
      <span onclick="document.getElementById('contact5').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>PW찾기</h1>
    </div>
    <div class="w3-container">
    <p>가입하셨던 <strong>아이디</strong>와 <strong>이름</strong>을 입력하세요</p>
      <form name="frm3">
        <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="아이디" required name="id" value=""></p>
        <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="이름" required name="name" value=""></p>
       
        <p><strong><div id="pwcheck"></div></strong></p>
        <p><button class="w3-button" type="button" onclick="pcheck()" >확인</button>
        
        <script type="text/javascript">
        function idcheck(){
        
    		var name = document.frm4.name.value;
        	var email = document.frm4.email.value;
    		var url = "<%=root%>/member/namecheck_jquery.jsp";
    		
    	$.ajax({
    		url:url,
    		dataType:'text',
    		data:{"name":name,"email":email},
    		success : function(data){
    			$("#idcheck").text(data.trim()).css("color","red");
    	
    }
    })
    }
        function pcheck(){
        	var id = document.frm3.id.value;
    		var name = document.frm3.name.value;
        	var email = document.frm4.email.value;
    		var url = "<%=root%>/member/passwdcheck_jquery.jsp";
    		
    	$.ajax({
    		url:url,
    		dataType:'text',
    		data:{"id":id,"name":name},
    		success : function(data){
    			$("#pwcheck").text(data.trim()).css("color","red");
    	
    }
    })
    }
    $.ajaxSetup({
        error: function(jqXHR, exception) {
            if (jqXHR.status === 0) {
                alert('Not connect.\n Verify Network.');
            }
            else if (jqXHR.status == 400) {
                alert('Server understood the request, but request content was invalid. [400]');
            }
            else if (jqXHR.status == 401) {
                alert('Unauthorized access. [401]');
            }
            else if (jqXHR.status == 403) {
                alert('Forbidden resource can not be accessed. [403]');
            }
            else if (jqXHR.status == 404) {
                alert('Requested page not found. [404]');
            }
            else if (jqXHR.status == 500) {
                alert('Internal server error. [500]');
            }
            else if (jqXHR.status == 503) {
                alert('Service unavailable. [503]');
            }
            else if (exception === 'parsererror') {
                alert('Requested JSON parse failed. [Failed]');
            }
            else if (exception === 'timeout') {
                alert('Time out error. [Timeout]');
            }
            else if (exception === 'abort') {
                alert('Ajax request aborted. [Aborted]');
            }
            else {
                alert('Uncaught Error.n' + jqXHR.responseText);
            }
        }
    })
        
        </script>
        <p><button class="w3-button" type="button" onclick="document.getElementById('contact5').style.display='none';document.getElementById('contact').style.display='block'" >뒤로가기</button></p>
      </form>
    </div>
  </div>
</div>

</body>
</html>

