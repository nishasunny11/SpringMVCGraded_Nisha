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
<title>Update Data</title>
</head>
<body>
<div align="center">
		<h1 align="center">Update Employee</h1>
		
		<hr>
      <form:form action="${pageContext.request.contextPath}/processAddEmployee" method="POST" modelAttribute="employee">
		
			<table class="tg">


				<tr>

					<td><label for="id">Employee ID:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="id" name="id"
						value="${employee.id}"></td>
				</tr>



				<tr>

					<td><label for="name">Name:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="name" name="employeeName"
						value="${employee.employeeName}"></td>
				</tr>



				<tr>

					<td><label for="address">Address:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="address" name="employeeAddress"
						value="${employee.employeeAddress}"></td>

				</tr>



				<tr>
					<td><label for="phone">Phone:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="phone" name="employeePhone"
						value="${employee.employeePhone}"></td>
				</tr>


				<tr>
					<td><label for="salary">Salary:</label> &nbsp;&nbsp;</td>
					<td><input type="number" id="salary" name="employeeSalary"
						value="${employee.employeeSalary}"></td>
				</tr>
			</table>


			<br>
			<br>

			<input class="form-submit-button" type="reset" value="Reset"> &nbsp;&nbsp;&nbsp; 
		 <input class="form-submit-button" type="submit" value="Submit">
		</form:form>
	
	</div>

</body>
</html>