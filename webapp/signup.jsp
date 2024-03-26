<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}
.bg {
	display: flex;
	justify-content: space-around;
	align-items: center;
	height: 100vh;
	width: 100wh;
	background-color: #17263d;
}
.con{
	text-align: center;
	border: 1px solid yellow;
	padding: 40px 80px;
	background-color: yellow;
	border-radius: 20px;
	box-shadow: 0 0 10px yellow;
}
h1{
	color: #17263d;
	margin-bottom: 35px;
}
td{
	padding: 10px 40px;
}
input{
	background-color: yellow;
	border: none;
	border-bottom: 1px solid #17263d;
	outline-style: none;
}
#submit{
	background-color: #17263d;
	color: yellow;
	padding: 10px 30px;
	position: relative;
	left: 250px;
}





</style>
</head>
<body>

	<div class="bg">
		<div class="con">
			<div>
				<h1>Signup</h1>
				
				<form:form action="save" modelAttribute="employee">
					<table>
						<tr>
							<td>Name</td> <td><form:input path="empName"/></td>
						</tr>
						<tr>
							<td>Email</td>	<td><form:input path="empEmail"/></td>
						</tr>
						<tr>
							<td>Password </td>	<td><form:input path="empPass"/></td>
						</tr>
						<tr>
							<td>City</td> <td><form:input path="empCity"/></td>
						</tr>
						<tr>
							<td>Salary</td>	<td><form:input path="empSalary"/></td>
						</tr>
						<tr>
						<td><input type="submit" id="submit"></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
	</div>
	
	
</body>
</html>