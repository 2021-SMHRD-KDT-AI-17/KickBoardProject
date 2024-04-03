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
<title>shop</title>
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
if (authentication != null && authentication.isAuthenticated()
		&& authentication.getPrincipal() instanceof CustomUserDetails) {
	CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
	if (userDetails != null) {
		
	}
} else {

}
	%>
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
                <a class="sidebar-link active" aria-expanded="false">
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
									<%
	        if (authentication != null && authentication.isAuthenticated()
	   		&& authentication.getPrincipal() instanceof CustomUserDetails) {
	    		CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
		    	if (userDetails != null) {
		    		
		    	}
            %>
                  <div class="message-body">
                  <p class="mb-0 fs-3 profile-name text-center"><%=userDetails.getMem_nick() %>님 환영합니다.</p>
                  <p class="mb-0 fs-3 profile-name text-center">포인트 : <%=userDetails.getMem_point() %> P</p>
                    <a href="profile" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-user fs-6"></i>
                      <p class="mb-0 fs-3">My Profile</p>
                    </a>
                    <a href="shop_paycheck" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-shopping-cart fs-6"></i>
                      <p class="mb-0 fs-3">My Cart</p>
                    </a>
                    
                    <a href="logout" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
                  </div>
                  <%}else{ %>
                  <div class="message-body">
                   <p class="mb-0 fs-3 profile-name text-center">로그인이 필요합니다.</p>
                  </div>
                  <%} %>
                </div>
              </li>
            </ul>
          </div>
        </nav>
			</header>
			<!--  Header End -->
			<div class="container-fluid">
				<h1 class="text-center">
					<a href="#"><i class="ti ti-shopping-bag"></i></a>shop
				</h1>
				<br>
				<div class="row">
					<div class="col-sm-6 col-xl-3 goodsDiv">
						<div class="card overflow-hidden rounded-2">
							<div class="position-relative">
								<img src="resources/assets/images/backgrounds/k-l.jpg"
									class="card-img-top rounded-0 goodsImg" alt="resources."
									height="300px" width="300px">
								<p
									class="bg-primary rounded-circle p-2 text-white d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3 goodsAdd"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="Add To Cart">
									<i class="ti ti-basket fs-4"></i>
								</p>
							</div>
							<div class="card-body pt-3 p-4 iteminfo">
								<h6 class="fw-semibold fs-4 goodsName">머리띠</h6>
								<div class="d-flex align-items-center justify-content-between">
									<!-- 할인시 <del class="ms-2 fw-normal text-muted fs-3"></del> -->
									<h6 class="fw-semibold fs-4 mb-0">
										<span class="goodsPrice">5,000</span><span>원</span>
									</h6>
									<p class="ms-2 fw-normal text-muted fs-5"><span class="goodsInven">2</span><span>개</span></p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3 goodsDiv">
						<div class="card overflow-hidden rounded-2">
							<div class="position-relative">
								<img src="resources/assets/images/backgrounds/k-l.jpg"
									class="card-img-top rounded-0 goodsImg" alt="resources."
									height="300px" width="300px">
								<p
									class="bg-primary rounded-circle p-2 text-white d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3 goodsAdd"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="Add To Cart">
									<i class="ti ti-basket fs-4"></i>
								</p>
							</div>
							<div class="card-body pt-3 p-4 iteminfo">
								<h6 class="fw-semibold fs-4 goodsName">머리띠</h6>
								<div class="d-flex align-items-center justify-content-between">
									<!-- 할인시 <del class="ms-2 fw-normal text-muted fs-3"></del> -->
									<h6 class="fw-semibold fs-4 mb-0">
										<span class="goodsPrice">5,000</span><span>원</span>
									</h6>
									<p class="ms-2 fw-normal text-muted fs-5"><span class="goodsInven">2</span><span>개</span></p>
								</div>
							</div>
						</div>
					</div>
										<div class="col-sm-6 col-xl-3 goodsDiv">
						<div class="card overflow-hidden rounded-2">
							<div class="position-relative">
								<img src="resources/assets/images/backgrounds/k-l.jpg"
									class="card-img-top rounded-0 goodsImg" alt="resources."
									height="300px" width="300px">
								<p
									class="bg-primary rounded-circle p-2 text-white d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3 goodsAdd"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="Add To Cart">
									<i class="ti ti-basket fs-4"></i>
								</p>
							</div>
							<div class="card-body pt-3 p-4 iteminfo">
								<h6 class="fw-semibold fs-4 goodsName">머리띠</h6>
								<div class="d-flex align-items-center justify-content-between">
									<!-- 할인시 <del class="ms-2 fw-normal text-muted fs-3"></del> -->
									<h6 class="fw-semibold fs-4 mb-0">
										<span class="goodsPrice">5,000</span><span>원</span>
									</h6>
									<p class="ms-2 fw-normal text-muted fs-5"><span class="goodsInven">2</span><span>개</span></p>
								</div>
							</div>
						</div>
					</div>
										<div class="col-sm-6 col-xl-3 goodsDiv">
						<div class="card overflow-hidden rounded-2">
							<div class="position-relative">
								<img src="resources/assets/images/backgrounds/k-l.jpg"
									class="card-img-top rounded-0 goodsImg" alt="resources."
									height="300px" width="300px">
								<p
									class="bg-primary rounded-circle p-2 text-white d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3 goodsAdd"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="Add To Cart">
									<i class="ti ti-basket fs-4"></i>
								</p>
							</div>
							<div class="card-body pt-3 p-4 iteminfo">
								<h6 class="fw-semibold fs-4 goodsName">머리띠</h6>
								<div class="d-flex align-items-center justify-content-between">
									<!-- 할인시 <del class="ms-2 fw-normal text-muted fs-3"></del> -->
									<h6 class="fw-semibold fs-4 mb-0">
										<span class="goodsPrice">5,000</span><span>원</span>
									</h6>
									<p class="ms-2 fw-normal text-muted fs-5"><span class="goodsInven">2</span><span>개</span></p>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="col-sm-6 col-xl-3 goodsDiv">
						<div class="card overflow-hidden rounded-2">
							<div class="position-relative">
								<img src="resources/assets/images/backgrounds/k-l.jpg"
									class="card-img-top rounded-0 goodsImg" alt="resources."
									height="300px" width="300px">
								<p
									class="bg-primary rounded-circle p-2 text-white d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3 goodsAdd"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="Add To Cart">
									<i class="ti ti-basket fs-4"></i>
								</p>
							</div>
							<div class="card-body pt-3 p-4 iteminfo">
								<h6 class="fw-semibold fs-4 goodsName">머리띠</h6>
								<div class="d-flex align-items-center justify-content-between">
									<!-- 할인시 <del class="ms-2 fw-normal text-muted fs-3"></del> -->
									<h6 class="fw-semibold fs-4 mb-0">
										<span class="goodsPrice">5,000</span><span>원</span>
									</h6>
									<p class="ms-2 fw-normal text-muted fs-5"><span class="goodsInven">2</span><span>개</span></p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3 goodsDiv">
						<div class="card overflow-hidden rounded-2">
							<div class="position-relative">
								<img src="resources/assets/images/backgrounds/k-l.jpg"
									class="card-img-top rounded-0 goodsImg" alt="resources."
									height="300px" width="300px">
								<p
									class="bg-primary rounded-circle p-2 text-white d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3 goodsAdd"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="Add To Cart">
									<i class="ti ti-basket fs-4"></i>
								</p>
							</div>
							<div class="card-body pt-3 p-4 iteminfo">
								<h6 class="fw-semibold fs-4 goodsName">머리띠</h6>
								<div class="d-flex align-items-center justify-content-between">
									<!-- 할인시 <del class="ms-2 fw-normal text-muted fs-3"></del> -->
									<h6 class="fw-semibold fs-4 mb-0">
										<span class="goodsPrice">5,000</span><span>원</span>
									</h6>
									<p class="ms-2 fw-normal text-muted fs-5"><span class="goodsInven">2</span><span>개</span></p>
								</div>
							</div>
						</div>
					</div>
										<div class="col-sm-6 col-xl-3 goodsDiv">
						<div class="card overflow-hidden rounded-2">
							<div class="position-relative">
								<img src="resources/assets/images/backgrounds/k-l.jpg"
									class="card-img-top rounded-0 goodsImg" alt="resources."
									height="300px" width="300px">
								<p
									class="bg-primary rounded-circle p-2 text-white d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3 goodsAdd"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="Add To Cart">
									<i class="ti ti-basket fs-4"></i>
								</p>
							</div>
							<div class="card-body pt-3 p-4 iteminfo">
								<h6 class="fw-semibold fs-4 goodsName">머리띠</h6>
								<div class="d-flex align-items-center justify-content-between">
									<!-- 할인시 <del class="ms-2 fw-normal text-muted fs-3"></del> -->
									<h6 class="fw-semibold fs-4 mb-0">
										<span class="goodsPrice">5,000</span><span>원</span>
									</h6>
									<p class="ms-2 fw-normal text-muted fs-5"><span class="goodsInven">2</span><span>개</span></p>
								</div>
							</div>
						</div>
					</div>
										<div class="col-sm-6 col-xl-3 goodsDiv">
						<div class="card overflow-hidden rounded-2">
							<div class="position-relative">
								<img src="resources/assets/images/backgrounds/k-l.jpg"
									class="card-img-top rounded-0 goodsImg" alt="resources."
									height="300px" width="300px">
								<p
									class="bg-primary rounded-circle p-2 text-white d-inline-flex position-absolute bottom-0 end-0 mb-n3 me-3 goodsAdd"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="Add To Cart">
									<i class="ti ti-basket fs-4"></i>
								</p>
							</div>
							<div class="card-body pt-3 p-4 iteminfo">
								<h6 class="fw-semibold fs-4 goodsName">머리띠</h6>
								<div class="d-flex align-items-center justify-content-between">
									<!-- 할인시 <del class="ms-2 fw-normal text-muted fs-3"></del> -->
									<h6 class="fw-semibold fs-4 mb-0">
										<span class="goodsPrice">5,000</span><span>원</span>
									</h6>
									<p class="ms-2 fw-normal text-muted fs-5"><span class="goodsInven">2</span><span>개</span></p>
								</div>
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
					<a href="#" class="enum"><i	class="ti ti-arrow-right"></i></a>
				</div>
			</div>




		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
	const divs = document.getElementsByClassName("goodsDiv");
	const imgs = document.getElementsByClassName("goodsImg");
	const carts = document.getElementsByClassName("goodsAdd");
	const names = document.getElementsByClassName("goodsName");
	const prices = document.getElementsByClassName("goodsPrice");
	const inventory = document.getElementsByClassName("goodsInven");
	let goods_idxList = [];
	let goods_nameList = [];
	let goods_imgList = [];
	let goods_priceList = [];
	let goods_inventory = [];
	let goods_lastIdx; //페이징 할 글 끝 IDX
	let goods_firstIdx;
	const goods_perpage = 8; //페이지 당 굿즈 수
	const idx_count = 5; //아래 버튼 수
	let goods_pageNow = 1; //전체 페이지
	let active_page = 1; //현재 선택 페이징
	//버튼
	const atags = document.querySelectorAll('a[class="enum"]');
	atags[0].className = "invisible";
	atags[1].className = "active";
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
	//초기값
	getList(true, false, 0);
	//클로저 적용
	function listChange(i, idx) {
	    //즉시실행함수
	    (() => {
	        atags[i].addEventListener('click', () => {
	            if (active_page != idx) {
	                /*console.log(idx);*/
	                atags[active_page].classList.remove('active');
	                atags[idx].className = "active";
	                active_page = idx;
	                showGoodsList((idx - 1) * goods_perpage);
	            }
	        });
	    })();
	}
	function cartbutton(listnum, itemidx){
	    (()=>{
	            console.log(listnum);
	            console.log(itemidx);
	        carts[listnum].setAttribute("style", "cursor:pointer;");
	        //carts[listnum].removeEventListener();
	        carts[listnum].addEventListener('click',()=>{
	            $.ajax({
	                url: 'goodsAddcart?idx=' + itemidx,
	                type: "get",
	                dataType: 'json',
	                success: (data) => {
	                    if (data == null)
	                        alert("장바구니 담기에 실패했습니다");
	                    else
	                        alert("'" + data.goods_name + "'을 장바구니에 담았습니다");
	                }, error: () => {
	                    alert("통신실패-다시 시도해주세요");
	                }
	            })
	        });
	    })();
	}
	function pre_post(option) {
	    if (option == "post") {
	        /*console.log("post");*/
	        goods_pageNow++;
	        atags[active_page].classList.remove('active');
	        atags[0].classList.remove('invisible');
	        atags[1].className = "active";
	        active_page = 1;
	        getList(goods_lastIdx);
	    } else if (option == "pre" && goods_pageNow != 1) {
	        /*console.log("pre")*/;
	        goods_pageNow--;
	        atags[active_page].classList.remove('active');
	        atags[1].className = "active";
	        active_page = 1;
	        if (goods_pageNow == 1) atags[0].className = "invisible";
	        getList(goods_firstIdx);
	        atags[idx_count + 1].classList.remove('invisible');
	    }
	    for (i = 1; i < atags.length - 1; i++) {
	        var num = Number(goods_pageNow * (idx_count));
	        atags[i].innerText = num - (idx_count - i);
	    }
	}
	function showGoodsList(startN) {
	    var listnum = 0;
	    for (var i = startN; i < startN + goods_perpage; i++) {
	        carts[listnum].classList.remove('style');
	        carts[listnum].classList.remove('onclick');
	        carts[listnum].classList.remove('style');
	        if (goods_idxList[i] != null) {
	            let itemidx=Number(goods_idxList[i]);
	            console.log(itemidx);
	            divs[listnum].classList.remove("invisible");
	            imgs[listnum].setAttribute('src', goods_imgList[i]);
	            imgs[listnum].setAttribute("onclick", "location.href='shopDetails'");
	            // r_tr[listnum].setAttribute("onclick", "location.href='shopDetails?idx=" + req_IdxList[i] + "'");
				imgs[listnum].setAttribute("style", "cursor:pointer;");
	            //cartbutton(listnum, itemidx);
	            // carts[listnum].addEventListener('click', addcart(itemidx));
	            
	            names[listnum].innerText = goods_nameList[i];
	            prices[listnum].innerText = goods_priceList[i];
	            inventory[listnum].innerText = goods_inventory[i];
	        } else {
	            divs[listnum].className += " invisible";
	        }
	        listnum++;
	    }
	}
	function pagebuttonShow(listCount, lastIdx) {
	    let CNT = listCount / (goods_perpage);
	    let buttonCNT;
	    if (listCount % (goods_perpage) == 0)
	        buttonCNT = CNT;
	    else
	        buttonCNT = CNT + 1;
	    for (var i = 1; i < idx_count + 1; i++) {
	        if (buttonCNT >= i) {
	            atags[i].classList.remove('invisible');
	        }
	        else {
	            atags[i].className += " invisible";
	        }
	    }
	    if (listCount < goods_perpage * idx_count || lastIdx == 1)
	        atags[idx_count + 1].className += " invisible";
	}
	function getList(init, isPre, idx) {
	    let u;
	    if (init == true) u = "goodsFirstList";
	    else {
	        if (isPre == true) u = "goodsPreList";
	        else u = "goodsPostList";
	        u += "?range=" + idx;
	    }
	    $.ajax({
	        url: u,
	        type: "get",
	        dataType: 'json',
	        success: (data) => {
	            goods_idxList = [];
	            goods_nameList = [];
	            goods_imgList = [];
	            goods_priceList = [];
	            goods_inventory = [];
	            goods_lastIdx = data[data.length - 1].goods_idx;
	            goods_firstIdx = data[0].goods_idx;
	            for (var i = 0; i < data.length; i++) {
	                if (data[i] != null) {
	                    goods_idxList.push(data[i].goods_idx);
	                    goods_nameList.push(data[i].goods_name);
	                    goods_imgList.push(data[i].goods_img);
	                    goods_priceList.push(data[i].goods_price);
	                    goods_inventory.push(data[i].goods_inventory);
	                }
	            }
	            showGoodsList(0);
	            pagebuttonShow(data.length, goods_lastIdx);
	        }, error: () => {
	            console.log("통신실패");
	        }
	    })
	}
	function addcart(idx) {
	    console.log(idx);
	    $.ajax({
	        url: 'goodsAddcart?idx=' + idx,
	        type: "get",
	        dataType: 'json',
	        success: (data) => {
	            if (data == null)
	                alert("장바구니 담기에 실패했습니다");
	            else
	                alert("'" + data.goods_name + "'을 장바구니에 담았습니다");
	        }, error: () => {
	            //alert("통신실패-다시 시도해주세요");
	        }
	    })
	}

	</script>
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