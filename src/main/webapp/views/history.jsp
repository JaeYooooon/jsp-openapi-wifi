<%@ page import="dto.HitoryDTO" %>
<%@ page import="service.WifiService" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
    <title>HISTORY</title>
    <script type="text/javascript" src = "../js/wifi.js"></script>
</head>
<body>
<h1>위치 히스토리 목록</h1>
<jsp:include page="header.jsp"></jsp:include>
        <%
            WifiService service = new WifiService();
            List<HitoryDTO> historyList = service.showHistory();

            String id = request.getParameter("id");
            if (id != null) {
                try {
                    service.deleteHistory(Integer.parseInt(id));
                    response.setStatus(204);
                    return;
                } finally {
                    return;
                }
            }
        %>
<table class="table table-striped table-bordered">
    <thead style="background: #04AA6D;">
        <tr>
            <th>ID</th>
            <th>X좌표</th>
            <th>Y좌표</th>
            <th>조회일자</th>
            <th>비고</th>
        </tr>
    </thead>
    <tbody>
        <% for (HitoryDTO history : historyList) { %>
        <tr>
            <td><%= history.getID() %></td>
            <td><%= history.getLAT() %></td>
            <td><%= history.getLNT() %></td>
            <td><%= history.getCREATED_TIME() %></td>
            <td><button onclick="deleteHistory('<%= history.getID() %>')">삭제</button></td>
        </tr>
        <% } %>
    </tbody>
</table>
</body>
</html>
<script>
    function deleteHistory(ID) {
        if (confirm("삭제하시겠습니까?")) {
            $.ajax({
                url: "history.jsp",
                data: {id: ID},
                success: function () {
                    location.reload();
                }
            });
        }
    }
</script>
<style>
    td{
        text-align: center;
        align-content: center;
    }
    th{
        text-align: center;
        align-content: center;
    }
</style>