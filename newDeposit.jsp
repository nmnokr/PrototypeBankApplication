<%@ page language="java" contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1255">
<title>Para Yatırma Islemi</title>
<link rel="icon" type="image/png" href="pics/favIcon.jpg">
</head>
<body>
	<jsp:directive.include file="/main.jsp" />
	<script src="checkDepositAmount.js"></script>

	<h4>Para Yatırma Islemi</h4>

	<form name="newDeposit" action="NewDeposit" method="post" onsubmit="return CheckDepositAmount()">

		<div class="formDiv">
			<ul class="form-style-1">

				<li><label>Para miktarını Giriniz <span
						class="required">*</span></label> <input type="text" id="depositAmount"
					name="depositAmount" placeholder="Amount in USD">
				<li><label>Tarih Giriniz
						<span class="required">*</span>
				</label> <input type="text" id="openingDate" name="openingDate"
					placeholder="YYYY-MM-DD">
				<li><label>Kapanıs tarihi<span
						class="required">*</span></label> <input type="text" id="closingDate"
					name="closingDate" placeholder="YYYY-MM-DD">
				<li><input type="submit" value="Submit"></li>
			</ul>
		</div>

	</form>

</body>
</html>