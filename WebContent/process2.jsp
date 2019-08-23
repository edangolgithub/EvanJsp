<%@page import="database.StudentDao"%>
<%@page import="evan.beans.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="obj" class="evan.beans.Student"></jsp:useBean>


<jsp:setProperty property="*" name="obj"/>

<%


StudentDao dao= new StudentDao();

dao.insertstudent(obj);

response.sendRedirect("studentlist1.jsp");

%>


</body>
</html>