<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,com.crud.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="style/maincss.css">
<style>
html, body {
  padding: 0;
  margin: 0; 
  background-image: url("/WesterosAtWar/images/halftone-yellow.png")
}
header, footer {
	background: #000;
	font-size: 50px;
	height: 100px;
	width: 100%;
	text-align: center;
	color: #00ffff;
}
.main {
	/*00000000background: #DAA520;*/
	padding: 50px;
}
table {
	text-align: center;
	border-collapse: collapse;
	border: 1px solid black;
	width: 100%;
	display: block;
	overflow: auto;
}
th {
	border-collapse: collapse;
	border: 1px solid black;
	background-color: #0000a0;
	color: white;
    height: 50px;
    padding: 3px;
}
td {
	border-collapse: collapse;
	border: 1px solid black;
    height: 30px;
    padding: 3px;
}
tr:hover {background-color: #7788ff;}
button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
button {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

button:hover {
    background-color: #000;
    color: white;
}
</style>
<title>All Kings</title>
</head>
<body>
<header>All Kings</header>
<div class="main">
<%	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String strsql="select * from battles";
	con=CrudOperations.createConnection();				
	try {
		int flag = 0, i = 0;
		ps=con.prepareStatement(strsql);
		rs=ps.executeQuery();
		String[] kings = new String[1000];
%>
	<br>
	<table id="tab">
		<tr>
			<th>attacker_king</th><th>defender_king</th><th>attacker_1</th><th>attacker_2</th><th>attacker_3</th>
			<th>attacker_4</th><th>defender_1</th><th>defender_2</th><th>defender_3</th><th>defender_4</th>
<%		while(rs.next()){
			flag = 1;
			String attacker_king=rs.getString("attacker_king");
			String defender_king=rs.getString("defender_king");
			String attacker_1=rs.getString("attacker_1");
			String attacker_2=rs.getString("attacker_2");
			String attacker_3=rs.getString("attacker_3");
			String attacker_4=rs.getString("attacker_4");
			String defender_1=rs.getString("defender_1");
			String defender_2=rs.getString("defender_2");
			String defender_3=rs.getString("defender_3");
			String defender_4=rs.getString("defender_4");/*
			kings[i++] = attacker_king;
			kings[i++] = defender_king;
			kings[i++] = attacker_1;
			kings[i++] = attacker_2;
			kings[i++] = attacker_3;
			kings[i++] = attacker_4;
			kings[i++] = defender_1;
			kings[i++] = defender_2;
			kings[i++] = defender_3;
			kings[i++] = defender_4;*/
		
			%>
			<tr>
				<td><%=attacker_king %></td><td><%=defender_king %></td><td><%=attacker_1 %></td><td><%=attacker_2 %></td>
				<td><%=attacker_3 %></td><td><%=attacker_4 %></td><td><%=defender_1 %></td><td><%=defender_2 %></td>
				<td><%=defender_3 %></td><td><%=defender_4 %></td>
			</tr>				
			<%				
		}
		
%>	</table>
<%	if(flag == 0)
%>		<script>document.getElementById("tab").remove();</script>
<%}
catch(SQLException se){
	se.printStackTrace();
	System.out.println("==>db catch");
}
finally{
	System.out.println("==>db finally");
}
%>
</div> 
<footer><button onClick="javascript:location.href = '/WesterosAtWar/jsp/index.jsp';" >Back</button></footer>
</body>
</html>