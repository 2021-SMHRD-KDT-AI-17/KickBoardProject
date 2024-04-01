<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>main</title>
  <!-- tabler 아이콘 사용 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/dist/tabler-icons.min.css" />
  <link rel="shortcut icon" type="image/png" href="resources/assets/images/logos/ball_logo.png" />
  <link rel="stylesheet" href="resources/assets/css/styles.min.css" />
</head>

<body>
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
              <a class="sidebar-link" href="#" aria-expanded="false">
                <span>
                  <i class="ti ti-report-analytics"></i>
                </span>
                <span class="hide-menu">analysis</span>
              </a>
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
              <a class="sidebar-link" href="logout" aria-expanded="false">
                <span>
                  <i class="ti ti-logout"></i>
                </span>
                <span class="hide-menu">logout</span>
              </a>
            </li>
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
                    <a href="profile" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-user fs-6"></i>
                      <p class="mb-0 fs-3">My Profile</p>
                    </a>
                    <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-mail fs-6"></i>
                      <p class="mb-0 fs-3">My Account</p>
                    </a>
                    <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-list-check fs-6"></i>
                      <p class="mb-0 fs-3">My Cart</p>
                    </a>
                    <a href="logout" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!--  Header End -->
      <div class="container-fluid">
        <div class="card">
          <div class="card-body">
            <!-- 여기부터 -->
            <div class="d-sm-flex d-block align-items-center justify-content-between mb-9">
              <div class="mb-3 mb-sm-0">
              </div>
              <div>
                <select class="form-select">
                  <option value="1">울산 HD</option>
                  <option value="2">포항</option>
                  <option value="3">광주</option>
                  <option value="4">전북 현대</option>
                  <option value="1">인천 utd</option>
                  <option value="2">대구</option>
                  <option value="3">서울</option>
                  <option value="4">대전 하나</option>
                  <option value="1">제주 utd</option>
                  <option value="2">강원</option>
                  <option value="3">수원 FC</option>
                  <option value="4">김천 상무</option>
                </select>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-8 d-flex align-items-strech">
                <div class="card w-100">
                  <div class="card-body">
                    <!-- style="background-color:#004098;" -->
                    <div class="club-title-box">
                      <div class="club-title-teamBox text-center mb-3">
                        <img src="resources/assets/images/logos/ball_logo.png" class="img-emble">
                        <ul class="">
                          <li class="club-list">울산 현대</li>
                          <li class="club-list">GANGWON FC</li>
                        </ul>
                      </div>
                    </div>
                    <div class="row justify-content-center align-items-center mb-2">
                      <div class="col-lg-6">
                        <div class="card">
                            <img src="resources/assets/images/backgrounds/bg1.jpg " class="w-100 formation-img">
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <!-- 테이블 영역 -->
                        <div class="card">
                          <table class="table table-sm text-center mb-0">
                           <!-- 테이블 헤더 -->
                           <thead class="table-head">
                            <tr>
                             <th colspan="3">득점 순위</th>
                            </tr>
                          </thead>
                           <!-- 테이블 바디 -->
                           <tbody>
                            <tr class="table-head-2">
                              <th scope="col">순위</th>
                              <th scope="col">도움 수</th>
                              <th scope="col">선수</th>
                             </tr>
                            <tr>
                             <td>1</td>
                             <td>3</td>
                             <td>제갈제니</td>
                            </tr>
                            <tr>
                             <td>2</td>
                             <td>2</td>
                             <td>김옥지</td>
                            </tr>
                            <tr>
                             <td>3</td>
                             <td>1</td>
                             <td>김빵빵</td>
                            </tr>
                            </tbody>
                          </table>
                          <table class="table table-sm text-center mb-0">
                            <!-- 테이블 헤더 -->
                            <thead class="table-head">
                              <tr>
                               <th colspan="3">도움 순위</th>
                              </tr>
                            </thead>
                            <!-- 테이블 바디 -->
                            <tbody>
                              <tr class="table-head-2">
                                <th scope="col">순위</th>
                                <th scope="col">도움 수</th>
                                <th scope="col">선수</th>
                               </tr>
                              <tr>
                               <td>1</td>
                               <td>3</td>
                               <td>제갈제니</td>
                              </tr>
                              <tr>
                               <td>2</td>
                               <td>2</td>
                               <td>김옥지</td>
                              </tr>
                              <tr>
                               <td>3</td>
                               <td>1</td>
                               <td>김빵빵</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                        
                      </div>

                     </div>
                     <div id="rank-5"></div>

                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="row">
                    <!-- Yearly Breakup -->
                    <div class="card overflow-hidden">
                      <div class="card-body p-4">
                        <h5 class="card-title mb-9 fw-semibold text-b justify-content-between">올 시즌 전적</h5>
                        <div class="row align-items-center">
                          <div class="col-8">
                            <h5 class="fw-semibold mb-3">현재 순위 : <span>1위</span></h5>
                            <div class="d-flex align-items-center mb-3">
                              <p class="text-dark me-1 fs-3 mb-0">최근 5경기 전적</p>
                            </div>
                            <div class="d-flex align-items-center">
                              <div class="me-4">
                                <div id="teamA" class="d-flex flex-wrap mr-3 mb-2">
                                  <span class="result draw">무</span>
                                  <span class="result lose">패</span>
                                  <span class="result draw">무</span>
                                  <span class="result lose">패</span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="col-4">
                            <div class="d-flex justify-content-center">
                              <div id="record"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                    <!-- Monthly Earnings -->
                    <div class="card w-100">
                      <div class="card-body p-4">
                        <div class="mb-4">
                          <h5 class="card-title fw-semibold">일정</h5>
                        </div>
                        <ul class="timeline-widget mb-0 position-relative mb-n5">
                          <li class="timeline-item d-flex position-relative overflow-hidden">
                            <div class="timeline-time text-dark flex-shrink-0 text-end">2024.01.01</div>
                            <div class="timeline-badge-wrap d-flex flex-column align-items-center">
                              <span class="timeline-badge border-2 border border-success flex-shrink-0 my-8"></span>
                              <span class="timeline-badge-border d-block flex-shrink-0"></span>
                            </div>
                            <div class="timeline-desc fs-3 text-dark mt-n1 fw-semibold"><span>광주</span>VS<span>서울</span></div>
                          </li>
                          <li class="timeline-item d-flex position-relative overflow-hidden">
                            <div class="timeline-time text-dark flex-shrink-0 text-end">2024.01.01</div>
                            <div class="timeline-badge-wrap d-flex flex-column align-items-center">
                              <span class="timeline-badge border-2 border border-success flex-shrink-0 my-8"></span>
                              <span class="timeline-badge-border d-block flex-shrink-0"></span>
                            </div>
                            <div class="timeline-desc fs-3 text-dark mt-n1 fw-semibold"><span>광주</span>VS<span>서울</span></div>
                          </li>
                          <li class="timeline-item d-flex position-relative overflow-hidden">
                            <div class="timeline-time text-dark flex-shrink-0 text-end">2024.01.01</div>
                            <div class="timeline-badge-wrap d-flex flex-column align-items-center">
                              <span class="timeline-badge border-2 border border-success flex-shrink-0 my-8"></span>
                              <span class="timeline-badge-border d-block flex-shrink-0"></span>
                            </div>
                            <div class="timeline-desc fs-3 text-dark mt-n1 fw-semibold"><span>광주</span>VS<span>서울fc</span></div>
                          </li>
                          <li class="timeline-item d-flex position-relative overflow-hidden">
                            <div class="timeline-time text-dark flex-shrink-0 text-end">2024.01.01</div>
                            <div class="timeline-badge-wrap d-flex flex-column align-items-center">
                              <span class="timeline-badge border-2 border border-success flex-shrink-0 my-8"></span>
                              <span class="timeline-badge-border d-block flex-shrink-0"></span>
                            </div>
                            <div class="timeline-desc fs-3 text-dark mt-n1 fw-semibold">광주fc vs 전북 현대 모터스</div>
                          </li>
                          <li class="timeline-item d-flex position-relative overflow-hidden">
                            <div class="timeline-time text-dark flex-shrink-0 text-end">2024.01.01</div>
                            <div class="timeline-badge-wrap d-flex flex-column align-items-center">
                              <span class="timeline-badge border-2 border border-success flex-shrink-0 my-8"></span>
                            </div>
                            <div class="timeline-desc fs-3 text-dark mt-n1 fw-semibold">전북 현대 모터스 vs 서울fc</div>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="card overflow-hidden">
                      <div class="card-body p-4 align-items-center">
                        <div>
                            <h5 class="card-title mb-3 fw-semibold">Follow</h5>
                            <p class="mb-3">해당 구단을 팔로우 하려면 버튼을 눌러주세요.</p>
                            <div class="d-flex justify-content-end">
                              <button type="button" class="btn btn-outline-primary"><i class="ti ti-bell"></i>팔로우</button>
                            </div>
                        </div>
                      </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.2/dist/chart.umd.min.js"></script>
  <script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/js/sidebarmenu.js"></script>
  <script src="resources/assets/js/app.min.js"></script>
  <script src="resources/assets/libs/apexcharts/dist/apexcharts.js"></script>
  <script src="resources/assets/libs/simplebar/dist/simplebar.js"></script>
  <script src="resources/assets/js/dashboard.js"></script>
  
</body>

</html>