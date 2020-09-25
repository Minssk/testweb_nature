<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device=width" ,initial-scale="1">
<style>
body {
  background-image: url('mou.jpg');
}
</style>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>LOGIN</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 로그인양식  -->
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">환영합니다</h3>
					<div class=form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="userID" maxlength="20">
					</div>
					<div class=form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maxlength="20">
					</div>
					<br> <input type="submit" class="btn btn-primary form-control"
						value="로그인">
					</from>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>