<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.util.*" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ page import= "chap14.EmployeeDao" %>
    <% 
    String name = request.getParameter("name");  // form에서 받음
    if(name == null) {
    	name="";
    }
    name = name.toUpperCase(); // 대문자로 변환
    List<String> list = EmployeeDao.getNameLike(name); //employeedao의 메소드 실행
    %>
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
<h1>검색된 이름</h1>
<%
if (list.size()>0) {
%>	

<ul>
<%
for (String n : list) {
	%>
	<li><%= n %></li>
<%
}
%>
</ul>
<%
} else {
%>
	<h2>검색된 이름 없음</h2>
<%
}
%>
</body>
</html>