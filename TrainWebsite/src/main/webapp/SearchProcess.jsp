<%@page import="oracle.jdbc.dcn.RowChangeDescription"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">


<head>
<title>Search Result</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="images/icons/favicon.ico" />

<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">

<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/button.css">

<link rel="stylesheet" type="text/css" href="css/inputbox.css">
<link rel="stylesheet" type="text/css" href="css001/util.css">
<link rel="stylesheet" type="text/css" href="css001/main.css">
<style>
body {
  background-image: url('Search_001.png');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>

<meta name="robots" content="noindex, follow">
<script nonce="35a1af04-74f3-4c57-9ca2-d11debd4a475">(function(w,d){!function(bg,bh,bi,bj){bg[bi]=bg[bi]||{};bg[bi].executed=[];bg.zaraz={deferred:[],listeners:[]};bg.zaraz.q=[];bg.zaraz._f=function(bk){return function(){var bl=Array.prototype.slice.call(arguments);bg.zaraz.q.push({m:bk,a:bl})}};for(const bm of["track","set","debug"])bg.zaraz[bm]=bg.zaraz._f(bm);bg.zaraz.init=()=>{var bn=bh.getElementsByTagName(bj)[0],bo=bh.createElement(bj),bp=bh.getElementsByTagName("title")[0];bp&&(bg[bi].t=bh.getElementsByTagName("title")[0].text);bg[bi].x=Math.random();bg[bi].w=bg.screen.width;bg[bi].h=bg.screen.height;bg[bi].j=bg.innerHeight;bg[bi].e=bg.innerWidth;bg[bi].l=bg.location.href;bg[bi].r=bh.referrer;bg[bi].k=bg.screen.colorDepth;bg[bi].n=bh.characterSet;bg[bi].o=(new Date).getTimezoneOffset();if(bg.dataLayer)for(const bt of Object.entries(Object.entries(dataLayer).reduce(((bu,bv)=>({...bu[1],...bv[1]})),{})))zaraz.set(bt[0],bt[1],{scope:"page"});bg[bi].q=[];for(;bg.zaraz.q.length;){const bw=bg.zaraz.q.shift();bg[bi].q.push(bw)}bo.defer=!0;for(const bx of[localStorage,sessionStorage])Object.keys(bx||{}).filter((bz=>bz.startsWith("_zaraz_"))).forEach((by=>{try{bg[bi]["z_"+by.slice(7)]=JSON.parse(bx.getItem(by))}catch{bg[bi]["z_"+by.slice(7)]=bx.getItem(by)}}));bo.referrerPolicy="origin";bo.src="../../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(bg[bi])));bn.parentNode.insertBefore(bo,bn)};["complete","interactive"].includes(bh.readyState)?zaraz.init():bg.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<body>
<sql:setDataSource var="d" driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:XE"
user="helloWorld"
password="helloWorld"/>

<sql:query dataSource="${d}" var="res">
	SELECT * FROM TRAINDETAILS WHERE SRC=? AND DEST=?
	<sql:param value="${param.src1}"/>
	<sql:param value="${param.dest1}"/>
	</sql:query>
	
<c:choose>

<c:when test="${res.rowCount>=1}">

<div class="limiter">
<div class="container-table100">
<div class="wrap-table100">
<div class="table100">
<div align="left">
<h1><b><font color=white >Search Result .......</font></b></h1>
</div>
<br>
<table>
<thead>
<tr class="table100-head">
<th class="column1">Train Number</th>
<th class="column2">Train Name</th>
<th class="column3">Train Source</th>
<th class="column4">Train Destination</th>
<th class="column5">Booking</th>
<th class="column6" align="center">Availability</th>  
</tr>
</thead>
<tbody>
<c:forEach var="row" items="${res.rows}">
<tr>
<td class="column1">${row.TNO}</td>
<td class="column2">${row.TNAME}</td>
<td class="column3">${row.SRC}</td>
<td class="column4">${row.DEST}</td>
<td class="column5"><form action="bt" method="post">
                <input type="hidden" value="${row.TNO}" name="tno1">
                <input type="hidden" value="${row.TNAME}" name="tname1">
                <input type="hidden" value="${row.SRC}" name="src1">
                <input type="hidden" value="${row.DEST}" name="dest1">
                <input type="hidden" value="${row.AVAILABLE}" name="sav">
                <br>
                <div align="center">
                <input class="effect-2" type="number" placeholder=" Required Ticket" name="bookedtickets">
                <span class="focus-border">
              </span>
                
                </div>
                <br>
                <button class="button-1" role="button">Book Now</button></form>
                <br></td>
<td class="column6" align="center">${row.AVAILABLE}</td>
</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>
</div>
</c:when>
<c:otherwise>

<div class="container-login100" style="background-image: url('images/bg-03.jpg');">
<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
<form class="login100-form validate-form" action="Search.html" method="post">
<span class="login100-form-title p-b-37">
No Train Found Based On The Entered Train Source Or Destination.<br><br><font color=red>Please Try again ......</font> 
</span>
<div class="text-center p-t-5 p-b-20" >
<span class="img imoticon">
<img src="piffle-error.gif" height="250" width="200">
</span>
</div>
<br>
<div class="container-login100-form-btn">
<button class="login100-form-btn">
Search Again ....
</button>
</div>
</form>
</div>
</div>
</c:otherwise>
</c:choose>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="vendor/select2/select2.min.js"></script>

<script src="js/main.js"></script>

<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
 -->
 <script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
<!-- <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v2cb3a2ab87c5498db5ce7e6608cf55231689030342039" integrity="sha512-DI3rPuZDcpH/mSGyN22erN5QFnhl760f50/te7FTIYxodEF8jJnSFnfnmG/c+osmIQemvUrnBtxnMpNdzvx1/g==" data-cf-beacon='{"rayId":"7e791fa80ffa93ad","version":"2023.4.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}' crossorigin="anonymous"></script>
 -->
 </body>

<!-- Mirrored from colorlib.com/etc/tb/Table_Responsive_v1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Jul 2023 09:12:31 GMT -->
</html>
