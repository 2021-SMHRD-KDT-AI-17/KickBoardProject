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
  <title>news</title>
  <!-- tabler 아이콘 사용 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/dist/tabler-icons.min.css" />
  <link rel="shortcut icon" type="image/png" href="resources/assets/images/logos/ball_logo.png" />
  <link rel="stylesheet" href="resources/assets/css/styles.min.css" />
</head>

<body>
<% 
	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	CustomUserDetails user = (CustomUserDetails)authentication.getPrincipal();
	String useremail = authentication.getName();
	%>
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <!-- Sidebar Start -->
    <aside class="left-sidebar">
      <!-- Sidebar scroll-->
      <div>
        <div class="brand-logo d-flex align-items-center justify-content-between">
          <a href="home" class="text-nowrap logo-img">
            <img src="resources/assets/images/logos/kick_logo.png" width="180" alt="" />
          </a>
          <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
            <i class="ti ti-x fs-8"></i>
          </div>
        </div>
        <!-- Sidebar navigation-->

        
        
        <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
          <ul id="sidebarnav">
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Home</span>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="home" aria-expanded="false">
                <span>
                  <i class="ti ti-layout-dashboard"></i>
                </span>
                <span class="hide-menu">Dashboard</span>
              </a>
            </li>
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">contents</span>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="predict" aria-expanded="false">
                <span>
                  <i class="ti ti-current-location"></i>
                </span>
                <span class="hide-menu">predict</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="news" aria-expanded="false">
                <span>
                  <i class="ti ti-news"></i>
                </span>
                <span class="hide-menu">news</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="interview" aria-expanded="false">
                <span>
                  <i class="ti ti-ad-2"></i>
                </span>
                <span class="hide-menu">interview</span>
              </a>
              <li class="sidebar-item">
                <a class="sidebar-link" href="shop" aria-expanded="false">
                  <span>
                    <i class="ti ti-shopping-bag"></i>
                  </span>
                  <span class="hide-menu">shop</span>
                </a>
            </li>
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">profile</span>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="login" aria-expanded="false">
                <span>
                  <i class="ti ti-login"></i>
                </span>
                <span class="hide-menu">Login</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="register" aria-expanded="false">
                <span>
                  <i class="ti ti-user-plus"></i>
                </span>
                <span class="hide-menu">Register</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="login" aria-expanded="false">
                <span>
                  <i class="ti ti-logout"></i>
                </span>
                <span class="hide-menu">logout</span>
              </a>
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
            <li class="nav-item d-block d-xl-none">
              <a class="nav-link sidebartoggler nav-icon-hover" id="headerCollapse" href="javascript:void(0)">
                <i class="ti ti-menu-2"></i>
              </a>
            </li>
          </ul>
          <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
            <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
              <li class="nav-item dropdown">
                <a class="nav-link nav-icon-hover" href="javascript:void(0)" id="drop2" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  <img src="resources/assets/images/profile/user-1.jpg" alt="" width="35" height="35" class="rounded-circle">
                </a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up" aria-labelledby="drop2">
                  <div class="message-body">
                    <p class="mb-0 fs-3 profile-name">님 환영합니다.</p>
                    <a href="profile" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-user fs-6"></i>
                      <p class="mb-0 fs-3">My Profile</p>
                    </a>
                    <a href="shop_paycheck" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-shopping-cart fs-6"></i>
                      <p class="mb-0 fs-3">My Cart</p>
                    </a>
                    <a href="login" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!--  Header End -->
      <div class="container-fluid">
        <h1 class="text-center"><a href="#"><i class="ti ti-news"></i></a>news</h1>
        <div class="card">
          <div class="card-body">
            <!-- <h5 class="card-title fw-semibold mb-4">Sample Page</h5> -->
            <div>
				<div class="card">
				<div class="card-body row align-items-center justify-content-center card-link">
				<div class="col-3">
					<img src="resources/assets/images/logos/ball_logo.png" class="news-img">
				</div>
				<div class="col-8">
				    <h2 class="card-text">기사제목</h2>
                    <!-- <a href="#" class="card-link">해당 기사로 이동하기</a> -->
				</div>
				</div>
				</div>
            </div>
            
            <div>
				<div class="card">
				<div class="card-body row align-items-center justify-content-center card-link">
				<div class="col-3">
					<img src="resources/assets/images/logos/ball_logo.png" class="news-img">
				</div>
				<div class="col-8">
				    <h2 class="card-text">기사제목</h2>
                    <!-- <a href="#" class="card-link">해당 기사로 이동하기</a> -->
				</div>
				</div>
				</div>
            </div>
                        <div>
				<div class="card">
				<div class="card-body row align-items-center justify-content-center card-link">
				<div class="col-3">
					<img src="resources/assets/images/logos/ball_logo.png" class="news-img">
				</div>
				<div class="col-8">
				    <h2 class="card-text">기사제목</h2>
                    <!-- <a href="#" class="card-link">해당 기사로 이동하기</a> -->
				</div>
				</div>
				</div>
            </div>
                        <div>
				<div class="card">
				<div class="card-body row align-items-center justify-content-center card-link">
				<div class="col-3">
					<img src="resources/assets/images/logos/ball_logo.png" class="news-img">
				</div>
				<div class="col-8">
				    <h2 class="card-text">기사제목</h2>
                    <!-- <a href="#" class="card-link">해당 기사로 이동하기</a> -->
				</div>
				</div>
				</div>
            </div>
                        <div>
				<div class="card">
				<div class="card-body row align-items-center justify-content-center card-link">
				<div class="col-3">
					<img src="resources/assets/images/logos/ball_logo.png" class="news-img">
				</div>
				<div class="col-8">
				    <h2 class="card-text">기사제목</h2>
                    <!-- <a href="#" class="card-link">해당 기사로 이동하기</a> -->
				</div>
				</div>
				</div>
            </div>
            <div class="pagination d-flex justify-content-center">
            <a href="#" class="enum"><i class="ti ti-arrow-left"></i></a>
              <a href="#" class="enum">1</a>
              <a href="#" class="enum">2</a>
              <a href="#" class="enum">3</a>
              <a href="#" class="enum">4</a>
              <a href="#" class="enum">5</a>
              <a href="#" class="enum"><i class="ti ti-arrow-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="resources/assets/js/newslist.js"></script>
  <script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/js/sidebarmenu.js"></script>
  <script src="resources/assets/js/app.min.js"></script>
  <script src="resources/assets/libs/apexcharts/dist/apexcharts.js"></script>
  <script src="resources/assets/libs/simplebar/dist/simplebar.js"></script>
  <script src="resources/assets/js/dashboard.js"></script>
  
</body>

</html>