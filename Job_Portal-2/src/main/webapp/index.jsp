<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang= "en">
<head>

<link rel="shortcut icon" type="x-icon" href="job-offer.png">

<meta charset="ISO-8859-1">
<title>Index</title> 
<%@include file="all_components/all_css.jsp" %>
<style>
@import url("https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900");



.content {
  position: relative;
  padding-left: 50%;
  padding-top:40px;
  text-align:center;
}

.content h1 {
  color: #fff;
  font-size: 4em;
  position: absolute;
  transform: translate(-50%, -50%);
}

.content h1:nth-child(1) {
  color: transparent;
  -webkit-text-stroke: 2px #03a9f4;
}

.content h1:nth-child(2) {
  color: #03a9f4;
  animation: animate 4s ease-in-out infinite;
}

@keyframes animate {
  0%,
  100% {
    clip-path: polygon(
      0% 45%,
      16% 44%,
      33% 50%,
      54% 60%,
      70% 61%,
      84% 59%,
      100% 52%,
      100% 100%,
      0% 100%
    );
  }

  50% {
    clip-path: polygon(
      0% 60%,
      15% 65%,
      34% 66%,
      51% 62%,
      67% 50%,
      84% 45%,
      100% 46%,
      100% 100%,
      0% 100%
    );
  }
}

.chotuimg{
position:absolute;
margin-left: 620px;
margin-right:0px;
}
</style>
</head>
<body>
<%@include file="all_components/navbar.jsp" %>
<br>

<section>
  <div class="content">
    <h1>Online Job Portal</h1>
    <h1>Online Job Portal</h1>
  </div>
</section>
<br>
<div class="row" style="display:flex;">
	<div class="imgholder" style="margin-left:13%;">
	<img src="https://i.pinimg.com/564x/ac/9b/d1/ac9bd19f009b852c26ac9003165df8a3.jpg" alt="imgage of employees having discussion" style="margin-left:15%;">
	</div>
	<div class="imageholder2" style="margin-left:10%;">
	<img src="https://i.pinimg.com/564x/90/65/33/906533f773d205616f533f4c6344e8c7.jpg">
	</div>
</div>
<br>


 

<%@include file="all_components/footer.jsp" %>

</body>
</html>