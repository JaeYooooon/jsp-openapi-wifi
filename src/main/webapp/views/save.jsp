<%@ page import="api.ApiExplorer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>SAVE</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
<%
    ApiExplorer apiExplorer = new ApiExplorer();
    Integer numOfWifi = apiExplorer.loadWifi();
%>
<p></p>
<div class="s"><h1><%=numOfWifi%>개의 와이파이 데이터를 가져왔습니다.</h1></div>
<p></p>
<div class="s"><a href="/views/wifi.jsp">홈으로 가기</a></div>
</body>
</html>