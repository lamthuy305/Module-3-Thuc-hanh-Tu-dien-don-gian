<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: This
  Date: 3/3/2022
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap<>();

    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");
    String search = request.getParameter("search");

    String result = dic.get(search);
//    if (result != null) {
//        out.println("Word: " + search);
//        out.println("Result: " + result);
//    } else {
//        out.println("Not found");
//    }
    pageContext.setAttribute("result", result);
    pageContext.setAttribute("search", search);

%>
<c:if test="${result!=null}">
    Word: ${search}, Result: ${result}
</c:if>

<c:if test="${result==null}">
    Not found
</c:if>


</body>
</html>
