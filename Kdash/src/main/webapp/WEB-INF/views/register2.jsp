<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>register2</title>
  <link rel="shortcut icon" type="image/png" href="resources/assets/images/logos/ball_logo.png"/>
  <link rel="stylesheet" href="resources/assets/css/styles.min.css" />
</head>

<body>
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <div
      class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
      <div class="d-flex align-items-center justify-content-center w-100">
        <div class="row justify-content-center w-100">
          <div class="col-md-8 col-lg-6 col-xxl-3">
            <div class="card mb-0">
              <div class="card-body">
                <a href="home" class="text-nowrap logo-img text-center d-block py-3 w-100">
                  <img src="resources/assets/images/logos/kick_logo.png" width="300" alt="">
                </a>
                <form>
                  <div class="mb-3">
                    <label for="teamselect" class="form-label">구단 설정</label>
                    <div>
                      <select id="teamselect" class="form-select">
                        <option value="1">FC서울</option>
                        <option value="2">강원FC</option>
                        <option value="3">광주FC</option>
                        <option value="4">김천상무FC</option>
                        <option value="5">대전하나시티즌</option>
                        <option value="6">수원FC</option>
                        <option value="7">울산HDFC</option>
                        <option value="8">인천유나이티드</option>
                        <option value="9">전북현대모터스</option>
                        <option value="10">제주유나이티드</option>
                        <option value="11">포항스틸러스</option>
                        <option value="12">대구FC</option>
                      </select>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col-md-12">
                      <label for="playerselect" class="form-label">선호 선수</label>
                      <div id="playerList" class="input-group">
                        <input type="text" id="playerselect" class="form-control" placeholder="선수명">
                        <button id="addPlayerBtn" class="btn btn-outline-secondary" type="button">추가</button>
                      </div>
                    </div>
                  </div>
                  <div class="mb-3">
                    <label for="selectteam" class="form-label">선호 구단</label>
                    <input type="text" id="selTeam" class="form-control" disabled>
                  </div>
                  <div class="mb-3">
                    <label for="selectplayer" class="form-label">선호 선수 <i class="ti ti-xbox-x"></i></label>
                    <input type="text" id="selPlayer" class="form-control" disabled>
                  </div>
                </form>
                  <a href="login" class="btn btn-secondary w-100 py-8 fs-4 mb-4 rounded-2">Sign Up</a>
                  <div class="d-flex align-items-center justify-content-center">
                    <p class="fs-4 mb-0 fw-bold">Already have an Account?</p>
                    <a class="text-primary fw-bold ms-2" href="login">Setting</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="/연습/assets/js/register2.js"></script>
</body>

</html>