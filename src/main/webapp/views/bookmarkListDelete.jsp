<%@ page import="service.BookmarkService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
<%
    String id = request.getParameter("id");
    BookmarkService bookMarkService = new BookmarkService();
    bookMarkService.deleteBookmarkList(Integer.parseInt(id));
    response.sendRedirect("bookmarkShow.jsp");
%>
</body>
</html>
