<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <%
    String eno = request.getParameter("eno");
    String sql = "SELECT e2.ename "
    		+"FROM employee e1, employee e2 "
    		+"WHERE e1.manager = e2.eno "
    		+" AND e1.eno = ?";
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##mydbms";
	String pw = "admin";
	
	Connection con = DriverManager.getConnection(url, id, pw);
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, Integer.parseInt(eno));
	
	ResultSet rs = pstmt.executeQuery();
	String manager = "";
	if(rs.next()) {
		manager = rs.getString(1);
	}
	pstmt.close();
	con.close();
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
<h1>관리자 이름 </h1>
<h2>이름 : <%=  manager %></h2>
</body>
</html>