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
  <title>index</title>
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
  botton tabs
  ========================= */    
  .sectionbody .nav-link { width: 278px; text-align: center; }
  .returninfo { list-style: disc ;}
  .table.table td { text-align: left; font-size: 13px; }


/* =========================
	  review tabs
    ========================= */
    .table.table td { text-align: left; font-size: 13px;}
    .reviewprofile { width: 70px;}
    .reviewscore { width: 70px;}
    .reviewid { width:80px;}

    /* =========================
	  별점
    ========================= */
    .star-rating { display:flex; flex-direction: row-reverse; font-size:1.5em;justify-content:space-around; padding:0 .2em; text-align:center; width:5em; }

    .star-rating input { display:none; }

    .star-rating label { color:#ccc; cursor:pointer; }

    .star-rating label:hover,.star-rating label:hover ~ label { color:#fc0; }

    /* =========================
	  textreview
    ========================= */
    .textreviewtitle { margin-top: 50px;}
    textarea { resize: none; width: 80%; height: 200px; border: 0.5px solid #a0a0a0; border-radius: 5px; }
    textarea:focus { outline-color: #d8c69c;}

    .buttonWrap { display: flex; flex-direction: row; }
    .button-item { width: 49%; text-align: center; }

    #cancelButton { margin-right: 2%; border: 1px solid #d0ac88; padding: 10px; color: #d0ac88; width: 100px;}
    #finishButton { color: white; background-color: #d0ac88; padding: 10px; width: 100px;}
    #cancelButton:hover, #finishButton:hover { cursor: pointer; }
    ::placeholder { font-size: 13px; }


  /* q&a board css */

  th{ height: 50px; background-color: #d8c69c; text-align: center; }
  td{ text-align: center; border-bottom: 1px solid #d8c69c; padding: 5px; font-size: 13px;}

  /* 페이지 css*/
  .pageWrap{ width: 100%; margin-top: 50px; display: flex; justify-content: center; }
  .page_button{ border: 1px solid #a0a0a0; width: 35px; text-align: center; margin-right: 5px; margin-left: 5px; padding: 3px 0 3px 0; }
  .page_sidebutton { width: 35px; text-align: center; }
  .page_button:hover{ cursor: pointer; }
  .page_sidebutton:hover{ cursor: pointer; }
  .writeWrap{ margin-top: 10px; }
  .write_QnA{ width: 100px; background-color: #d0ac88; padding: 5px; text-align: center; float: right; color: white; }


  /* =========================
    제품 상세 이미지
  ========================= */
  /*이미지 가격 박스 */
  .Product-detail { display: flex; }
  .bigbox{ display: flex; justify-content: center; margin-bottom: 10%; }
  .box2{ margin-left:10px; margin-right: 10px; ; width: 40%; padding-left: 50px;}

  /*이미지 */
  .big-img { width: 600px; height: 400px; }
  .small-img { width: 600px; display: flex; justify-content: center; }
  .small1, .small2,.small3{ width: 100px; height: 80px; margin: 2%; }
  .imgg img { width: 100%; height: 100%; } 
  .slider-container { width: 600px; height: 400px; overflow: hidden; position: relative; }
  .slider { width: 600px; height: 400px; display: flex; transition: transform 0.4s ease-in-out; }
  .slider img { width: 100%; height: 100%; }
  .slider-button-pr,.slider-button-ne { position: absolute; bottom: 10px; background-color: #8d8b8b; color: #fff; padding: 5px 10px; cursor: pointer; }
  .slider-button-ne{ left: 55%; transform: translateX(-55%); }
  .slider-button-pr{ left: 45%; transform: translateX(-45%); }
  
  /* 작은 이미지 호버 효과*/
  .small-image:hover { border: 3px solid #9b9b9b; border-radius: 3px; }
  .price { font-family:Arial;  color: red; font-weight: 1000; font-size: 20px;}
  .form-select { width: 300px;}
  #quantity-select { width: 300px; }  
  


  .top-button, .bottom-button { display: none; position: fixed; background-color: transparent;  color: white; border: none; border-radius: 5px; cursor: pointer; height: 50px; width: 50px; position: fixed;
 right: 10px; transform: translateY(-50%); padding: 10px; border-radius: 10px; margin-right: 10px;
  }

  .top-button{ top: 83%; }
  .bottom-button{ top: 90%; }
  .top-button img, .bottom-button img { width: 160%; /* 이미지가 버튼에 꽉 차게 표시 */ }

  </style>
</head>
<%@ include file="indexheader.jsp" %>
<body class="main" style="margin-top: 0;">
  
    <button class="top-button" onclick="scrollToTop()"><img src="https://ifh.cc/g/1MrkVC.png" alt="To Top"></button>
    <button class="bottom-button" onclick="scrollToBottom()"><img src="https://ifh.cc/g/xSLhk2.png" alt="To Bottom"></button>

    <div>
        <button class="top-button" onclick="scrollToTop()">Top</button>
        <button class="bottom-button" onclick="scrollToBottom()">Bottom</button>
   </div>
    <!-- header end -->
    




    <!-- nav tabs 기본형태 -->
    <div class="container mt-3">
      <ul class="nav nav-tabs justify-content-between">
          <li class="nav-item">
              <a href="#home" class="nav-link " data-bs-toggle="tab">상세정보</a>
          </li>
          <li class="nav-item">
              <a href="#menu1" class="nav-link active" data-bs-toggle="tab">리뷰</a>
          </li>
          <li class="nav-item">
              <a href="#menu2" class="nav-link " data-bs-toggle="tab">Q&A</a>
          </li>
          <li class="nav-item">
              <a href="#menu3" class="nav-link " data-bs-toggle="tab">반품/교환정보</a>
          </li>
      </ul>
      <!-- Tab panes 상세정보-->
      <div class="tab-content">
          <div class="tab-pane container " id ="home">
            <div class="titleArea">
              <h3 class="title mt-3">상세정보</h3>
          <hr>

          <div class="infoimg">
            <div><img src="https://ifh.cc/g/Qasqj5.jpg" alt="" style="width: 100%;"></div><br>
            <div><img src="https://ifh.cc/g/P7w0b0.jpg" alt=""style="width: 100%;"></div><br>
            <div><img src="https://ifh.cc/g/4XOrfh.jpg" alt=""style="width: 100%;"></div><br>

          </div>

            </div>
            <table width="100%">
              <colgroup>
                <col width="20%">
                <col width="20%">
                <col width="25%">
                <col width="40%">
              </colgroup>
              <tr>
                  <th>브랜드</th>
                  <th>폭닥</th>
                  <th>상품 이름</th>
                  <th>폭닥 아주 푹신한 침대</th>
              
              </tr>
              <tr>
                  <td>제조사</td>
                  <td>폭닥폭닥</td>
                  <td>모델명</td>
                  <td>pd00001</td>
                 
              </tr>
              <tr >
                  <td>원산지</td>
                  <td>천안</td>
                  <td>사용대상</td>
                  <td>전연령</td>
              </tr>
              <tr>
                  <td>구성품</td>
                  <td>상세페이지참조</td>
                  <td>배송/설치비용</td>
                  <td>지역별 상이</td>
              </tr>
              <tr >
                  <td>제조사</td>
                  <td>폭닥컴퍼니</td>
                  <td>품질보증기준</td>
                  <td>제품 이상 시 공정거래위원회 고시 <br>소비자분쟁해결기준에 의거 보상합니다.</td>
              </tr>
          </table>
       
           </div>
          <!-- =========================
          review tabs 
          ========================= -->
          <div class="tab-pane container active" id ="menu1">
            <div class="sectioncontainer">
              <div class="titleArea">
                <h3 class="title mt-3"> Review </h3>
            <hr>
              </div>
              <!-- 별점 -->
              <h5> 별점 </h5>
              <div class="rating">
                <div class="star-rating">
                  <input type="radio" id="5-stars" name="rating" value="5" />
                  <label for="5-stars" class="star">&#9733;</label>
                  <input type="radio" id="4-stars" name="rating" value="4" />
                  <label for="4-stars" class="star">&#9733;</label>
                  <input type="radio" id="3-stars" name="rating" value="3" />
                  <label for="3-stars" class="star">&#9733;</label>
                  <input type="radio" id="2-stars" name="rating" value="2" />
                  <label for="2-stars" class="star">&#9733;</label>
                  <input type="radio" id="1-star" name="rating" value="1" />
                  <label for="1-star" class="star">&#9733;</label>
                </div>
              </div>
              <!-- 리뷰 쓰기 -->
              <div class="textreview">
                <h5 class="textreviewtitle"> 리뷰 </h5>
                <textarea placeholder="다른 고객님에게 도움이 되도록 상품에 대한 솔직한 평가를 남겨주세요" class="textareareview"></textarea>
             </div>
             <h5 class="addphoto mt-3" > 사진 첨부 </h5>
             <div class="mb-3">
             <input class="form-control" style="width: 400px;" type="file" id="formFileMultiple" multiple>
            </div>


             <div class="buttonWrap mt-5">
              <div class="button-item" id="cancelButton">취소</div>
              <div class="button-item" id="finishButton">등록</div>
            </div>

            </div>
          </div>
          <!-- =========================
          review tabs 끝
          ========================= -->


          <div class="tab-pane container " id ="menu2">

            <div class="sectioncontainer">
              <div class="titleArea">
                <h3 class="title mt-3">Q & A</h3>
            <hr>
              </div>
      
              <table width="100%">
                <colgroup>
                <col width="50px" >
                <col width="500px">
                <col width="100px">
                <col width="120px">
                <col width="50px">
                </colgroup>
      
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
      
                <tr id="qna10">
                  <td>10</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna9">
                  <td>9</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna8">
                  <td>8</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna7">
                  <td>7</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna6">
                  <td>6</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna5">
                  <td>5</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna4">
                  <td>4</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna3">
                  <td>3</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna2">
                  <td>2</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
                <tr id="qna1">
                  <td>1</td>
                  <td>상품 Q&A 입니다..</td>
                  <td>Noop Noop</td>
                  <td>2023-10-17</td>
                  <td>0</td>
                </tr>
      
              </table>
                <div class="writeWrap">
                  <div class="write_QnA">
                    글쓰기
                  </div>
                  
                </div>
      
                <!-- 페이지버튼 -->
                <div class="pageWrap">
                  <div class="page_sidebutton"> < </div>
      
                  <div class="page_button" id="page_1">
                    1
                  </div>
      
                  <div class="page_sidebutton" > > </div>
                </div>
            </div>

          </div>
          <!-- 반품 교환정보 tab -->
          <div class="tab-pane container " id ="menu3">
            <h3 class="title mt-3">반품/교환정보</h3>
            <hr>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td colspan="4" style="text-align: center;">
                                <p style="font-weight: 1000; font-size: 20px;">반품 / 교환 안내</p>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="background-color: #d8c69c; text-align: center;" >판매자 지정택배사</td>
                            <td colspan="3">한진 택배</td>
                        </tr>
                        <tr>
                            <td style="background-color: #d8c69c; text-align: center;">반품배송비</td>
                            <td>편도 100,000원(최초 배송비 무료인 경우 200,000원 부과)</td>
                            <td style="background-color: #d8c69c; text-align: center; ">교환배송비</td>
                            <td>200,000원</td>
                        </tr>
                        <tr>
                            <td rowspan="2" style="background-color: #d8c69c; text-align: center; vertical-align: middle;">반품교환 사유에<br> 따른 요청 가능 기간</td>
                            <td colspan="3">구매자 단순 변심은 상품 수령후 7일 이내(구매자 반품배송비 부담)</td>
                        </tr>
                        <tr>
                            <td colspan="3">표시/광고와 상이, 계약 내용과 다르게 이행된 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내 둘 중 하나 경과 시 반품/교환 불가</td>
                        </tr>
                        <tr>
                            <td style="background-color: #d8c69c; text-align: center; vertical-align: middle;">반품/교환 불가능 사유</td>
                            <td colspan="3">
                                <ul class="returninfo" style="margin-left: -30px;">
                                    <li>1. 반품 요청 기간이 지난 경우</li>
                                    <li>2. 구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우</li>
                                    <li>3. 구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우</li>
                                    <li>4. 시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우</li>
                                    <li>5. 고객의 요청사항에 맞춰 제작에 들어가는 맞춤제작 상품의 경우</li>
                                    <li>6. 복제가 가능한 상품 등의 포장을 훼손한 경우</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>


          </div>
      </div>
  </div>


        <!-- section end -->

  </div>
</div>
  <script>
    // 취소버튼
    document.querySelector("#cancelButton").addEventListener("click", function () {
      if (confirm("작성을 취소하시겠습니까?")) {
        window.location.href = "1018index_hf_tabs review.html"
      }
    });

    // 등록버튼 - 제목 및 내용 필수 입력
    document.querySelector("#finishButton").addEventListener("click", function () {
      let textBody = document.querySelector(".textareareview");

        if (textBody.value == "") {
          alert("리뷰하실 내용을 입력해주세요");
        } else {
          if (confirm("등록하시겠습니까?")) {
            window.location.href = "1018index_hf_tabs review.html"
          }
        }
      });
    

//     // 별점
//     ratingToPercent(); {
//       const score = +this.restaurant.averageScore * 20;
//       return score + 1.5;
//  };

    //위에 이미지 호버 스크립트 /
    function changeImage(targetId, newImageUrl) {
            var targetImage = document.getElementById(targetId);
            targetImage.src = newImageUrl;
        }
   


    //구매페이지,장바구니 페이지에 연결해야함
    const sizeSelect = document.getElementById("size-select");
    const quantitySelect = document.getElementById("quantity-select");
    const buyButton = document.getElementById("buy-button");
    const cartButton = document.getElementById("cart-button");
    const totalPriceSpan = document.getElementById("total-price");
    const pricePerUnit = 500000;

    function updateTotalPrice() {
      const selectedSize = sizeSelect.value;
      const selectedQuantity = quantitySelect.value;

      // 선택한 사이즈를 기반으로 가격을 계산하기 위한 로직을 추가하세요
      let sizeMultiplier = 1; // 기본 배율
      if (selectedSize === "SS") {
        sizeMultiplier = 1.2; // M 사이즈에 대한 배율 조정
      } else if (selectedSize === "Q") {
        sizeMultiplier = 1.3; // L 사이즈에 대한 배율 조정
      } else if (selectedSize === "K") {
        sizeMultiplier = 1.5; // XL 사이즈에 대한 배율 조정
      }

      const totalPrice = (selectedQuantity * pricePerUnit * sizeMultiplier).toLocaleString() + '원';
      totalPriceSpan.textContent = totalPrice;
    }
    // 초기 총 결제금액 설정
    updateTotalPrice();



    // 구매 버튼 클릭 시 동작
    // buyButton.addEventListener("click", () => {
    //   const selectedSize = sizeSelect.value;
    //   const selectedQuantity = quantitySelect.value;
    //   // 선택된 사이즈와 수량을 이용해 구매 동작을 수행하세요.
    // });

    // 장바구니 버튼 클릭 시 동작
    // cartButton.addEventListener("click", () => {
    //   const selectedSize = sizeSelect.value;
    //   const selectedQuantity = quantitySelect.value;
    //   // 선택된 사이즈와 수량을 이용해 장바구니에 담기 동작을 수행하세요.
    // });

    window.onscroll = function () {
            scrollFunction();
        };

        function scrollFunction() {
            if (document.body.scrollTop > 1 || document.documentElement.scrollTop > 1) {
                document.querySelector(".top-button").style.display = "block";
            } else {
                document.querySelector(".top-button").style.display = "block";
            }

            if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
                document.querySelector(".bottom-button").style.display = "block";
            } else {
                document.querySelector(".bottom-button").style.display = "block";
            }
        }

        function scrollToTop() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }

        function scrollToBottom() {
            window.scrollTo(0, document.body.scrollHeight);
        }
     
  </script>
</body>
<c:import url="indexfooter.jsp"/>
</html>