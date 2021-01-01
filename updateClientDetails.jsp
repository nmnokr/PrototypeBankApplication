<%@ page language="java" contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>
<%@page import="beans.ClientBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1255">
<title>
Müşteri Ayrıntılarını Güncelle</title>
<link rel="icon" type="image/png" href="pics/favIcon.jpg">
</head>
<body>
	<jsp:directive.include file="/main.jsp" />
	<script src="updateClientDetails.js"></script>

	<h4>
Müşteri Ayrıntılarını Güncelle</h4>

	<form name="updateClientDetails" action="UpdateClientDetails" method="post" 
	onsubmit="return CheckName() && CheckPassword() && CheckEmail() && CheckAddress() && CheckPhone() && CheckComment()">

<div class="formDiv">
		<ul class="form-style-1">
			<li><label>Isim Soyisim</label> <input type="text"
				id="clientName" name="clientName" value="<%= clientBean.getClientName() %>"
				class="field-long"></li>
			<li><label>Sifre<span></span></label> <input type="text"
				id="clientPassword" name="clientPassword" value="<%= clientBean.getPassword() %>"
				class="field-long"></li>
			<li><label>Mail</label> <input type="text" id="clientEmail"
				name="clientEmail" value="<%= clientBean.getEmail() %>"
				class="field-long"></li>

			<li><label>Adres</label> <input type="text" id="clientAddress"
				name="clientAddress" value="<%= clientBean.getAddress() %>"
				class="field-long"></li>

			<li><label>Telefon Numarasi</label> <input type="text" id="clientPhone"
				name="clientPhone" value="<%= clientBean.getPhone() %>"
				class="field-long"></li>

			<li><label>Yorum</label> <input type="text" id="clientComment"
				name="clientComment" value="<%= clientBean.getComment() %>"
				class="field-long"></li>
			<li><input type="submit" value="Update Details"></li>
		</ul>
</div>
	</form>


</body>
</html>