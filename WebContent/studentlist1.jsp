<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="database.StudentDao"%>
<%@page import="evan.beans.Student"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="jumbotron m-5">
<p>
<a href="studentform.html"><button class="btn btn-success">Create New</button></a>

</p>
<table class="table table-dark table-hover">
<tr><th>ID</th><th>Name</th><th>Roll</th><th>Grade</th><th>    Action</th></tr>
<%
StudentDao dao= new StudentDao();
ResultSet rs= dao.GetAllStudents();
while(rs.next())
{
%>
<tr>
<td>

<%
out.print(rs.getInt("studentid"));
%>

</td>
<td>
<%
out.print(rs.getString("studentname"));
%>
</td>

<td>
<%
out.print(rs.getString("roll"));
%>
</td>

<td>
<%
out.print(rs.getString("grade"));
%>
</td>
<td>
<button class="btn btn-warning">Edit</button>
</td>
<td>
<a href="delete.jsp?id=<% out.print(rs.getInt("studentid"));%>"> <button class="btn btn-danger">Delete</button></a>
</td>
</tr>
<%

}
%>

</table>
</div>
</body>
</html>