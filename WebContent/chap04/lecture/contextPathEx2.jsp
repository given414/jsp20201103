<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.util.*" %>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>conteextPathEx2</h1>
<jsp:include page="/chap04/lecture/contextPathEx2Sub.jsp"></jsp:include>
<br />
<a href="<%= request.getContextPath() %>/chap04/lecture/contextPathEx2Sub.jsp">to sub.jsp</a> <!-- 외부에서 추가되는 경로는contextPath 경로를 넣어주어야 한다 -->
</body>
</html>