<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>게시글 자세히 보기</title>
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
        <h1 class="text-center"><a href="#"><i class="ti ti-ad-2"></i></a>${interview.mem_email}님의 인터뷰 질의글</h1><br>
        <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">
          <div class="card-body">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col" class="text-center fw-semibold fs-4 mb-0">${interview.req_idx}</th>
                  <th scope="col" class="text-center fw-semibold fs-4 mb-0">${interview.req_title}</th>
                  <th scope="col" class="text-center fw-semibold fs-4 mb-0"><span class="badge bg-primary rounded-3 fw-semibold">선수</span></th>
                  <th scope="col" class="text-center fw-semibold fs-4 mb-0">린가드</th>
                  <th scope="col" class="text-center fw-semibold fs-4 mb-0">👍${interview.req_likes}</th>
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
             <button class="btn btn-primary">추천하기👍</button>
             <a href="interview"><button class="btn btn-primary">게시판으로 이동</button></a>
            </div>
            <div class="card-body">
              <h5 class="card-title fw-semibold mb-4">다른 글 보기</h5>
              <table class="table text-nowrap mb-0 align-middle">
                 <tbody>
                  <tr class="r_tr">
                    <td class="req_idx">651</td>
                    <td class="req_title">대 황 린 가 드 는 어 디 득 점 왕 을 할 수 있 을 까 요 ?</td>
                    <td class="req_writer">작성자 1</td>
                    <td>
                    <div class="d-flex align-items-center gap-2 justify-content-center">
                      <span class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
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
                      <div class="d-flex align-items-center gap-2 justify-content-center">
                        <span class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
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
                      <div class="d-flex align-items-center gap-2 justify-content-center">
                        <span class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
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
                      <div class="d-flex align-items-center gap-2 justify-content-center">
                        <span class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
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
                    <div class="d-flex align-items-center gap-2 justify-content-center">
                      <span class="badge bg-primary rounded-3 fw-semibold req_viewee">선수</span>
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
                    <div class="d-flex align-items-center gap-2 justify-content-center">
                      <span class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
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
                    <div class="d-flex align-items-center gap-2 justify-content-center">
                      <span class="badge bg-primary rounded-3 fw-semibold req_viewee">선수</span>
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
                    <div class="d-flex align-items-center gap-2 justify-content-center">
                      <span class="badge bg-primary rounded-3 fw-semibold req_viewee">선수</span>
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
                    <div class="d-flex align-items-center gap-2 justify-content-center">
                      <span class="badge bg-danger rounded-3 fw-semibold req_viewee">구단</span>
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
                    <div class="d-flex align-items-center gap-2 justify-content-center">
                      <span class="badge bg-primary rounded-3 fw-semibold req_viewee">선수</span>
                    </div>
                  </td>
                    <td class="req_likes">15</td>
                    <td class="req_at">2024-03-25</td>
                  </tr>
                </tbody>
              </table>
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
  </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script type="text/javascript">
  const r_tr = document.getElementsByClassName("r_tr");
  const r_idx = document.getElementsByClassName("req_idx");
  const r_title = document.getElementsByClassName("req_title");
  const r_writer = document.getElementsByClassName("req_writer");
  const r_viewee = document.getElementsByClassName("req_viewee");
  const r_likes = document.getElementsByClassName("req_likes");
  const r_at = document.getElementsByClassName("req_at");
  let req_IdxList = [];
  let req_TitleList = [];
  let req_WriterList = [];
  let req_VieweeList = [];
  let req_LikesList = [];
  let req_AtList = [];
  //버튼
  const atags = document.querySelectorAll('a[class="enum"]');
  atags[0].className = "invisible";
  atags[1].className = "active";
  // console.log(atags);

  let req_pageNow = 1; //전체 페이지
  let active_page = 1; //현재 선택 페이징
  let req_lastIdx; //페이징 할 글 끝 IDX
  let req_firstIdx;
  const post_perpage = 10; //페이지 당 인터뷰글 수
  const idx_count = 5; //아래 버튼 수

  //버튼 이벤트 등록
  for (var i = 0; i < atags.length; i++) {
      if (i > 0 && i < atags.length - 1) {
          var idx = Number(atags[i].innerText);
          listChange(i, idx);
      } else {
          if (i == 0)
              atags[i].addEventListener('click', () => pre_post("pre"));
          else
              atags[i].addEventListener('click', () => pre_post("post"));
      }
  }

  //그 외 글10개
  getList(true, false, "");
  //클로저 적용
  function listChange(i, idx) {
      //즉시실행함수
      (() => {
          atags[i].addEventListener('click', () => {
              if (active_page != idx) {
                  console.log(idx);
                  atags[active_page].classList.remove('active');
                  atags[idx].className = "active";
                  active_page = idx;
                  showReqList((idx - 1) * post_perpage);
              }
          });
      })();
  }
  function pre_post(option) {
      let is_ajaxSucces;
      if (option == "post") {
          // console.log("post");
          req_pageNow++;
          
          is_ajaxSucces=getList(false, false, req_lastIdx);
          if(is_ajaxSucces==true) atags[0].classList.remove('invisible');
      } else if (option == "pre" && req_pageNow != 1) {
          // console.log("pre");
          req_pageNow--;
          if (req_pageNow == 1) atags[0].className = "invisible";
          is_ajaxSucces=getList(false, true, req_firstIdx);
          atags[idx_count + 1].classList.remove('invisible');
      }
      if(is_ajaxSucces==true){
          atags[active_page].classList.remove('active');
          atags[1].className = "active";
          active_page = 1;
          for (i = 1; i < atags.length - 1; i++) {
              var num = Number(req_pageNow * (idx_count));
              atags[i].innerText = num - (idx_count - i);
          }
      }else{
          alert("통신실패");
      }
  }
  function showReqList(startN) {
      var listnum = 0;
      var date = new Date();
      for (var i = startN; i < startN + post_perpage; i++) {
          r_tr[listnum].classList.remove('bg-onclick');
          r_tr[listnum].classList.remove('style');
          r_viewee[listnum].classList.remove('bg-primary');
          r_viewee[listnum].classList.remove('bg-danger');
          if (req_IdxList[i] != null) {
              r_tr[listnum].setAttribute("onclick", "location.href='interview_detail?idx=" + req_IdxList[i] + "'");
              r_tr[listnum].setAttribute("style", "cursor:pointer;");
              r_idx[listnum].innerText=req_IdxList[i];
              r_title[listnum].innerText=req_TitleList[i];
              r_writer[listnum].innerText =req_WriterList[i];
              if(req_VieweeList[i]=="선수"){
                  r_viewee[listnum].className += " bg-primary";
              }else{
                  r_viewee[listnum].className += " bg-danger";
              }
              r_viewee[listnum].innerText=req_VieweeList[i];
              r_likes[listnum].innerText = req_LikesList[i];
              r_at[listnum].innerText=req_AtList[i].split(" ")[0];
          } else {
              r_idx[listnum].innerText="X";
              r_title[listnum].innerText="어서 인터뷰 질문글을 작성해 보세요!";
              r_writer[listnum].innerText="👀";
              r_viewee[listnum].innerText="💨";
              r_likes[listnum].innerText = "👎";
              r_at[listnum].innerText=date.getHours() + ":" + date.getMinutes();
          }
          listnum++;
      }
  }
  function pagebuttonShow(listCount, lastIdx) {
      let CNT = listCount / (post_perpage);
      let buttonCNT;
      if (listCount % (post_perpage) == 0)
          buttonCNT = CNT;
      else
          buttonCNT = CNT + 1;
      for (var i = 1; i < idx_count + 1; i++) {
          if (buttonCNT >= i) {
              atags[i].classList.remove('invisible');
          }
          else {
              atags[i].className = "invisible";
          }
      }
      if (listCount < post_perpage * idx_count || lastIdx == 1)
          atags[idx_count + 1].className = "invisible";
  }
  function getList(init, isPre, idx) {
  	let u;
      if (init == true) u = "reqFirstList";
      else {
          if (isPre == true) u = "reqPreList";
          else u = "reqPostList";
          u += "?range=" + idx;
      }
      $.ajax({
          url: u,
          type: "get",
          dataType: 'json',
          async :false,
          success: (data) => {
              req_IdxList = [];
              req_TitleList = [];
              req_WriterList = [];
              req_VieweeList = [];
              req_LikesList = [];
              req_AtList = [];
              req_lastIdx = data[data.length - 1].req_idx;
              req_firstIdx = data[0].req_idx;
              let tmp = "";
              for (var i = 0; i < data.length; i++) {
                  if (data[i] != null) {
                      req_IdxList.push(data[i].req_idx);
                      req_TitleList.push(data[i].req_title);
                      req_WriterList.push(data[i].mem_email);
                      if (data[i].player_idx != 0) {
                          req_VieweeList.push("선수");
                      }
                      else {
                          req_VieweeList.push("구단");
                      }
                      tmp = "👍";
                      tmp += data[i].req_likes;
                      req_LikesList.push(tmp);
                      req_AtList.push(data[i].req_at);
                  }
              }
              showReqList(0);
              pagebuttonShow(data.length, req_lastIdx);
              return true;
          }, error: () => {
              console.log("통신실패");
              return false;
          }
      })
  }
  </script>
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