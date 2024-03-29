<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>login</title>
  <link rel="shortcut icon" type="image/png" href="resources/assets/images/logos/ball_logo.png" />
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
                <a href="./index.html" class="text-nowrap logo-img text-center d-block py-3 w-100">
                  <img src="resources/assets/images/logos/kick_logo.png" width="300" alt="">
                </a>
                <form>
                  <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Username</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                  <div class="mb-4">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1">
                  </div>
                  <a href="http://kauth.kakao.com/oauth/authorize?client_id=094ab7e7162ef731539c15a485e3357b&redirect_uri=http://localhost:8084/DBTest/register&response_type=code" >
                  <img src="resources/assets/images/logos/kakao_login_medium.png">
                  </a>
                  <a href="home" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2">Sign In</a>
                  <div class="d-flex align-items-center justify-content-center">
                    <a class="text-primary fw-bold ms-2" href="register">Create an account</a>
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

</body>

</html>