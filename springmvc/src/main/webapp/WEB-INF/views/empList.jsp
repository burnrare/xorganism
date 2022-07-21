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
	<c:forEach var="emplist" items="${empList}">
		<li>${emplist.employee_id }, ${emplist.first_name }, ${emplist.last_name }</li>
	</c:forEach>
</body>
</html>