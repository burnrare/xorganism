<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ tablib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>사원 수정</h4>
	<c:set var="path" value="${pageContext.request.contextPath}" />
	<form action="${path}/empUpdate" method="get">
		firstName<input name="firstName" value="${emp.firstName }" />
		<br>
		lastName<input name="lastName" value="${emp.lastName }" />
		<br>
		employeeId<input name="employeeId" value="${emp.employeeId }" readonly="readonly" />
		<br>
		email<input name="email" value="${emp.email }" />
		<br>
		date<input type="date" name="hireDate" value="${emp.hireDate }" />
		<br>
		jobId<input name="jobId" value="${emp.jobId }" />
		<br>
		<button>insert</button>
		<button type="button" id="btnDelete">delete</button>
	</form>
	<script>
		btnDelete.addEventListener("click", function() {
			location.href="${path}/empDelete?employeeId=${emp.employeeId}";
		});
	</script>
</body>
</html>