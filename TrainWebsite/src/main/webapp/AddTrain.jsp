<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Add Train Details</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="images/icons/favicon.ico" />

<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">

<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css" href="css001/util.css">
<link rel="stylesheet" type="text/css" href="css001/main.css">

<meta name="robots" content="noindex, follow">
<script nonce="f486aab2-66ce-4fe5-abab-8260e5f54ac4">(function(w,d){!function(bg,bh,bi,bj){bg[bi]=bg[bi]||{};bg[bi].executed=[];bg.zaraz={deferred:[],listeners:[]};bg.zaraz.q=[];bg.zaraz._f=function(bk){return function(){var bl=Array.prototype.slice.call(arguments);bg.zaraz.q.push({m:bk,a:bl})}};for(const bm of["track","set","debug"])bg.zaraz[bm]=bg.zaraz._f(bm);bg.zaraz.init=()=>{var bn=bh.getElementsByTagName(bj)[0],bo=bh.createElement(bj),bp=bh.getElementsByTagName("title")[0];bp&&(bg[bi].t=bh.getElementsByTagName("title")[0].text);bg[bi].x=Math.random();bg[bi].w=bg.screen.width;-[bi].h=bg.screen.height;bg[bi].j=bg.innerHeight;bg[bi].e=bg.innerWidth;bg[bi].l=bg.location.href;bg[bi].r=bh.referrer;bg[bi].k=bg.screen.colorDepth;bg[bi].n=bh.characterSet;bg[bi].o=(new Date).getTimezoneOffset();if(bg.dataLayer)for(const bt of Object.entries(Object.entries(dataLayer).reduce(((bu,bv)=>({...bu[1],...bv[1]})),{})))zaraz.set(bt[0],bt[1],{scope:"page"});bg[bi].q=[];for(;bg.zaraz.q.length;){const bw=bg.zaraz.q.shift();bg[bi].q.push(bw)}bo.defer=!0;for(const bx of[localStorage,sessionStorage])Object.keys(bx||{}).filter((bz=>bz.startsWith("_zaraz_"))).forEach((by=>{try{bg[bi]["z_"+by.slice(7)]=JSON.parse(bx.getItem(by))}catch{bg[bi]["z_"+by.slice(7)]=bx.getItem(by)}}));bo.referrerPolicy="origin";bo.src="../../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(bg[bi])));bn.parentNode.insertBefore(bo,bn)};["complete","interactive"].includes(bh.readyState)?zaraz.init():bg.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>
<body>
<div class="container-login100" style="background-image: url('images/bg-02.jpg');">
<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
<form onsubmit="return myValidation()" class="login100-form validate-form" action="ats" method="post">
<span class="login100-form-title p-b-37">
Welcome Admin <%
String login_msg=(String)request.getAttribute("data");  
if(login_msg!=null) 
out.println("<font color=red size=6px align=center><b>"+login_msg+"</b></font>");
%>
</span>


<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Train Number">
<input class="input100" type="text" name="tno" placeholder="Train Number">
<span class="focus-input100"></span>
</div>
<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Train Name">
<input class="input100" type="text" name="tname" placeholder="Train Name">
<span class="focus-input100"></span>
</div>
<div  align="center" >
<b><font id="serror" color=red></font></b>
</div>
<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Train Source">
<input id="s" class="input100" type="text" name="src" placeholder="Train Source">
<span class="focus-input100"></span>
</div>

<div  align="center" >
<b><font id="derror" color=red></font></b>
</div>
<div class="wrap-input100 validate-input m-b-25" data-validate="Enter Train Destination">
<input id="d" class="input100" type="text" name="dest" placeholder="Train Destination">
<span class="focus-input100"></span>
</div>

<div class="wrap-input100 validate-input m-b-25" data-validate="Enter Number Of Seats">
<input id="a" class="input100" type="number" name="ava" placeholder="Total Train Capacity">
<span class="focus-input100"></span>
</div>
<div class="container-login100-form-btn">
<button class="login100-form-btn">
Add This Train
</button>
</div>
</form>
<!-- <div class="text-center p-t-57 p-b-20">
<span class="txt1">
Or login with
</span>
</div>
<div class="flex-c p-b-112">
<a href="#" class="login100-social-item">
<i class="fa fa-facebook-f"></i>
</a>
<a href="#" class="login100-social-item">
<img src="images/icons/icon-google.png" alt="GOOGLE">
</a>
</div> -->

<div class="text-center">
<br>
<br>
Already Registered?
<a href="WelcomePage.jsp" class="txt2 hov1">
 Return Home
</a>
</div>

</div>
</div>
<div id="dropDownSelect1"></div>

<script>
function myValidation() {
  var x = document.getElementById("s").value;
  var x1 = document.getElementById("d").value;
  var scheck=/^[A-Z]{3,}$/g;
  var dcheck=/^[A-Z]{3,}$/g;
  if(scheck.test(x)){
  document.getElementById('serror').innerHTML =" ";
  
}else{
 document.getElementById('serror').innerHTML ="Please enter in CAPITAL LETTERS ....";
 return false;
}
  if(dcheck.test(x1)){
	  document.getElementById('derror').innerHTML =" ";
	  
	}else{
	 document.getElementById('derror').innerHTML ="Please enter in CAPITAL LETTERS ....";
	 return false;
	}}

</script>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

<script src="vendor/animsition/js/animsition.min.js"></script>

<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="vendor/select2/select2.min.js"></script>

<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>

<script src="vendor/countdowntime/countdowntime.js"></script>

<script src="js/main.js"></script>

<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v2cb3a2ab87c5498db5ce7e6608cf55231689030342039" integrity="sha512-DI3rPuZDcpH/mSGyN22erN5QFnhl760f50/te7FTIYxodEF8jJnSFnfnmG/c+osmIQemvUrnBtxnMpNdzvx1/g==" data-cf-beacon='{"rayId":"7e70545f6e52939b","version":"2023.4.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}' crossorigin="anonymous"></script> -->
</body>
</html>
    