<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>predict</title>
  <!-- tabler 아이콘 사용 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/dist/tabler-icons.min.css" />
  <link rel="shortcut icon" type="image/png" href="resources/assets/images/logos/ball_logo.png" />
  <link rel="stylesheet" href="resources/assets/css/styles.min.css" />
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
                    <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-user fs-6"></i>
                      <p class="mb-0 fs-3">My Profile</p>
                    </a>
                    <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-mail fs-6"></i>
                      <p class="mb-0 fs-3">My Account</p>
                    </a>
                    <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-list-check fs-6"></i>
                      <p class="mb-0 fs-3">My Task</p>
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
        <div class="row">
          <!-- 대시보드 (lg-8) -->
          <div class="col-lg-8 mb-4">
            <div class="card predict-box">
              <div class="card-body">
                <h5 class="card-title fw-semibold mb-4 text-center">
                  <span><img src="/연습/assets/images/logos/ball_logo.png" class="field-logo">Gwangju </span>
                  vs
                  <span> seoul</span><img src="/연습/assets/images/logos/ball_logo.png" class="field-logo"></h5>
                <!-- card -->
                <div class="row">
                  <div class="col-lg-12 player-card">
                    <div class="card">
                      <div class="card-body">
                        <img src="/연습/assets/images/products/filed1.jpg" class="mx100-mh100">
                        <div class="card-body team-lineup-a rounded p-3">
                          <table class="table-sm table-img text-center table-text-color " style="width: 180px;">
                            <tr class="team-name-row">
                              <td colspan="3">팀 이름</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr class="team-name-row">
                              <td >12</td>
                              <td>김빵빵</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td colspan="3">감독 : 이정효</td>
                            </tr>
                          </table>
                          <!-- 여기에 A팀 라인업 정보 추가 -->
                        </div>
                        <!-- B팀 라인업 -->
                        <div class="card-body team-lineup-b rounded p-3">
                          <table class="table-sm table-img text-center table-text-color " style="width: 180px;">
                            <tr class="team-name-row">
                              <td colspan="3">팀 이름</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td>12</td>
                              <td>김옥지</td>
                              <td>gk</td>
                            </tr>
                            <tr class="team-name-row">
                              <td >12</td>
                              <td>김빵빵</td>
                              <td>gk</td>
                            </tr>
                            <tr>
                              <td colspan="3">감독 : 이정효</td>
                            </tr>
                          </table>
                          <!-- 여기에 A팀 라인업 정보 추가 -->
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card col-lg-12">
                  <div class="card-body">
                    <h5 class="card-title mb-3">Sub-Entry</h5>
                    <ul class="subList text-center">
                      <li>팀이름</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                    </ul>
                    <ul class="subList text-center">
                      <li>팀이름</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                      <li>123</li>
                    </ul> 
                  </div>
                </div>
                <div class="card">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="card-body d-flex flex-column justify-content-center h-100">
                        <h5 class="card-title fw-semibold mb-2">최근 전적 5 games</h5>
                        <div class="d-flex flex-column align-items-center justify-content-center flex-grow-1">
                          <p class="align-self-start my-2 fw-semibold">abc</p>
                          <div id="teamA" class="d-flex flex-wrap mr-3 mb-2">
                            <span class="result draw">무</span>
                            <span class="result lose">패</span>
                            <span class="result draw">무</span>
                            <span class="result lose">패</span>
                            <span class="result lose">패</span>
                          </div>
                          <div class="d-flex justify-content-center mb-2">
                            <div>
                              <div class="d-flex align-items-center">
                                <label for="average-score" class="me-2">평균 득점 :</label>
                                <div class="progress" style="width: 120px;">
                                  <div class="progress-bar bg-primary" role="progressbar" style="width: 56%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="10">2.7</div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="d-flex justify-content-center">
                            <div>
                              <div class="d-flex align-items-center">
                                <label for="average-score" class="me-2">평균 실점 :</label>
                                <div class="progress " style="width: 120px;">
                                  <div class="progress-bar bg-info" role="progressbar" style="width: 50%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">2.5</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="d-flex flex-column align-items-center justify-content-center flex-grow-1">
                          <p class="align-self-start my-2 fw-semibold">팀A</p>
                          <div id="teamA" class="d-flex flex-wrap mr-3 mb-2">
                            <span class="result win">승</span>
                            <span class="result lose">패</span>
                            <span class="result draw">무</span>
                            <span class="result lose">패</span>
                            <span class="result lose">패</span>
                          </div>
                          <div class="d-flex justify-content-center mb-2">
                            <div>
                              <div class="d-flex align-items-center">
                                <label for="average-score" class="me-2">평균 득점 :</label>
                                <div class="progress" style="width: 120px;">
                                  <div class="progress-bar bg-primary" role="progressbar" style="width: 40%;" aria-valuenow="2" aria-valuemin="0" aria-valuemax="5">2.21</div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="d-flex justify-content-center">
                            <div>
                              <div class="d-flex align-items-center">
                                <label for="average-score" class="me-2">평균 실점 :</label>
                                <div class="progress " style="width: 120px;">
                                  <div class="progress-bar bg-info" role="progressbar" style="width: 20%;" aria-valuenow="1" aria-valuemin="0" aria-valuemax="5">1.22</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="col-lg-6">
                      <div class="card-body">
                        <h5 class="card-title fw-semibold mb-2">상대 전적 10 games</h5>
                        <canvas id="doughnutChart"></canvas>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="row">
                    <div class="col">
                      <div class="card-body">
                        <h5 class="card-title fw-semibold mb-4">팀 A</h5>
                        <!-- 최다 득점자와 최다 어시스트자 테이블 -->
                        <div class="table-responsive">
                          <table class="table table-sm">
                            <thead>
                              <tr class="mb-5">
                                <th scope="col">최다 득점자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Player A</td>
                                <td>20 points</td>
                              </tr>
                              <tr>
                                <td>Player B</td>
                                <td>18 points</td>
                              </tr>
                              <tr>
                                <td>Player B</td>
                                <td>18 points</td>
                              </tr>
                              <!-- 추가적인 최다 득점자 행들 -->
                            </tbody>
                          </table>
                        </div>
                        
                        <div class="table-responsive">
                          <table class="table table-sm">
                            <thead>
                              <tr>
                                <th scope="col">최다 어시스트자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Player X</td>
                                <td>15 assists</td>
                              </tr>
                              <tr>
                                <td>Player Y</td>
                                <td>12 assists</td>
                              </tr>
                              <tr>
                                <td>Player Y</td>
                                <td>12 assists</td>
                              </tr>
                              <!-- 추가적인 최다 어시스트자 행들 -->
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                    <div class="col">
                      <div class="card-body">
                        <h5 class="card-title fw-semibold mb-4">팀 B</h5>
                        <!-- 최다 득점자와 최다 어시스트자 테이블 -->
                        <div class="table-responsive">
                          <table class="table table-sm">
                            <thead>
                              <tr class="mb-5">
                                <th scope="col">최다 득점자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Player A</td>
                                <td>20 points</td>
                              </tr>
                              <tr>
                                <td>Player B</td>
                                <td>18 points</td>
                              </tr>
                              <tr>
                                <td>Player B</td>
                                <td>18 points</td>
                              </tr>
                              <!-- 추가적인 최다 득점자 행들 -->
                            </tbody>
                          </table>
                        </div>
                        
                        <div class="table-responsive">
                          <table class="table table-sm">
                            <thead>
                              <tr>
                                <th scope="col">최다 어시스트자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Player X</td>
                                <td>15 assists</td>
                              </tr>
                              <tr>
                                <td>Player Y</td>
                                <td>12 assists</td>
                              </tr>
                              <tr>
                                <td>Player Y</td>
                                <td>12 assists</td>
                              </tr>
                              <!-- 추가적인 최다 어시스트자 행들 -->
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
              </div>
            </div>
          </div>
          <!-- 채팅방 (lg-4) -->
					<div class="col-lg-4 mb-4">
            <div class="card predict-box">
              <div class="card-body d-flex flex-column wrapper">
                <!-- 채팅방 내용 -->
                <h5 class="card-title fw-semibold mb-4">Chat Room</h5>
                <!-- 채팅 메시지 -->
                <div class="chat-box flex-grow-1 d-flex flex-column ">
                  <!-- 채팅 내용 표시 -->
                  <div id="chat_box" class="chat-message bg-white rounded p-2 mb-2 display-container">
                    <!-- <p class="mb-0"><strong>User1:</strong> Hello, any predictions?</p> -->
                  </div>
                  
                  <!-- 채팅 입력 -->
                  
                    <div class="mb-3">
                      <label class="form-label">Your Message</label>
                      <input type="text" id="msg" class="form-control">
                    </div>
                    <button id="msg_process" class="btn btn-primary w-100">Send</button>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- 섹션 2 (lg-4) -->
          <div class="col-lg-3">
            <div class="card h-100">
              <div class="card-body d-flex flex-column justify-content-between">
                <h5 class="card-title fw-bold mb-4 text-center"><i class="ti ti-trophy"></i>game predict<i class="ti ti-trophy"></i></h5>
                <div class="text-center mb-3">
                  <h6 class="mb-0">2024.01.01</h6>
                  <p class="mb-0 fw-bold">
                    <span><img src="/연습/assets/images/logos/ball_logo.png" class="small-logo">광주 fc </span>
                    vs
                    <span>서울 fc<img src="/연습/assets/images/logos/ball_logo.png" class="small-logo"></span></p>
                </div>
                <div class="progress mb-3">
                  <div class="progress-bar bg-success" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">승: 40%</div>
                  <div class="progress-bar bg-secondary" role="progressbar" style="width: 30%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">무: 30%</div>
                  <div class="progress-bar bg-danger" role="progressbar" style="width: 30%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">패: 30%</div>
                </div>
                <form class="d-flex justify-content-center">
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="result" id="win" value="win">
                    <label class="form-check-label fw-normal" for="win">승</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="result" id="draw" value="draw">
                    <label class="form-check-label fw-normal" for="draw">무</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="result" id="lose" value="lose">
                    <label class="form-check-label fw-normal" for="lose">패</label>
                  </div>
                </form>
                <div class=" text-center mt-3">
                  <button type="submit" class="btn btn-outline-success w-75">전송</button>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="card h-100">
              <div class="card-body d-flex flex-column justify-content-between">
                <h5 class="card-title fw-semibold mb-4 text-center"><i class="ti ti-ball-football"></i>most scorer, assist<i class="ti ti-ball-football"></i></h5>
                <form class="d-flex flex-column">
                  <div class="mb-3">
                    <label for="top_scorer" class="form-label">최다 득점자</label>
                    <div class="input-group">
                      <input type="text" class="form-control" id="top_scorer">
                      <button class="btn btn-primary">전송</button>
                    </div>
                  </div>
                  <div class="mb-3">
                    <label for="top_assist_provider" class="form-label">최다 도움자</label>
                    <div class="input-group">
                      <input type="text" class="form-control" id="top_assist_provider">
                      <button class="btn btn-primary">전송</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="card h-100">
              <div class="card-body d-flex flex-column justify-content-between">
                <h5 class="card-title fw-semibold mb-4 text-center"><i class="ti ti-thumb-up"></i>MVP , LVP<i class="ti ti-thumb-down"></i></h5>
                <form>
                  <div class="mb-3">
                    <label for="mvp" class="form-label">MVP (Most Valuable Player)</label>
                    <div class="input-group">
                      <input type="text" class="form-control" id="mvp">
                      <button class="btn btn-primary">전송</button>
                    </div>
                  </div>
                  <div class="mb-3">
                    <label for="lvp" class="form-label">LVP (Least Valuable Player)</label>
                    <div class="input-group">
                      <input type="text" class="form-control" id="lvp">
                      <button class="btn btn-primary">전송</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="card h-100">
              <div class="card-body d-flex flex-column">
                <h5 class="card-title fw-semibold mb-4 text-center">참여 방법</h5>
                <!-- 설명 칸 -->
                <h6>game predict</h6>
                <p class="mb-1">여기에 설명을 적어 주세요</p>
                <h6>game predict</h6>
                <p class="mb-1">여기에 설명을 적어 주세요</p>
                <h6>game predict</h6>
                <p >여기에 설명을 적어 주세요</p>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
  </div>
  <script src="resources/assets/js/chart.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.2/dist/chart.umd.min.js"></script>
  <script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/js/sidebarmenu.js"></script>
  <script src="resources/assets/js/app.min.js"></script>
  <script src="resources/assets/libs/apexcharts/dist/apexcharts.js"></script>
  <script src="resources/assets/libs/simplebar/dist/simplebar.js"></script>
  <script src="resources/assets/js/dashboard.js"></script>
  <script src="http://localhost:82/socket.io/socket.io.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
	<script>
		$(document).ready(function() {
			var socket = io("http://localhost:82");

			//msg에서 키를 누를떄
			$("#msg").keydown(function(key) {
				//해당하는 키가 엔터키(13) 일떄
				if (key.keyCode == 13) {
					//msg_process를 클릭해준다.
					msg_process.click();
				}
			});

			//msg_process를 클릭할 때
			$("#msg_process").click(function() {
				//소켓에 send_msg라는 이벤트로 input에 #msg의 벨류를 담고 보내준다.
				socket.emit("send_msg", $("#msg").val());
				//#msg에 벨류값을 비워준다.
				$("#msg").val("");
			});

			//소켓 서버로 부터 send_msg를 통해 이벤트를 받을 경우 
			socket.on('send_msg', function(msg) {
				//div 태그를 만들어 텍스트를 msg로 지정을 한뒤 #chat_box에 추가를 시켜준다.
				$('<div class="chat-message bg-white rounded p-2 mb-2"></div>').text(msg).appendTo("#chat_box");
				//스크롤 내리기
				$('#chat_box').scrollTop($('#chat_box')[0].scrollHeight+20);
			});
		});
		
		
	</script>
</body>

</html>