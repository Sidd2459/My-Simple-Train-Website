<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>User Registration</title>
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
<div class="container-login100" style="background-image: url('images/bg-03.jpg');">
<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
<form onsubmit="return myValidation()" class="login100-form validate-form" action="ulr" method="post">
<span class="login100-form-title p-b-37">
User Registration
</span>
<div id="1" align="center" >
<b><font id="ferror" color=red></font></b>
</div>
<div class="wrap-input100 validate-input m-b-20" data-validate="Enter First Name">
<input id="fn" class="input100" type="text" name="fname" placeholder="Enter Your First Name">
<span class="focus-input100"></span>
</div>

<div id="2" align="center" >
<b><font id="lerror" color=red></font></b>
</div>
<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Last Name">
<input id="ln" class="input100" type="text" name="lname" placeholder="Enter Your Last Name">
<span class="focus-input100"></span>
</div>

<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username">
<input class="input100" type="text" name="uname" placeholder="Enter New username">
<span class="focus-input100"></span>
</div>
<div id="3" align="center" >
<b><font id="merror" color=red></font></b>
</div>

<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Mobile No.">
<input id="m" class="input100" type="number" name="mob" placeholder="Enter Your Mobile No.">
<span class="focus-input100"></span>
</div>
<div id="4" align="center" >
<b><font id="eerror" color=red></font></b>
</div>

<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Email-Id">
<input id="e" class="input100" type="email" name="email" placeholder="Enter Your Email-Id">
<span class="focus-input100"></span>
</div>
<div  align="center" >
<b><font id="perror" color=red></font></b>
</div>

<div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
<input id="p" class="input100" type="password" name="pwd" placeholder="Enter New password">
<span class="focus-input100"></span>
</div>
<div class="container-login100-form-btn">
<button onclick="myValidation()" class="login100-form-btn">
Register
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
  var x = document.getElementById("p").value;
  var x1 = document.getElementById("fn").value;
  var x2 = document.getElementById("ln").value;
  var x3 = document.getElementById("m").value;
  var x4 = document.getElementById("e").value;
  
  var passcheck=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$/g;
  var fcheck=/^[a-zA-Z.]{3,30}$/g;
  var lcheck=/^[a-zA-Z.]{3,30}$/g;
  var mcheck=/^[6789][0-9]{9}$/g;
  var echeck=/^[a-zA-Z_]{3,}@[a-zA-Z]{3,}[.]{1}[a-zA-Z.]{2,6}$/g;
  
  
  if(fcheck.test(x1)){
	  document.getElementById('ferror').innerHTML =" ";
	  
	}else{
	 document.getElementById('ferror').innerHTML ="Invalid First Name Type";
	 return false;
	}
  if(lcheck.test(x2)){
	  document.getElementById('lerror').innerHTML =" ";
	  
	}else{
	 document.getElementById('lerror').innerHTML ="Invalid Last Name Type";
	 return false;
	}
  if(mcheck.test(x3)){
	  document.getElementById('merror').innerHTML =" ";
	  
	}else{
	 document.getElementById('merror').innerHTML ="Invalid Mobile No. Type";
	 return false;
	}
  if(echeck.test(x4)){
	  document.getElementById('eerror').innerHTML =" ";
	  
	}else{
	 document.getElementById('eerror').innerHTML ="Invalid Email-Id Type";
	 return false;
	}
  if(passcheck.test(x)){
	  document.getElementById('perror').innerHTML =" ";
	  
	}else{
	 document.getElementById('perror').innerHTML ="Invalid Password Type";
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
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v2cb3a2ab87c5498db5ce7e6608cf55231689030342039" integrity="sha512-DI3rPuZDcpH/mSGyN22erN5QFnhl760f50/te7FTIYxodEF8jJnSFnfnmG/c+osmIQemvUrnBtxnMpNdzvx1/g==" data-cf-beacon='{"rayId":"7e70545f6e52939b","version":"2023.4.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}' crossorigin="anonymous"></script>
 -->
</body>
</html>
    