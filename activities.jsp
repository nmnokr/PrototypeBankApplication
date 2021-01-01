<%@ page language="java" contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>
<%@page import="beans.ActivityBean"%>
<%@page import="java.util.List"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255">
<title>Hareketler</title>
<link rel="icon" type="image/png" href="pics/favIcon.jpg">
</head>
<body>
<jsp:directive.include file="/main.jsp" />
<h4>Hareket Detayları</h4>

<table id="clientActivitiesTable">
<%
List<ActivityBean> allClientActivites = (List<ActivityBean>)session.getAttribute("clientActivities");
if (!allClientActivites.isEmpty())
{
%>
  <thead>
        <tr>
        	<th>Hareket Numarası</th>
            <th>Tarih</th>  
            <th>Miktar</th>
            <th>Komisyon</th>
            <th>Acıklama</th>
        </tr>
    </thead>
<% 
	for(int i=0;i<allClientActivites.size();i++)
	{
		ActivityBean activityBean = allClientActivites.get(i);
		%> <tr>
			<td><%=activityBean.getId() %></td>
			<td><%=activityBean.getActivityDate() %></td>
			<td><%=activityBean.getAmount()%></td>
			<td><%=activityBean.getCommission()%></td>
			<td><%=activityBean.getDescription()%></td>		
			</tr>
		<%
	}
}
else
{
%>
	<p>No Activities Found</p>
<%
}
%>
</table>

</body>
</html>