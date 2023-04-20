<%@ page import="service.BookmarkService" %>
<%@ page import="dto.WifiDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
  <title>BOOKMARKDETAIL</title>
  <script type="text/javascript" src = "../js/wifi.js"></script>
</head>
<h1>와이파이 정보 구하기</h1>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
  BookmarkService bookmarkService = new BookmarkService();
  String wifi = request.getParameter("wifi");
  List<WifiDTO> wifiDTOList = bookmarkService.showDetail(wifi);

%>
<table class="table table-striped table-bordered" >
  <% for (WifiDTO wifiDTO : wifiDTOList) { %>
  <tr>
    <th>관리번호</th>
    <td><%= wifiDTO.getX_SWIFI_MGR_NO()%></td>
  </tr>
  <tr>
    <th>자치구</th>
    <td><%=wifiDTO.getX_SWIFI_WRDOFC()%> </td>
  </tr>
  <tr>
    <th>와이파이명</th>
    <td><%= wifiDTO.getX_SWIFI_MAIN_NM() %></td>
  </tr>
  <tr>
    <th>도로명주소</th>
    <td><%= wifiDTO.getX_SWIFI_ADRES1() %></td>
  </tr>
  <tr>
    <th>상세주소</th>
    <td><%= wifiDTO.getX_SWIFI_ADRES2() %></td>
  </tr>
  <tr>
    <th>설치위치(층)</th>
    <td><%= wifiDTO.getX_SWIFI_INSTL_FLOOR() %></td>
  </tr>
  <tr>
    <th>설치유형</th>
    <td><%= wifiDTO.getX_SWIFI_INSTL_TY() %></td>
  </tr>
  <tr>
    <th>설치기관</th>
    <td><%= wifiDTO.getX_SWIFI_INSTL_MBY() %></td>
  </tr>
  <tr>
    <th>서비스구분</th>
    <td><%= wifiDTO.getX_SWIFI_SVC_SE() %></td>
  </tr>
  <tr>
    <th>망종류</th>
    <td><%= wifiDTO.getX_SWIFI_CMCWR() %> </td>
  </tr>
  <tr>
    <th>설치년도</th>
    <td><%= wifiDTO.getX_SWIFI_CNSTC_YEAR() %></td>
  </tr>
  <tr>
    <th>실내외구분</th>
    <td><%= wifiDTO.getX_SWIFI_INOUT_DOOR() %></td>
  </tr>
  <tr>
    <th>WIFI접속환경</th>
    <td><%= wifiDTO.getX_SWIFI_REMARS3() %></td>
  </tr>
  <tr>
    <th>X좌표</th>
    <td><%= wifiDTO.getLAT() %></td>
  </tr>
  <tr>
    <th>Y좌표</th>
    <td><%= wifiDTO.getLNT() %></td>
  </tr>
  <tr>
    <th>작업일자</th>
    <td><%= wifiDTO.getWORK_DTTM() %></td>
  </tr>
  <% }%>
</table>
</body>
</html>
<style>
  th{
    background: #04AA6D;
    text-align: center;
    align-content: center;
    color : white;
    font-size: 20px;
  }
  td{
    font-size: 20px;
    text-align: left;
  }
</style>