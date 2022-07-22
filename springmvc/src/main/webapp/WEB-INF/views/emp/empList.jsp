<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>사원 목록</h4>
	<form>
		<label>employee_id<label>
		<input name="employeeId">
		<br>
<!-- 		<label>department_id</label> 
		<input name="depts" type="checkbox" value="10">10
		<input name="depts" type="checkbox" value="20">20
		<input name="depts" type="checkbox" value="30">30 -->
		<label>job_id</label>
		<select name="jobId">
			<option value="">검색
			<option value="IT_PROG">IT_PROG
			<option value="ST_CLERK">ST_CLERK
			<option value="ST_MAN">ST_MAN
		</select>
		<br>
		<label>hire_date</label>
		<input name="sdt" type="date">~<input type="date" name="edt">
		<br>
		<button>submit</button>
	</form>
	<c:forEach var="emplist" items="${empList}">
		<a href="empUpdate?employeeId=${emplist.employeeId }"><li>${emplist.employeeId }, ${emplist.firstName }, ${emplist.lastName }, ${emplist.jobId }, 
		${emplist.departmentId }, ${emplist.hireDate }</li></a>
	</c:forEach>
</body>
</html>