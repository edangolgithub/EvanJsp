<%@page import="database.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
StudentDao dao= new StudentDao();

if(dao.deletestudent(id)==1)
{
	out.print("<script> alert('Success')</script>");
	
}
else
{
	out.print("<script> alert('fail')</script>");
}
response.sendRedirect("studentlist1.jsp");

%>
</body>
</html>