<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
.btn-rajiv
{
background-color: pink;
}
.xyz
{
color:green;
}

</style>
</head>
<body>
<% 



out.print("<h1 class='display-1'>hello</h1>");
out.print("hi");
%>

<%= "<h1>hello again</h1>" %>

<%! int x=70; %>


<%=x %>

<input type="submit" class="btn btn-rajiv" value="click me">


<p class="xyz">kdlsfhodisjfdsjfds</p>

<% int y=7; %>

<%=y %>
</body>
</html>