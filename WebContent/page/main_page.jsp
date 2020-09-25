<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!doctype html>
<html>
<head>

<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="../css/top_menu1.css" rel="stylesheet" type="text/css">

<title>Nature</title>
</head>
<body>
<%
		String userID =null;
		if(session.getAttribute("userID")!=null){ //세션이 존재하면 작동한다
			userID = (String) session.getAttribute("userID"); //세션값을 그대로 가져온다.
			//즉 userID라는 변수에 해당 세션값이 저장되어 진다.
		}
	%>
	<%
				if(userID == null){
			%>
			<!-- 전체 틀 -->
	<div class="parent">
		<!-- 상단 바 -->
		<div class="top_bar"></div>
		<!-- 메뉴 큰 틀 -->
		<div class="menu">
			<!-- 검색 -->
			<div class="search_div"></div>

			<!-- 검색 아이콘 -->
			<!-- 로고 -->
			<div class="logo1">
				<a href="main_page.jsp"> <img
					src="../img/logo_img/logo3.png" alt=""></a>
			</div>
			<!-- 홈페이지 소개 -->
			<div class="menu2">
				<a href="homeif.jsp"> <img
					src="../img/logo_img/menu1.png" style="width: 100%; height: 70px;"
					alt=""></a>
			</div>

			<!-- 공지사항 -->
			<div class="menu3">
				<a href="gong.jsp"> <img
					src="../img/logo_img/menu2.png" style="width: 100%; height: 70px;"
					alt=""></a>
			</div>

			<!-- 산 정보 -->
			<div class="menu4">
				<a href="mountain.jsp"> <img src="../img/logo_img/menu3.png"
					style="width: 100%; height: 70px;" alt=""></a>
			</div>

			<!-- 커뮤니티 -->
			<div class="menu5">
				<a href="commu.jsp"> <img src="../img/logo_img/menu4.png"
					style="width: 100%; height: 70px;" alt=""></a>
			</div>

		</div>

		<br>
		<div class="home">
			<div class="center" align="center">

				<div class="menu1_center_div">
					<div class="main_banner">
						<div class="main_banner_1">
							<img src="../img/banners3.png" width="1045px" height="350px"
								alt="">
						</div>
						<div class="main_banner_1">
							<img src="../img/banners2.png" width="1045px" height="350px"
								alt="">
						</div>
						<div class="main_banner_1">
							<img src="../img/banners4.png" width="1045px" height="350px"
								alt="">
						</div>
						<div class="main_banner_1">
							<img src="../img/ban1.png" width="1045px" height="350px"
								alt="">
						</div>

					</div>


				</div>
				<div class="gong_main">
					<div class="gong">
						<div class="gonggi">
							<img src="../img/gonggi.png">
						</div>
						<div>
							<img src="../img/gonggitxt.png">
						</div>
					</div>
					<div class="gong2">
						<div>
							<img src="../img/welcome.png" alt="" align="left">
						</div>
						<div class="login">
							<a href="../login.jsp"><img src="../img/login.png" width="375px" height="70px"
								alt="">
							</a>
						</div>
						<div class="regi">
							<a href="../join.jsp"">
							<img src="../img/signup.png" alt="" align="right">
							</a>
						<!--<a href="">
							<img src="../img/id.png" alt="" align="left">
							</a>
							<img src="../img/slash.png" alt="" align="left">
							<a href="">
							<img src="../img/password.png" alt="" align="left" width="">
							</a>	잠시봉인-->
						</div>
					</div>
					<!-- 문학산 -->
					<div class="gong_img1">
						<a href="mtif.html"><img src="../img/munhak.png"></a>
					</div>
					<!-- 만월산 -->
					<div class="gong_img2">
						<!-- <a href="mtif8.html"> --><img src="../img/testing8.png"></a>
					</div>
					<!-- 천마산 -->
					<div class="gong_img3">
						<!-- <a href="mtif4.html"> --><img src="../img/testing4.png"></a>
					</div>
					<!-- 계양산 -->
					<div class="gong_img4">
						<a href="mtif1.html"><img src="../img/testing1.png"></a>
					</div>
                 <div class="mm">
					 <img src="../img/mmf.png" align="left">
				   </div>
				</div>
                   

			</div>
		</div>
		<div class="footer" align="center">ⓒ JEI University. All rights
			reserved. 22573 인천광역시 동구 재능로 178(송림동 122번지) 인천재능대학교 Tel :
			032-890-7000 / Fax : 032-890-7065</div>
	</div>
			<%
				}else{
			%>
			<!-- 전체 틀 -->
	<div class="parent">
		<!-- 상단 바 -->
		<div class="top_bar"></div>
		<!-- 메뉴 큰 틀 -->
		<div class="menu">
			<!-- 검색 -->
			<div class="search_div"></div>

			<!-- 검색 아이콘 -->
			<!-- 로고 -->
			<div class="logo1">
				<a href="main_page.jsp"> <img
					src="../img/logo_img/logo3.png" alt=""></a>
			</div>
			<!-- 홈페이지 소개 -->
			<div class="menu2">
				<a href="homeif.jsp"> <img
					src="../img/logo_img/menu1.png" style="width: 100%; height: 70px;"
					alt=""></a>
			</div>

			<!-- 공지사항 -->
			<div class="menu3">
				<a href="gong.jsp"> <img
					src="../img/logo_img/menu2.png" style="width: 100%; height: 70px;"
					alt=""></a>
			</div>

			<!-- 산 정보 -->
			<div class="menu4">
				<a href="mountain.jsp"> <img src="../img/logo_img/menu3.png"
					style="width: 100%; height: 70px;" alt=""></a>
			</div>

			<!-- 커뮤니티 -->
			<div class="menu5">
				<a href="commu.jsp"> <img src="../img/logo_img/menu4.png"
					style="width: 100%; height: 70px;" alt=""></a>
			</div>

		</div>

		<br>
		<div class="home">
			<div class="center" align="center">

				<div class="menu1_center_div">
					<div class="main_banner">
						<div class="main_banner_1">
							<img src="../img/banners3.png" width="1045px" height="350px"
								alt="">
						</div>
						<div class="main_banner_1">
							<img src="../img/banners2.png" width="1045px" height="350px"
								alt="">
						</div>
						<div class="main_banner_1">
							<img src="../img/banners4.png" width="1045px" height="350px"
								alt="">
						</div>
						<div class="main_banner_1">
							<img src="../img/ban1.png" width="1045px" height="350px"
								alt="">
						</div>

					</div>


				</div>
				<div class="gong_main">
					<div class="gong">
						<div class="gonggi">
							<img src="../img/gonggi.png">
						</div>
						<div>
							<img src="../img/gonggitxt.png">
						</div>
					</div>
					<div class="gong2">
						<div>
							<img src="../img/welcome.png" alt="" align="left">
						</div>
						<div class="login">
							<a href="../logoutAction.jsp"><img src="../img/logout.png" width="375px" height="70px"
								alt="">
							</a>
						</div>
						
					</div>
					<!-- 문학산 -->
					<div class="gong_img1">
						<a href="mtif.html"><img src="../img/munhak.png"></a>
					</div>
					<!-- 만월산 -->
					<div class="gong_img2">
						<!-- <a href="mtif8.html"> --><img src="../img/testing8.png"></a>
					</div>
					<!-- 천마산 -->
					<div class="gong_img3">
						<!-- <a href="mtif4.html"> --><img src="../img/testing4.png"></a>
					</div>
					<!-- 계양산 -->
					<div class="gong_img4">
						<a href="mtif1.html"><img src="../img/testing1.png"></a>
					</div>
                 <div class="mm">
					 <img src="../img/mmf.png" align="left">
				   </div>
				</div>
                   

			</div>
		</div>
		<div class="footer" align="center">ⓒ JEI University. All rights
			reserved. 22573 인천광역시 동구 재능로 178(송림동 122번지) 인천재능대학교 Tel :
			032-890-7000 / Fax : 032-890-7065</div>
	</div>
			
			<%
				}
			%>
</body>
</html>
