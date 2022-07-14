<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>
function onSubmit() {
alert("Master_Data.xlsx and Consistency_Check_Data.xlsx are located under d:/stage/MasterDataReports");
}
function show() {
	alert("Master_Data.xlsx and Consistency_Check_Data.xlsx are located under d:/stage/MasterDataReports");
	}
</script>

<% 
boolean value=(boolean)request.getAttribute("alert");
if(value)
{ %>
<script>

onSubmit();

</script>
<%
	}
%>
<% %>
</body>
</html>