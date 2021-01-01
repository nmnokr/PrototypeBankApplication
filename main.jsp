<%@ page language="java" contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>
<%@page import="beans.ClientBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255">
<title>Anasayfa</title>
<link type="text/css" href="mbank.css" rel="stylesheet" />
<link rel="icon" type="image/png" href="pics/favIcon.jpg">
</head>
<body id="wrap">

<div id = "welcom">
<%
ClientBean clientBean = (ClientBean)session.getAttribute("clientBean");
String clientName = clientBean.getClientName();
%>
<h4>Welcome to MBank Online <%=clientName%> </h4>
</div>

<div id = "mainMenu">
<ul>
<li><a href="Controller?command=homePage" style="float: left;" >ANASAYFA</a></li>
<li><a href="Controller?command=viewAccount" style="float: left;" >Hesabim</a></li>
<li><a href="Controller?command=viewDetails" style="float: left;" >Personel Detay</a></li>
<li><a href="Controller?command=updateDetails" style="float: left;" >Güncelle</a></li>
<li><a href="Controller?command=viewDeposits" style="float: left;" >Mevduat</a></li>
<li><a href="Controller?command=viewActivities" style="float: left;" >Hareketlerim</a></li>
<li><a href="Controller?command=withdraw" style="float: left;" >Para Cekme Islemi</a></li>
<li><a href="Controller?command=deposit" style="float: left;" >Para Yatırma Islemi</a></li>
<li><a href="Controller?command=newDeposit" style="float: left;" >Hesap Olusturma</a></li>	
<li><a href="Controller?command=preOpenDeposit" style="float: left;" >Onceki Hesaplarım</a></li>
<li><a href="Controller?command=viewProperties" style="float: left;" >Komisyon Görüntüleme</a></li>
<li><a href="Controller?command=aboutMbank" style="float: left;" >Hakkında</a></li>
<li><a href="Controller?command=contactUs" style="float: left;" >Iletisim</a></li>
<li><a href="Controller?command=logout" style="float: left;" >Cıkıs</a></li>
</ul>
</div>

</body>
</html>