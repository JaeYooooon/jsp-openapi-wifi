<%@ page import="dto.BookmarkGroupDTO" %>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="service.BookmarkService" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
  <title>BOOKMARKGROUPADD</title>
  <link rel="stylesheet" type="text/css" href="../css/style.css">
  <script type="text/javascript" src = "../js/wifi.js"></script>
</head>
<h1>북마크 그룹 추가</h1>
<jsp:include page="header.jsp"></jsp:include>
<%
  String name = request.getParameter("name");
  String orderNo = request.getParameter("orderNo");
  if(name != null && orderNo != null) {
    int orderNoInt = Integer.parseInt(orderNo);
    BookmarkGroupDTO bookmarkGroupDTO = new BookmarkGroupDTO();
    bookmarkGroupDTO = bookmarkGroupDTO.builder()
            .NAME(name)
            .ORDERNO(orderNoInt)
            .CREATETIME(new Timestamp(System.currentTimeMillis()))
            .build();
    BookmarkService bookMarkService = new BookmarkService();
    bookMarkService.saveBookmarkGroup(bookmarkGroupDTO);
    response.sendRedirect("bookmarkGroup.jsp");
  }
%>
<body>
<form>
  <table class="table table-striped table-bordered">
    <tr>
      <th>북마크 이름</th>
      <td><input type="text" name="name"></td>
    </tr>
    <tr>
      <th>순서</th>
      <td><input type="text" name="orderNo"></td>
    </tr>
    <tr>
      <td style="text-align: center; " colspan="2"><button>추가</button></td>
    </tr>
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
    text-align: left;
  }
</style>