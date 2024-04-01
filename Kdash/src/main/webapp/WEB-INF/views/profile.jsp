<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>프로필</title>
<!-- tabler 아이콘 사용 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/dist/tabler-icons.min.css" />
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/logos/ball_logo.png" />
<link rel="stylesheet" href="resources/assets/css/styles.min.css" />
</head>

<body>
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
			<!-- 시작!! -->
			<div class="container-fluid">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title fw-semibold mb-4">My Profile</h5>
						<div class="row">
							<div
								class="col-md-6 d-flex justify-content-center align-items-center">
								<div class="text-center">
									<div class="alert alert-secondary" role="alert">'누구누구'님
										환영합니다!</div>
									<img src="https://via.placeholder.com/400"
										class="img-fluid mb-4" alt="Product Image">
								</div>
							</div>

							<div class="col-md-6 d-flex flex-column justify-content-between">
								<h4 class="mb-3">회원정보 수정</h4>
								<p class="mb-4 fw-semibold">수정하고 싶은 닉네임과 비밀번호를 입력해 주세요.</p>

								<div class="input-group mb-3">
									<span class="input-group-text" style="width: 100px;">Nickname</span>
									<input type="text" class="form-control"
										placeholder="닉네임을 입력해 주세요.">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" style="width: 100px;">Password</span>
									<input type="text" class="form-control"
										placeholder="비밀번호를 입력해 주세요."><br>
								</div>
								<form>
									<div class="mb-3">
										<label for="teamselect" class="form-label">구단 설정</label>
										<div>
											<select id="teamselect" class="form-select">
												<option value="1">울산</option>
												<option value="2">포항</option>
												<option value="3">광주</option>
												<option value="4">전북</option>
												<option value="5">인천</option>
												<option value="6">대구</option>
												<option value="7">서울</option>
												<option value="8">대전</option>
												<option value="9">제주</option>
												<option value="10">강원</option>
												<option value="11">수원FC</option>
												<option value="12">김천</option>
											</select>
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-md-12">
											<label for="playerselect" class="form-label">선호 선수</label>
											<div id="playerList" class="input-group">
												<input type="text" id="playerselect" class="form-control"
													placeholder="선수명">
												<button id="addPlayerBtn" class="btn btn-outline-secondary"
													type="button">추가</button>
											</div>
										</div>
									</div>
									<div class="mb-3">
										<label for="selectteam" class="form-label">선호 구단</label> <input
											type="text" id="selTeam" class="form-control" disabled>
									</div>
									<div class="mb-3">
										<label for="selectplayer" class="form-label">선호 선수 <i
											class="ti ti-xbox-x"></i></label> <input type="text" id="selPlayer"
											class="form-control" disabled>
									</div>
								</form>
								<div class="mt-auto text-end">
									<!-- 사진 선택 -->
									<label class="btn btn-secondary" for="input-file">사진 선택</label>
									<input type="file" id="input-file" style="display: none;">
									<!-- 수정  -->
									<button type="submit" class="btn btn-primary">수정</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@4.4.2/dist/chart.umd.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="/연습/assets/js/profile.js"></script>
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