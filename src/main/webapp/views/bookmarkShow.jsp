<%@ page import="service.BookmarkService" %>
<%@ page import="dto.BookmarkListDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
    <title>BOOKMARKLIST</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <script type="text/javascript" src = "../js/wifi.js"></script>
</head>
<h1>북마크 목록</h1>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
    BookmarkService bookmarkService = new BookmarkService();
    List<BookmarkListDTO> bookmarkListDTOList = bookmarkService.showBookmarkList();
%>
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>북마크 이름</th>
                <th>와이파이명</th>
                <th>등록일자</th>
                <th>비고</th>
            </tr>
        </thead>
        <% for(BookmarkListDTO bookmarkListDTO : bookmarkListDTOList){ %>
        <tbody>
            <tr>
                <td><%=bookmarkListDTO.getID()%></td>
                <td><%=bookmarkListDTO.getNAME()%></td>
                <td>
                    <a href="bookmarkDetail.jsp?wifi=<%=bookmarkListDTO.getWifiNo()%>">
                        <%=bookmarkListDTO.getWifiName()%>
                    </a>
                </td>
                <td><%=bookmarkListDTO.getCREATETIME()%></td>
                <td><a href="#" onclick="confirmDelete(<%=bookmarkListDTO.getID()%>);">
                    삭제
                </a></td>
            </tr>
        </tbody>
        <%}%>
    </table>
</body>
</html>
<script>
    function confirmDelete(id) {
        if (confirm("삭제하시겠습니까?")) {
            // 사용자가 '예'를 선택한 경우
            window.location.href = "bookmarkListDelete.jsp?id=" + id;
        } else {
            // 사용자가 '아니오'를 선택한 경우
            return false;
        }
    }

</script>
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