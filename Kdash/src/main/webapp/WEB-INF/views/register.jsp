<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>register</title>
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
                  <div class="">
                    <label for="exampleInputtext1" class="form-label">Email Address</label>
                    <input type="email" class="form-control" id="email" aria-describedby="email">
                    <div class="mt-3 d-flex align-items-start justify-content-between">
                      <span class="alert alert-warning text-start">* 다시 입력해 주세요</span>
                      <button class="btn btn-light text-end">Send Email Code</button>
                    </div>
                  </div>
                  <div class="">
                    <label for="exampleInputEmail1" class="form-label">Email Code</label>
                    <input type="text" class="form-control" id="emailcheck" aria-describedby="emailcheck">
                    <div class="mt-3 d-flex align-items-start justify-content-between">
                      <span class="alert alert-warning text-start">* 다시 입력해 주세요</span>
                      <button class="btn btn-light text-end">Send Email Code</button>
                    </div>
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1">
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password check</label>
                    <input type="password" class="form-control" id="exampleInputPassword1">
                  </div>
                  <a href="register2.html" class="btn btn-secondary w-100 py-8 fs-4 mb-4 rounded-2">Next</a>
                  <div class="d-flex align-items-center justify-content-center">
                    <p class="fs-4 mb-0 fw-bold">Already have an Account?</p>
                    <a class="text-primary fw-bold ms-2" href="login.html">Sign in</a>
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