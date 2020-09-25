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
				<form method="post" action="joinAction.jsp">
					<!-- join 액션으로 데이터를 전송 -->
					<h3 style="text-align: center;">회원가입</h3>
					<!-- 여기 id -->
					<div class=form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="userID" maxlength="20">
					</div>
					<!-- 여기 id -->
					<br>
					<!-- 여기 password -->
					<div class=form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maxlength="20">
					</div>
					<!-- 여기 password -->
					<br>
					<!-- 여기 name -->
					<div class=form-group">
						<input type="text" class="form-control" placeholder="이름"
							name="userName" maxlength="20">
					</div>
					<!-- 여기 name -->
					<br>
					<!-- 여기 gender -->
					<div class=form-group " style="text-align: center;">
						<div class="gtn-group" data-toggle="buttons">
							<lable class="btn btn-primary active"> <input
								type="radio" name="userGender" autocomplete="off" value="남자"
								checked>남자 </lable>
							<lable class="btn btn-primary"> <input type="radio"
								name="userGender" autocomplete="off" value="여자" checked>여자
							</lable>
						</div>
					</div>
					<!-- 여기 gender -->
					<br>
					<!-- 여기 email -->
					<div class=form-group">
						<input type="email" class="form-control" placeholder="이메일"
							name="userEmail" maxlength="20">
					</div>
					<!-- 여기 email -->
					<br> <input type="submit" class="btn btn-primary form-control"
						value="회원가입">
					</from>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>