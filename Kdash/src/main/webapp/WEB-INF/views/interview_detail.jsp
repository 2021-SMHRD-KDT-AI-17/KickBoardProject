<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="com.kickboard.Kdash.config.auth.CustomUserDetails"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="java.security.Principal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시글 자세히 보기</title>
<!-- tabler 아이콘 사용 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/dist/tabler-icons.min.css" />
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/logos/ball_logo.png" />
<link rel="stylesheet" href="resources/assets/css/styles.min.css" />
</head>

<body>
<% 
	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	CustomUserDetails user = (CustomUserDetails)authentication.getPrincipal();
	String useremail = authentication.getName();
	%>
<<<<<<< HEAD
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">
		<!-- Sidebar Start -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div>
				<div
					class="brand-logo d-flex align-items-center justify-content-between">
					<a href="home" class="text-nowrap logo-img"> <img
						src="resources/assets/images/logos/kick_logo.png" width="180"
						alt="" />
					</a>
					<div
						class="close-btn d-xl-none d-block sidebartoggler cursor-pointer"
						id="sidebarCollapse">
						<i class="ti ti-x fs-8"></i>
					</div>
				</div>
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav scroll-sidebar" data-simplebar="">
					<ul id="sidebarnav">
						<li class="nav-small-cap"><i
							class="ti ti-dots nav-small-cap-icon fs-4"></i> <span
							class="hide-menu">Home</span></li>
						<li class="sidebar-item"><a class="sidebar-link" href="home"
							aria-expanded="false"> <span> <i
									class="ti ti-layout-dashboard"></i>
							</span> <span class="hide-menu">Dashboard</span>
						</a></li>
						<li class="nav-small-cap"><i
							class="ti ti-dots nav-small-cap-icon fs-4"></i> <span
							class="hide-menu">contents</span></li>
						
						<li class="sidebar-item"><a class="sidebar-link"
							href="predict" aria-expanded="false"> <span> <i
									class="ti ti-current-location"></i>
							</span> <span class="hide-menu">predict</span>
						</a></li>
						<li class="sidebar-item"><a class="sidebar-link" href="news"
							aria-expanded="false"> <span> <i class="ti ti-news"></i>
							</span> <span class="hide-menu">news</span>
						</a></li>
						<li class="sidebar-item"><a class="sidebar-link"
							href="interview" aria-expanded="false"> <span> <i
									class="ti ti-ad-2"></i>
							</span> <span class="hide-menu">interview</span>
						</a>
						<li class="sidebar-item"><a class="sidebar-link" href="shop"
							aria-expanded="false"> <span> <i
									class="ti ti-shopping-bag"></i>
							</span> <span class="hide-menu">shop</span>
						</a></li>
						<li class="nav-small-cap"><i
							class="ti ti-dots nav-small-cap-icon fs-4"></i> <span
							class="hide-menu">profile</span></li>
						<li class="sidebar-item"><a class="sidebar-link" href="login"
							aria-expanded="false"> <span> <i class="ti ti-login"></i>
							</span> <span class="hide-menu">Login</span>
						</a></li>
						<li class="sidebar-item"><a class="sidebar-link"
							href="register" aria-expanded="false"> <span> <i
									class="ti ti-user-plus"></i>
							</span> <span class="hide-menu">Register</span>
						</a> <a class="sidebar-link" href="#" aria-expanded="false"> <span>
									<i class="ti ti-logout"></i>
							</span> <span class="hide-menu">logout</span>
						</a></li>
						</li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!--  Sidebar End -->
		<!--  Main wrapper -->
		<div class="body-wrapper">
			<!--  Header Start -->
			<header class="app-header">
				<nav class="navbar navbar-expand-lg navbar-light">
					<ul class="navbar-nav">
						<li class="nav-item d-block d-xl-none"><a
							class="nav-link sidebartoggler nav-icon-hover"
							id="headerCollapse" href="javascript:void(0)"> <i
								class="ti ti-menu-2"></i>
						</a></li>
					</ul>
					<div class="navbar-collapse justify-content-end px-0"
						id="navbarNav">
						<ul
							class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
							<li class="nav-item dropdown"><a
								class="nav-link nav-icon-hover" href="javascript:void(0)"
								id="drop2" data-bs-toggle="dropdown" aria-expanded="false">
									<img src="resources/assets/images/profile/user-1.jpg" alt=""
									width="35" height="35" class="rounded-circle">
							</a>
								<div
									class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up"
									aria-labelledby="drop2">
									<div class="message-body">
										<p class="mb-0 fs-3 profile-name">님 환영합니다.</p>
                    <a href="profile" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-user fs-6"></i>
                      <p class="mb-0 fs-3">My Profile</p>
                    </a>
                    <a href="shop_paycheck" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-shopping-cart fs-6"></i>
                      <p class="mb-0 fs-3">My Cart</p>
                    </a> <a href="login"
											class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
									</div>
								</div></li>
						</ul>
					</div>
				</nav>
			</header>
			<!--  Header End -->
			<div class="container-fluid">
				<h1 class="text-center">
					<a href="#"><i class="ti ti-ad-2"></i></a>${interview.mem_email}님의
					인터뷰 질의글
				</h1>
				<br>
				<div class="col-lg-12 d-flex align-items-stretch">
					<div class="card w-100">
						<div class="card-body">
							<table class="table">
								<thead>
									<tr>
										<th scope="col" class="text-center fw-semibold fs-4 mb-0" id="idxnow">${interview.req_idx}</th>
										<th scope="col" class="text-center fw-semibold fs-4 mb-0">${interview.req_title}</th>
										<th scope="col" class="text-center fw-semibold fs-4 mb-0"><span
											class="badge bg-primary rounded-3 fw-semibold">선수</span></th>
										<th scope="col" class="text-center fw-semibold fs-4 mb-0">린가드</th>
										<th scope="col" class="text-center fw-semibold fs-4 mb-0"
											id="likes">👍${interview.req_likes}</th>
										<th scope="col" class="text-center fw-semibold fs-4 mb-0">${interview.req_at}</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="7">
											<div class="card-body pt-3 p-4">
												<h5 class="fw-semibold fs-4">${interview.req_content}</h5>
												<!--                       <h5 class="fw-semibold fs-4">집가고싶다.&ensp;비가오는&ensp;날엔&ensp;축구✔&ensp;긴글&ensp;테스트&ensp;글&ensp;짤리나&ensp;테스트&ensp;내일점심&ensp;뭐먹지?????????????????????&ensp;시~~~~~~~~~~~~~~~~~~작&ensp;아아~~~~~~~~~~악</h5> -->
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<div class="text-end">
								<button class="btn btn-primary" id="likebutton">추천하기👍</button>
								<a href="interview"><button class="btn btn-primary">게시판으로
										이동</button></a>
							</div>
							
							<div class="card-body">
								<h5 class="card-title fw-semibold mb-4">다른 글 보기</h5>
								<table class="table text-center justify-content-center">
									<thead>
										<tr>
											<th scope="col" class="col-lg-1">글번호</th>
											<th scope="col" class="col-lg-4">제목</th>
											<th scope="col" class="col-lg-2">작성자</th>
											<th scope="col" class="col-lg-1">대상</th>
											<th scope="col" class="col-lg-1">추천수</th>
											<th scope="col" class="col-lg-3">작성일</th>
										</tr>
									</thead>
									<tbody>
										<tr class="r_tr">
											<td class="req_idx">651</td>
											<td class="req_title">대 황 린 가 드 는 어 디 득 점 왕 을 할 수 있 을 까
												요 ?</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
												</div>
											</td>
											<td class="req_likes">15</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr">
											<td class="req_idx">650</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
												</div>
											</td>
											<td class="req_likes">8</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr">
											<td class="req_idx">649</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
												</div>
											</td>
											<td class="req_likes">0</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr">
											<td class="req_idx">648</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
												</div>
											</td>
											<td class="req_likes">1</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr">
											<td class="req_idx">647</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-primary rounded-3 fw-semibold req_viewee">선수</span>
												</div>
											</td>
											<td class="req_likes">4</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr">
											<td class="req_idx">646</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
												</div>
											</td>
											<td class="req_likes">15</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr">
											<td class="req_idx">645</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-primary rounded-3 fw-semibold req_viewee">선수</span>
												</div>
											</td>
											<td class="req_likes">15</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr">
											<td class="req_idx">644</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-primary rounded-3 fw-semibold req_viewee">선수</span>
												</div>
											</td>
											<td class="req_likes">15</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr">
											<td class="req_idx">643</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
												</div>
											</td>
											<td class="req_likes">15</td>
											<td class="req_at">2024-03-25</td>
										</tr>
										<tr class="r_tr" id="test2">
											<td class="req_idx">642</td>
											<td class="req_title">게시물 제목 1</td>
											<td class="req_writer">작성자 1</td>
											<td>
												<div
													class="d-flex align-items-center gap-2 justify-content-center">
													<span
														class="badge bg-primary rounded-3 fw-semibold req_viewee">선수</span>
												</div>
											</td>
											<td class="req_likes">15</td>
											<td class="req_at">2024-03-25</td>
										</tr>
									</tbody>
								</table>
								<div class="pagination d-flex justify-content-center">
									<a href="#" class="enum"><i class="ti ti-arrow-left"></i></a> <a
										href="#" class="enum">1</a> <a href="#" class="enum">2</a> <a
										href="#" class="enum">3</a> <a href="#" class="enum">4</a> <a
										href="#" class="enum">5</a> <a href="#" class="enum"><i
										class="ti ti-arrow-right"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="resources/assets/js/interviewDetail.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@4.4.2/dist/chart.umd.min.js"></script>
	<script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="resources/assets/js/sidebarmenu.js"></script>
	<script src="resources/assets/js/app.min.js"></script>
	<script src="resources/assets/libs/apexcharts/dist/apexcharts.js"></script>
	<script src="resources/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="resources/assets/js/dashboard.js"></script>
</body>

</html>