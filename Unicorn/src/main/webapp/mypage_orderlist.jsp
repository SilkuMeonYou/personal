<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>주문내역 조회</title>
  <!-- bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
  <!-- font -->
  <link rel="stylesheet" type="text/css"
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />


  <style>
    /* div { border: 1px solid orange; } */

    /* common */
    body { font-family: pretendard; }
    ul, ol, dl, li { list-style: none; }
    a { text-decoration: none; color: none; color: #000; }
    /* common end */
    a:hover, a:active, a:focus { text-decoration: none; }

    @font-face {
      font-family: 'ImcreSoojin';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    /* =========================
	  헤더
    ========================= */
    #header { background: #fff;}
    header .toparea { height: 50px; }
    header .topbar { vertical-align: middle; }
    header .top-item { float: right; margin-right: 20px; margin-top: 10px; font-size: 12px; }
    header .container-fluid { height: 100px; }

     /* =========================
	  푸터
    ========================= */
    footer .toparea { height: 50px; }
    footer .topbar { vertical-align: middle; }
    footer .top-item { float: right; margin-right: 20px; margin-top: 0px; font-size: 12px; }
    footer .logo { padding-left: 15px; }

    .footer .container { font-size: 11px; font-weight: 1000; line-height: 4;}
    .footercontent { color:rgb(59, 59, 59); font-weight: 300; margin-right: 30px; }



    /* 고정 사이드메뉴 ====================*/

    #container {
      /* border: 1px solid blue; */
      margin: 50px auto;

    }

    .mainbar2 {
      /* border: 1px solid red; */
      width: 1200px;
      display: flex;
      justify-content: space-between;
      margin: auto;
    }

    .menubar {
      width: 250px;
    }

    .recent_list {
      width: 900px;
    }

    .menubar_title {
      font-weight: bold;
      margin-top: 70px;
      margin-bottom: 10px;
    }

    .menubar_item {
      margin-bottom: 10px;
    }

    .recent_list_title {
      /* border: 1px solid red; */
      border-bottom: 2px solid gray;
      padding: 20px;
      font-weight: bold;
    }

    .recent_list_item {
      border-bottom: 1px solid gray;
      height: 400px;
    }

    /*==================== 고정 사이드메뉴*/

    .tab-content{
      /* border: 1px solid red; */
      margin-top: 50px;
    }

    /*==================== 주문내역조회, 취소반품내역*/
    /* .nav-link {
      color: black;
      font-weight: bold;
    } */

    .home_item_wrap {
      border: 1px solid rgb(190, 190, 190);
      margin: auto;
      margin-top: 20px;
      width: 900px;
      height: 180px;
      display: flex;
    }

    .menu1_wrap {
      /* border: 1px solid rgb(190, 190, 190); */
      margin: auto;
      margin-top: 20px;
      width: 800px;
      height: 500px;
      padding-top: 20px;
      text-align: center;
      color: gray;
    }

    .home_item_img {
      width: 300px;
    }

    .home_item {
      /* border: 1px solid blue; */
      width: 650px;
      margin: 10px 10px 10px 20px;
    }

    .home_item_pay{
      font-weight: bold;
      font-size: 18px;
    }
    .home_item_date{
      font-size: 12px;
    }
    .home_item_name {
      margin-top: 10px;
      /* font-weight: bold; */
    }

    .home_item_review {
      /* border: 1px solid black; */
      text-align: right;
      color: gray;
    }


    /* 페이지 넘버 ====================*/

    .oderbar_num{
      /* border: 1px solid blue; */
      display: flex;
      justify-content: center;
      margin-top: 50px;
    }
    .oderbar_num_item{
      /* border: 1px solid gray; */
      width: 30px;
      height: 30px;
      margin: 5px;
      text-align: center;
    }


  </style>
</head>

<body class="main" style="margin-top: 0;">

  <div id="wrap">
    <header id="header" class="head">
      <div class="toparea">
        <ul class="topbar">
          <li class="top-item"><a href="#" class="top-link" style="margin-right: 50px;">고객지원</a></li>
          <li class="top-item"><a href="#" class="top-link">마이페이지</a></li>
          <li class="top-item"><a href="#" class="top-link">최근본상품</a></li>
          <li class="top-item"><a href="#" class="top-link">주문조회</a></li>
          <li class="top-item"><a href="#" class="top-link">로그인</a></li>
        </ul>
      </div>
      <!-- top area end-->
      <!-- nav bar -->
      <nav class="navbar navbar-expand-lg">
        <!-- expand-lg 지점에 도달하면 메뉴 사라지고 버튼 나타남 -->
        <div class="container-fluid">
          <a class="navbar-brand" href="index.html" style="font-family:'ImcreSoojin';">
            <h2> Noop Noop </h2>
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <!-- 버튼 나타나고 클릭시 target으로 -->
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <!-- collapse -->
            <div class="navbar-nav ms-5 hstack gap-4 ">
              <a class="nav-link active" aria-current="page" href="index.html"><h6> Home </h6></a>
              <a class="nav-link" href="event.html"><h6> Event </h6></a>
              <a class="nav-link" href="pd3.html"><h6> Best </h6></a>
              <a class="nav-link" href="pd3.html#listUP"><h6> Product </h6></a>
              <div class="vr"></div>
              <a class="nav-link" href="AboutUs.html"><h6> About us </h6></a>
            </div>

            <div class="searchbar ms-auto" style="float:right;">
              <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-warning" type="submit">
                  <img src="https://ifh.cc/g/0odrBb.png">
                </button>
              </form>
            </div>
          </div>
        </div>
      </nav>
    </header>
    <!-- header end -->

    <!-- section -->
    <section id="section" class="sectionbody">

      <div class="headerarea"></div>
      <div id="container">

        <div class="mainbar2">
          <div class="menubar">
            <ul>
              <li class="menubar_title">나의 쇼핑정보</li>
              <li class="menubar_item"><a href="#none"></a>주문내역 조회</li>
              <li class="menubar_item"><a href="#none"></a>적립금 내역</li>
              <li class="menubar_item"><a href="#none"></a>쿠폰 내역</li>
            </ul>

            <ul>
              <li class="menubar_title">활동 정보</li>
              <li class="menubar_item"><a href="#none"></a>최근 본 상품</li>
              <li class="menubar_item"><a href="#none"></a>나의 위시리스트</li>
              <li class="menubar_item"><a href="#none"></a>나의 게시글</li>
            </ul>

            <ul>
              <li class="menubar_title">나의 정보</li>
              <li class="menubar_item"><a href="#none"></a>회원정보 수정</li>
              <li class="menubar_item"><a href="#none"></a>로그아웃</li>
            </ul>

          </div>



          <!-- nav tabs 기본형태 -->
          <div class="container mt-3">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a href="#home" class="nav-link active" data-bs-toggle="tab">주문내역조회</a>
              </li>
              <li class="nav-item">
                <a href="#menu1" class="nav-link " data-bs-toggle="tab">취소반품내역</a>
              </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
              <div class="tab-pane container active" id="home">
                <div class="home_item_wrap">
                  <img class="home_item_img" src="https://ifh.cc/g/Sat34K.jpg">

                  <div class="home_item">
                    <div class="home_item_pay">배송완료</div>
                    <div class="home_item_pay">주문번호 2023-1010-1010</div>
                    <div class="home_item_date"> 10.01 결제</div>
                    <div class="home_item_name"> 침대</div>
                    <div class="home_item_price"> 1000원</div>
                    <div class="home_item_review">후기작성</div>
                  </div>
                  
                </div>

                <div class="home_item_wrap">
                  <img class="home_item_img" src="https://ifh.cc/g/1YO3X4.jpg">
                  
                  <div class="home_item">
                    <div class="home_item_pay">배송완료</div>
                    <div class="home_item_pay">주문번호 2023-1010-1010</div>
                    <div class="home_item_date"> 10.01 결제</div>
                    <div class="home_item_name"> 침대</div>
                    <div class="home_item_price"> 1000원</div>
                    <div class="home_item_review">후기작성</div>
                  </div>
                  
                </div>
                <div class="home_item_wrap">
                  <img class="home_item_img" src="https://ifh.cc/g/1qv40K.jpg">
                  
                  <div class="home_item">
                    <div class="home_item_pay">배송완료</div>
                    <div class="home_item_pay">주문번호 2023-1010-1010</div>
                    <div class="home_item_date"> 10.01 결제</div>
                    <div class="home_item_name"> 침대</div>
                    <div class="home_item_price"> 1000원</div>
                    <div class="home_item_review">후기작성</div>
                  </div>
                </div>

                <div class="oderbar_num">
                  <div class="oderbar_num_item"><<</div>
                  <div class="oderbar_num_item"><</div>
                  <div class="oderbar_num_item">1</div>
                  <div class="oderbar_num_item">></div>
                  <div class="oderbar_num_item">>></div>
                </div>

              </div>
              <div class="tab-pane container " id="menu1">
                
                <div class="menu1_wrap">
                  취소 / 반품 내역이 없습니다.
                </div>

                </div>

            </div>
          </div>
        </div>
      </div>


    </section>
    <!-- section end -->

    <hr class="hr mt-5" style="color: #d0ac88;">
    <footer id="footer" class="footer">
      <div class="toparea">
        <ul class="topbar">
          <li class="top-item"><a href="#none" class="top-link" style="margin-right: 50px;">이용안내</a></li>
          <li class="top-item"><a href="#none" class="top-link">개인정보처리방침</a></li>
          <li class="top-item"><a href="#none" class="top-link">이용약관</a></li>
          <li class="top-item"><a href="#none" class="top-link">인재채용</a></li>
          <li class="top-item"><a href="#none" class="top-link">회사소개</a></li>
        </ul>
      </div>
      <div class="logo">
        <a class="logo" href="index.html" style="font-family:'ImcreSoojin';">
          <h2> Noop Noop </h2>
        </a>
      </div>
      <div class="footer container">
        쇼핑몰 기본정보 <br>
        상호명 <span class="footercontent"> Noop Noop </span>
        대표 <span class="footercontent"> Unicorn </span>
        대표전화 <span class="footercontent"> 000-000-0000 </span>
        사업자등록번호 <span class="footercontent"> 000-000-0000 </span><br>
        통신판매업 신고번호 개인정보보호책임자 <span class="footercontent"> 유니콘 </span>
        주소 <span class="footercontent"> 충남 천안시 동남구 대흥로 134</span>

      </div>


    </footer>
  </div>
</body>

</html>