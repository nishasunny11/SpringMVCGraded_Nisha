<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
</head>
<body>
<h1>Add Employee</h1>
	  <form:form action="${pageContext.request.contextPath}/processAddEmployee" method="post" modelAttribute="employee">
        <label for="name">Name:</label>
        <input type="text" id="name" name="employeeName" placeholder="Enter name" required><br><br>
        <label for="address">Address:</label>
        <input type="text" id="address" name="employeeAddress" placeholder="Enter address" required><br><br>
        <label for="phone">Phone:</label>
        <input type="number" id="phone" name="employeePhone" placeholder="Enter phone no" required><br><br>
        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="employeeSalary" placeholder="Enter salary" required><br><br>
        <input type="submit" value="Submit">
    </form:form>
</body>
</html>