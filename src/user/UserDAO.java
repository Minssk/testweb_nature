package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/BBS?serverTimezone=UTC"; // mysql jdbc8버전이상 포트접속
			String dbID = "root"; // 접속할 계정
			String dbPassword = "1234"; // 계정비밀번호
			Class.forName("com.mysql.cj.jdbc.Driver");// 매개체 라이브러리
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String userID, String userPassword) {
		// sql문동작
		String SQL = "SELECT userPassword FROM USER WHERE userID=?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID); // 위의 ?에 들어가는값 (보안사항)
			rs = pstmt.executeQuery();
			if (rs.next()) {// 결과가 존재한다면 다음문장실행
				if (rs.getString(1).equals(userPassword)) {
					return 1; // 로그인성공
				} else
					return 0; // 비밀번호가 불일치
			}
			return -1;// 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;// 데이터베이스 오류
	}

	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES(?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace(); // db오류로 정보전달
		}
		return -1;// 데이터베이스오류
	}

}
