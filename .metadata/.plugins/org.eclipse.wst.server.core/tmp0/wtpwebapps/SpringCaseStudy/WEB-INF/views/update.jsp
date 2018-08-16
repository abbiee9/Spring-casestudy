<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri= "http://www.springframework.org/tags/form" prefix="f" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Update Page </title>
</head>
<body>
<f:form action="save" method="post">
	User ID: <f:input readonly="true" path="userName"/><br><br>
	Password: <f:input  path="password"/> <br><br>
	Date of Birth: <f:input  path="dob"/> <br><br>
	Mobile No: <f:input  path="mobile"/> <br><br>
<input type="submit" value="Update">
</f:form>
</body>
</html>