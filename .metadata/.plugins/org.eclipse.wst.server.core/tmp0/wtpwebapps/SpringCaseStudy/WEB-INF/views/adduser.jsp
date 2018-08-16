<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri= "http://www.springframework.org/tags/form" prefix="f" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.error{
color:red;
font-style:italic;
}
</style>

</head>
<body>
<h1> Hello Mr ${username}</h1>
<f:form action="addUser" method="post">

	<f:label path="userName"></f:label>	
	User ID: <f:input  path="userName"/><br><br>
	
	<f:errors path="userName" class="error"></f:errors> <!-- //it is for validation -->
	
	<f:label path="password"></f:label>	
	Password: <f:input  path="password"/> <br><br>
	<f:errors path="password" class="error"></f:errors>
	
	<f:label path="dob"></f:label>
	Date of Birth: <f:input  path="dob"/> <br><br>
	<f:errors path="dob" class="error"></f:errors>
	
	<f:label path="mobile"></f:label>
	Mobile No: <f:input  path="mobile"/> <br><br>
	<f:errors path="mobile" class="error"></f:errors>
	
<input type="submit" value="Register">
</f:form>
</body>
</html>