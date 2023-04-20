<%@ page import="dto.BookmarkGroupDTO" %>
<%@ page import="service.BookmarkService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Timestamp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
    <title>BOOKMARKGROUPUPDATE</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <script type="text/javascript" src = "../js/wifi.js"></script>
</head>
<h1>북마크 그룹 수정</h1>
<body>

<jsp:include page="header.jsp"></jsp:include>
<%
    String id = request.getParameter("id");
    BookmarkService bookMarkService = new BookmarkService();
    List<BookmarkGroupDTO> bookmarkGroupDTOList = bookMarkService.showBookmarkGroup(Integer.parseInt(id));
%>
<form id="bookmark-form" action="bookmarkGroupUpdateOk.jsp">
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
    <table class="table table-striped table-bordered">
        <% for(BookmarkGroupDTO bookmarkGroupDTO : bookmarkGroupDTOList){ %>
        <tr>
            <th>북마크 이름</th>
            <td><input type="text" name="name" value="<%=bookmarkGroupDTO.getNAME()%>"></td>
        </tr>
        <tr>
            <th>순서</th>
            <td><input type="text" name="orderNo" value="<%=bookmarkGroupDTO.getORDERNO()%>"></td>
        </tr>
        <tr>
            <td colspan="2">
                <a href="bookmarkGroup.jsp">돌아가기</a>
                <button type="submit">수정</button>
            </td>
        </tr>
        <% }%>
    </table>
</form>

</body>
</html>
<style>
    th{
        background: #04AA6D;
        text-align: center;
        align-content: center;
        font-size: 20px;
        color: white;
    }
    td{
        font-size: 20px;
        text-align: center;
    }
</style>