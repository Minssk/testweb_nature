<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LOGIN Action page</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) { //세션이 존재하는 회원들은
			userID = (String) session.getAttribute("userID"); //userID에 세션값을 string으로 저장
		}
		if (userID != null) { //userID가 null과 같지않으면 동작
			PrintWriter script = response.getWriter();
			script.println("<script>");//스크립트 유동적사용
			script.println("alert('이미 로그인이 되어 있습니다.')");
			script.println("location.href='page/main_page.jsp'");//메인으로 이동
			script.println("</script>");
		}
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(), user.getUserPassword()); //로그인페이지의 입력값을 로그인함수에 실행
		if (result == 1) { //DAO ==1은 로그인성공
			session.setAttribute("userID", user.getUserID());//세션 부여
			PrintWriter script = response.getWriter();
			script.println("<script>");//스크립트 유동적사용
			script.println("location.href = 'page/main_page.jsp'");
			script.println("</script>");
		} else if (result == 0) { //DAO ==0은 비밀번호 에러
			PrintWriter script = response.getWriter();
			script.println("<script>");//스크립트 유동적사용
			script.println("alert('비밀번호가 일치하지 않습니다.')");
			script.println("history.back()");//이전페이지로 사용자를 돌려보냄 즉 로그인으로
			script.println("</script>");
		} else if (result == -1) { //DAO ==-1은 아이디가 존재하지않음.
			PrintWriter script = response.getWriter();
			script.println("<script>");//스크립트 유동적사용
			script.println("alert('존재하지 않는 아이디 입니다.')");
			script.println("history.back()");//이전페이지로 사용자를 돌려보냄 즉 로그인으로
			script.println("</script>");
		} else if (result == -2) { //DAO ==2는 데이터베이스 오류
			PrintWriter script = response.getWriter();
			script.println("<script>");//스크립트 유동적사용
			script.println("alert('데이터베이스 오류가 발생하였습니다.')");
			script.println("history.back()");//이전페이지로 사용자를 돌려보냄 즉 로그인으로
			script.println("</script>");
		}
	%>
</body>
</html>