<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.util.*" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ page import = "java.sql.*" %>
    <%
    String salg = request.getParameter("salg");
    String sql = "SELECT e.ename "
    		+ "FROM employee e, salgrade s "
    		+ "where e.salary between s.losal and s.hisal "
    		+ "and s.grade = ? ";
    		
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##mydbms";
	String pw = "admin";
	
	Connection con = DriverManager.getConnection(url, id, pw);
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, Integer.parseInt(salg));
	
	ResultSet rs = pstmt.executeQuery();
	
    List<String> list = new ArrayList<>();
    while(rs.next()){
    	list.add(rs.getString(1));//1 = select에 있는 첫번째 columm
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
<h1><%= salg %>등급의 사원</h1>
<%
for (String n : list) {
%>
		<li><%= n %></li>
<%		
}
%>
</body>
</html>