<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>메인</title>
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
              <a class="sidebar-link" href="./ui-buttons.html" aria-expanded="false">
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
              <a class="sidebar-link" href="#" aria-expanded="false">
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
                    <a href="shop_paycheck" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-list-check fs-6"></i>
                      <p class="mb-0 fs-3">My Basket</p>
                    </a>
                    <a href="login.html" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!--  Header End -->
      <div class="container-fluid">
        <!--  팀 분석 -->
        <div class="row">
          <div class="col-lg-8 d-flex align-items-strech">
            <div class="card w-100">
              <div class="card-body">
                <div class="d-sm-flex d-block align-items-center justify-content-between mb-9">
                  <div class="mb-3 mb-sm-0">
                    <h5 class="card-title fw-semibold">팀 분석</h5>
                  </div>
                  <div>
                    <select class="form-select">
                      <option value="1">March 2023</option>
                      <option value="2">April 2023</option>
                      <option value="3">May 2023</option>
                      <option value="4">June 2023</option>
                    </select>
                  </div>
                </div>
                <div class="row justify-content-between">
                  <div class="col-sm-6 card-body" id="div1"  style="position: relative;">
                    <!-- 여기에 축구장 -->
                    <img src="resources/assets/images/products/1137.jpg" alt="축구장 이미지">
                    <div style="position: absolute; top: 25%; left: 35%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>공격수</p>
                    </div>
              
                  <!-- 공격수 2 -->
                    <div style="position: absolute; top: 25%; left: 65%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>공격수</p>
                    </div>
              
                  <!-- 김빵빵 1 -->
                    <div style="position: absolute; top: 40%; left: 20%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>김빵빵</p>
                    </div>
              
                  <!-- 김빵빵 2 -->
                    <div style="position: absolute; top: 40%; left: 40%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>김빵빵</p>
                    </div>
              
                  <!-- 김빵빵 3 -->
                    <div style="position: absolute; top: 40%; left: 60%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>김빵빵</p>
                    </div>
              
                  <!-- 김빵빵 4 -->
                    <div style="position: absolute; top: 40%; left: 80%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>김빵빵</p>
                    </div>
              
                  <!-- 수비수 1 -->
                    <div style="position: absolute; top: 55%; left: 20%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>수비수</p>
                    </div>
              
                  <!-- 수비수 2 -->
                    <div style="position: absolute; top: 55%; left: 40%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>수비수</p>
                    </div>
              
                  <!-- 수비수 3 -->
                    <div style="position: absolute; top: 55%; left: 60%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>수비수</p>
                    </div>
              
                  <!-- 수비수 4 -->
                    <div style="position: absolute; top: 55%; left: 80%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p>수비수</p>
                    </div>
              
                  <!-- 골키퍼 -->
                    <div style="position: absolute; top: 70%; left: 50%; text-align: center;">
                      <img src="resources/assets/images/profile/user-1.jpg" class="formation-img">
                      <p class="player-info">
                        <span class="jersey-number">1.</span> <!-- 등번호 -->
                        <span class="player-name">공격수</span> <!-- 선수 이름 -->
                      </p>
                    </div>
                  </div>
                  <div class="col-sm-6 card-body" id="div2">
                    <div class="row">
                      <div class="col-sm-12">
                        <!-- 여기에 최근 승무패 -->
                        <table class="table">
                          <thead>
                              <tr>
                                  <th>경기</th>
                                  <th>결과</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td><span>2024.01.01</span><br>
                                    <span>광주 VS 서울</span></td>
                                  <td>승</td>
                              </tr>
                              <tr>
                                  <td>2</td>
                                  <td>무</td>
                              </tr>
                              <!-- 나머지 경기들도 동일하게 추가 -->
                              <tr>
                                <td>2</td>
                                <td>무</td>
                              </tr>
                          </tbody>
                      </table>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-12">
                        <!-- 여기에 구단 최다 득점 어시자 -->
                        <table class="table">
                          <thead>
                              <tr>
                                  <th>구단 최다 득점</th>
                                  <th>어시스트자</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td>구단1</td>
                                  <td>어시스트자1</td>
                              </tr>
                              <!-- 다른 구단 및 어시스트자도 동일하게 추가 -->
                              <tr>
                                <td>구단1</td>
                                <td>어시스트자1</td>
                              </tr>
                              <tr>
                                <td>구단1</td>
                                <td>어시스트자1</td>
                              </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 선수 분석 -->
          <div class="col-lg-4 d-flex align-items-stretch">
            <div class="card w-100">
              <div class="card-body p-4">
                <div class="d-sm-flex d-block align-items-center justify-content-between mb-9">
                  <div class="mb-3 mb-sm-0">
                    <h5 class="card-title fw-semibold">선수 분석</h5>
                  </div>
                  <div>
                    <select class="form-select" onchange="showPlayerInfo(this)">
                      <option value="default">기본 선수</option>
                      <option value="player1">선호 선수 1</option>
                      <option value="player2">선호 선수 2</option>
                    </select>
                  </div>
                </div>
                <div id="playerInfo">
                  <!-- 선수 정보가 여기에 표시됩니다 -->
                  <div class="card">
                    <div class="row align-items-center">
                      <div class="col-6">
                        <img id="playerImage" src="resources/assets/images/profile/user-1.jpg" class="img-fluid" alt="프로필 이미지">
                      </div>
                      <div class="col-6">
                        <div class="text-center">
                          <h5 id="playerName" class="mt-3"><strong>김옥지</strong></h5>
                          <p id="teamName">FC Seoul</p>
                          <p id="jerseyNumber">등번호 : 10</p>
                          <p id="position">포지션: 공격수</p>
                          <p id="birthdate">1990년 5월 15일</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <canvas id="player-chart"></canvas>
                </div>
              </div>
            </div>
          </div>
          <!-- 채팅 -->
          <div class="row">
            <!-- 왼쪽에 채팅 -->
            <div class="col-lg-4 d-flex align-items-stretch">
              <div class="card w-100">
                <div class="card-body p-4 d-flex flex-column">
                  <div class="mb-4">
                    <h5 class="card-title fw-semibold">채팅</h5>
                  </div>
            
                  <!-- 채팅 내용을 표시하는 부분 -->
                  <div class="chat-box flex-grow-1 overflow-auto mb-4" style="max-height: 340px;">
                    <div class="message">
                      <span class="message-sender">사용자1 :</span>
                      <span class="message-content">안녕하세요!</span>
                    </div>
                    <!-- 추가적인 채팅 메시지들을 이어서 표시할 수 있습니다. -->
                  </div>
            
                  <!-- 메시지 입력창 -->
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="메시지를 입력하세요...">
                    <button class="btn btn-primary" type="button">전송</button>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- 오른쪽에 일정과 퀴즈 -->
            <div class="col-lg-8">
              <div class="row">
                <!-- 일정 -->
                <div class="col-lg-12 d-flex align-items-stretch">
                  <div class="card w-100">
                    <div class="card-body">
                      <div class="d-sm-flex d-block align-items-center justify-content-between mb-9">
                        <div class="mb-3 mb-sm-0">
                          <h5 class="card-title fw-semibold">일정</h5>
                        </div>
                      </div>
                      <div class="row justify-content-between">
                          <div class="card col-lg-2 text-center border">
                            <div class="mt-3">
                              <img src="resources/assets/images/logos/ball_logo.png" class="logo-size">
                              <span>VS</span>
                              <img src="resources/assets/images/logos/ball_logo.png" class="logo-size"></div><br>
                            <div>광주 VS 서울</div>
                            <div class="mb-3">2024/01/01</div>
                          </div>
                          <div class="card col-lg-2 text-center border">
                            <div class="mt-3">일정1</div><br>
                            <div>광주 VS 서울</div>
                            <div class="mb-3">2024/01/01</div>
                          </div>
                          <div class="card col-lg-2 text-center border">
                            <div class="mt-3">일정1</div><br>
                            <div>광주 VS 서울</div>
                            <div class="mb-3">2024/01/01</div>
                          </div>
                          <div class="card col-lg-2 text-center border">
                            <div class="mt-3">일정1</div><br>
                            <div>광주 VS 서울</div>
                            <div class="mb-3">2024/01/01</div>
                          </div>
                          <div class="card col-lg-2 text-center border">
                            <div class="mt-3">일정1</div><br>
                            <div>광주 VS 서울</div>
                            <div class="mb-3">2024/01/01</div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- 퀴즈 -->
                <div class="col-lg-12 d-flex align-items-stretch mt-3">
                  <div class="card w-100">
                    <div class="card-body">
                      <div class="d-sm-flex d-block align-items-center justify-content-between mb-9">
                        <div class="mb-3 mb-sm-0">
                          <h5 class="card-title fw-semibold">퀴즈</h5>
                        </div>
                      </div>
                      <div id="quiz">
                        <p class="text-center fw-semibold">다음 중 가장 높은 산은 어디인가요?</p>
                          <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="정답을 입력하세요" id="answer">
                            <button class="btn btn-success" type="button" onclick="checkAnswer()">입력</button>
                          </div>
                        <p id="result"></p>
                      </div>
                    </div>  
                  </div>  
                </div>
              </div>
            </div>
            <div class="card h-400">
              <div class="card-body">
                <h5 class="card-title fw-semibold mb-4">뉴스</h5>
                <!-- 카드 4개 시작 -->
                <div class="row">
                  <!-- 카드 1 -->
                  <div class="col-md-3">
                    <div class="card">
                      <img src="resources/assets/images/logos/kick_logo.png" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                          the
                          card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                      </div>
                    </div>
                  </div>
                  <!-- 카드 2 -->
                  <div class="col-md-3">
                    <div class="card">
                      <img src="resources/assets/images/logos/kick_logo.png" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                          the
                          card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                      </div>
                    </div>
                  </div>
                  <!-- 카드 3 -->
                  <div class="col-md-3">
                    <div class="card">
                      <img src="resources/assets/images/logos/kick_logo.png" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                          the
                          card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                      </div>
                    </div>
                  </div>
                  <!-- 카드 4 -->
                  <div class="col-md-3">
                    <div class="card">
                      <img src="resources/assets/images/logos/kick_logo.png" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                          the
                          card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
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
  <script src="resources/js/js.js"></script>
  <script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/js/sidebarmenu.js"></script>
  <script src="resources/assets/js/app.min.js"></script>
  <script src="resources/assets/libs/apexcharts/dist/apexcharts.js"></script>
  <script src="resources/assets/libs/simplebar/dist/simplebar.js"></script>
  <script src="resources/assets/js/dashboard.js"></script>
  
</body>

</html>