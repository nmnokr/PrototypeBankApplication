<%@ page language="java" contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>
<%@page import="beans.ClientBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255">
<title>Musteri Detaylari</title>
<link rel="icon" type="image/png" href="pics/favIcon.jpg">
</head>
<body>
<jsp:directive.include file="/main.jsp" />

<h4>Musteri Detaylari</h4>

<table id="clientDetailsTable">
  <tr>
    <td>Isim</td>
    <td><%= clientBean.getClientName() %></td>
  </tr>
  <tr>
    <td>Musteri Id</td>
    <td><%= clientBean.getClientId() %></td>
  </tr>
  <tr>
    <td>sifre</td>
    <td><%= clientBean.getPassword() %></td>
  </tr>
    <tr>
    <td>Addres</td>
    <td><%= clientBean.getAddress() %></td>
  </tr>
      <tr>
    <td>Email</td>
    <td><%= clientBean.getEmail() %></td>
  </tr>
      <tr>
    <td>Telefon Numarasi</td>
    <td><%= clientBean.getPhone() %></td>
  </tr>
        <tr>
    <td>Tür</td>
    <td><%= clientBean.getType() %></td>
  </tr>
  <tr>
    <td>Yorum</td>
    <td><%= clientBean.getComment()%></td>
  </tr>
</table>

</body>
</html>