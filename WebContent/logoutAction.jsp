<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LOGIN Action page</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<script>
		location.href = 'page/main_page.jsp';
	</script>
</body>
</html>