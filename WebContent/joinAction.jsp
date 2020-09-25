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
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
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

		if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null
				|| user.getUserGender() == null || user.getUserEmail() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");//스크립트 유동적사용
			script.println("alert('필요한 정보가 입력되지 않았습니다.')");
			script.println("history.back()");//이전페이지로 사용자를 돌려보냄 즉 로그인으로
			script.println("</script>");
		} else {
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if (result == -1) { //DAO 이경우에는 이미 프라이머리 key인 id 가 존재하므로 중복아이디 생성불가문구 출력
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");
				script.println("</script>");
			} else { //DAO ==0 회원가입성공으로 메인으로이동
				session.setAttribute("userID", user.getUserID()); //세션부여
				PrintWriter script = response.getWriter();
				script.println("<script>");//스크립트 유동적사용
				script.println("location.href = 'page/main_page.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>