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

<table width= "400" border = "1" cellpadding= "0" cellspacing = "0">
<tr>
	<td colspan = "2">
		<jsp:include page="/module/top.jsp" flush = "false"></jsp:include>
	</td>
</tr>
<tr>
	<td width = "100" valign= "top">
		<jsp:include page= "/module/left.jsp" flush = "false"></jsp:include>
	</td>
	<td width = "300" valign = "top">
		이 부분은 layout2.jsp가 생성한다 <br>
		레이아웃2
		<br><br><br>
	</td>
</tr>
<tr>
	<td colspan = "2">
		<jsp:include page= "/module/bottom.jsp" flush = "false"></jsp:include>
	</td>
</tr>
</body>
</html>