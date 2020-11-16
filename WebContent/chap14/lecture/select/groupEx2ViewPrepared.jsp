<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.util.*" %>
    <%@ page import= "java.sql.*" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <%
    String job = request.getParameter("job");
    String sql = "SELECT max(salary), min(salary)"
    			 +", avg(salary), min(salary) "
    			 +"FROM employee "
    			 +"WHERE job = ?";
    			 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##mydbms";
	String pw = "admin";
    			    
    Connection con = DriverManager.getConnection(url, id, pw);
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, job); // 1번째 물음표에 무엇을 채워넣을건지
    
    ResultSet rs = pstmt.executeQuery();
    int max = 0;
    int min = 0;
    double avg = 0;
    int sum = 0;
    if(rs.next()) {
    	max = rs.getInt(1);
    	min = rs.getInt(2);
    	avg = rs.getDouble(3);
    	sum = rs.getInt(4);
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
<%=max %>
<%= min %>
<%= avg %>
<%= sum %>
</body>
</html>