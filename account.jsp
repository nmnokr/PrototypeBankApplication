<%@ page language="java" contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>
<%@page import="beans.AccountBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1255">
<title>Hesabim</title>
<link rel="icon" type="image/png" href="pics/favIcon.jpg">
</head>
<body>
	<jsp:directive.include file="/main.jsp" />
	<h4>Hesap Detayları</h4>
	<%AccountBean accountBean = (AccountBean)session.getAttribute("accountBean");%>
	<table id="accountDetailsTable">
		<tr>
			<td>Kimlik Numarası</td>
			<td><%= accountBean.getClientId() %></td>
		</tr>
		<tr>
			<td>Hesap Numarası</td>
			<td><%= accountBean.getAccountId() %></td>
		</tr>
		<tr>
			<td>Hesap Bakiyesi</td>
			<td><%= accountBean.getBalance() %></td>
		</tr>
		<tr>
			<td>Kredi Limit Miktari</td>
			<td><%= accountBean.getCreditLimit() %></td>
		</tr>
		<tr>
			<td>Yorum</td>
			<td><%= accountBean.getComment()%></td>
		</tr>
	</table>
</body>
</html>