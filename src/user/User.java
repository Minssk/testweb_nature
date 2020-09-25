package user;

public class User {
		
		private String userID;
		private String userPassword;
		private String userName;
		private String userGender;
		private String userEmail;
		
		//자바빈즈
		//우클릭-소스-제너리이터.겟터.셋터-셀렉트올-어플라이 로 함수제작
		
		public String getUserID() {
			return userID;
		}
		public void setUserID(String userID) {
			this.userID = userID;
		}
		public String getUserPassword() {
			return userPassword;
		}
		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserGender() {
			return userGender;
		}
		public void setUserGender(String userGender) {
			this.userGender = userGender;
		}
		public String getUserEmail() {
			return userEmail;
		}
		public void setUserEmail(String userEmail) {
			this.userEmail = userEmail;
		}
		
}
