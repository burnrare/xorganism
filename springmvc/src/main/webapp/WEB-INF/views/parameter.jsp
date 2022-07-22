<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="req1">
		<input name="id">
		<button>String</button>
	</form>
	<hr>
	<form action="req2">
		<input type="checkbox" name="ids" value="100">100
		<input type="checkbox" name="ids" value="101">101
		<input type="checkbox" name="ids" value="102">102
		<button>String[]</button>
	</form>
	<hr>
	<form action="req3">
		<input name="id">
		<input type="checkbox" name="ids" value="100">100
		<input type="checkbox" name="ids" value="101">101
		<input type="checkbox" name="ids" value="102">102
		<button>Map</button>
	</form>
	<hr>
	<form action="req4">
		<input name="id">
		<input type="checkbox" name="ids" value="100">100
		<input type="checkbox" name="ids" value="101">101
		<input type="checkbox" name="ids" value="102">102
		<button>VO</button>
	</form>
	<hr>
	<form action="req5">
	<div>
		<input name="ls[0].id">
		<input type="checkbox" name="ls[0].ids" value="100">100
		<input type="checkbox" name="ls[0].ids" value="101">101
		<input type="checkbox" name="ls[0].ids" value="102">102
	</div>
	<div>
		<input name="ls[1].id">
		<input type="checkbox" name="ls[1].ids" value="100">100
		<input type="checkbox" name="ls[1].ids" value="101">101
		<input type="checkbox" name="ls[1].ids" value="102">102
	</div>
	<div>
		<input name="ls[2].id">
		<input type="checkbox" name="ls[2].ids" value="100">100
		<input type="checkbox" name="ls[2].ids" value="101">101
		<input type="checkbox" name="ls[2].ids" value="102">102
	</div>
		<button>List&lt;VO&jt;</button>
	</form>
	<hr>
	<form action="req6" method="post" enctype="multipart/form-data">
		<input name="id">
		<input type="checkbox" name="ids" value="100">100
		<input type="checkbox" name="ids" value="101">101
		<input type="checkbox" name="ids" value="102">102
		<input type="file" name="pic">
		<button>VO</button>
	</form>
	
	<a href="req7/hwang/22">patohvariable</a>
</body>
</html>