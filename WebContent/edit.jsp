<%@page import="database.StudentDao"%>
<%@page import="java.sql.ResultSet,evan.beans.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<%

int id=0;
if("get".equalsIgnoreCase(request.getMethod()))
{
 id=Integer.parseInt(request.getParameter("id"));
ResultSet row=new StudentDao().GetStudentById(id);
row.next();


%>

<div class="jumbotron m-5">
<p>
<a href="studentlist1.jsp"><button class="btn btn-primary">Student List</button></a>

</p>
<form action="" method="post" >

Name : <input type="text" placeholder="Enter Name" name="studentname" value="<%= row.getString("studentname") %>" >
<br>
<input type="text" name="roll" value="<%= row.getString("roll") %>" >
<br>
<input type="text" name="grade" value="<%= row.getString("grade") %>" >
<br>
<input type="hidden" name="id" value="<%=id %>" >
<input type="submit" value="register" >

</form>
</div>
<%
}
else
{
	 id=Integer.parseInt(request.getParameter("id"));
	 String name=request.getParameter("studentname");
	 String roll=request.getParameter("roll");
	 String grade=request.getParameter("grade");
	 Student s= new Student();
	 s.setStudentid(id);
	 s.setRoll(roll);
	 s.setStudentname(name);
	 s.setGrade(grade);
	 new StudentDao().UpdateStudent(s);
	 
	 response.sendRedirect("studentlist1.jsp");
}
%>
</body>
</html>