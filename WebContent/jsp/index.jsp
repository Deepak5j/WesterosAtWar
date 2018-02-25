<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,com.crud.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
html, body {
  padding: 0;
  margin: 0; 
  background-image: url("/WesterosAtWar/images/halftone-yellow.png")
}
header, footer {
	background: #000;
	font-size: 50px;
	height: 50px;
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
a {
	text-decoration: none !important;
	color: red;
	padding:1%;
	font-size: 35px;
	background-color: #000;
	display: inline-block;
}
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
<title>Westeros At War</title>
</head>
<body>
<header>
</header>
<div style="float: left; position: absolute; margin-top: 40%; margin-left: 5%;">
<button onClick="javascript:location.href = '/WesterosAtWar/jsp/fullview.jsp';" >Full View</button>
<button onClick="javascript:location.href = '/WesterosAtWar/jsp/allking.jsp';" >ALL Kings</button>
</div>
<div>
<img alt="main" src="/WesterosAtWar/images/main.png" style="width:100%;" >
</div>
<footer></footer>
</body>
</html>