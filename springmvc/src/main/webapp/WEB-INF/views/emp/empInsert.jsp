<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>사원 등록</h4>
	<form action="empInsert" method="post">
		<input name="firstName" value="firstName" />
		<br>
		<input name="lastName" value="lastName" />
		<br>
		<input name="employeeId" value="employeeId" />
		<br>
		<input name="email" value="email" />
		<br>
		<input type="date" name="hireDate" value="hireDate" />
		<br>
		<input name="jobId" value="jobId" />
		<br>
		<button>insert</button>
	</form>
</body>
</html>