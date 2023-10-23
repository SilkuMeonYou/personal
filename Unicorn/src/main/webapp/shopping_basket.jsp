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
  <title>장바구니</title>
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


    /* 섹션 css */

    td { text-align: center; }

    .sectionContainer { padding: 30px 80px 50px 80px; background-color: #ffffff; }

    .basketHead { font-size: 32px; margin-bottom: 20px; color: black; }

    /* 체크박스 */
    .custom-checkbox { position: relative; padding-left: 30px; padding-bottom: 30px; cursor: pointer; }

    .custom-checkbox input { position: absolute; opacity: 0; cursor: pointer; }

    .checkmark { position: absolute; top: 0; left: 0; height: 25px; width: 25px; background-color: #ffffff; border: 1px solid #a6a8aa; border-radius: 5px; }

    .checkmark:after { content: ""; position: absolute; display: none; }

    .custom-checkbox input:checked~.checkmark:after { display: block; }

    .custom-checkbox .checkmark:after { left: 7px; top: 2px; width: 10px; height: 14px; border: solid #8f775f; border-width: 0 3px 3px 0; transform: rotate(45deg); }

    .infoContainer { min-width: 1000px; border: 1px solid #a6a8aa; border-radius: 10px; padding: 2px; margin-bottom: 10px; }

    /* order css */
    .orderTable { background-color: white; margin-bottom: 5px; }

    .goodsimg { width: 100%; height: 130px; }

    #order_title { text-align: left; font-size: 24px; font-weight: bold; }

    .orderDetails { font-weight: bold; padding-bottom: 10px; font-size: 20px; }

    .removeButton { width: 70px; border-radius: 5px; background-color: white; border: 1px solid #a6a8aa; color: #6c757d; }

    .amountNum { border-radius: 5px; border: 1px solid #d0ac88; background-color: white; font-size: 15px; margin-left: 10px; margin-right: 10px; font-weight: bold; color: #d0ac88; }

    .sizeBox { width: 60px; border: 1px solid #d0ac88; border-radius: 5px; font-size: 15px; outline: none; }

    /* 총 비용 박스 */
    .totalBody { position: relative; }

    .totalContainer { width: 100%; position: fixed; background-color: #d0ac88; height: 120px; bottom: 10px; padding-top: 20px; z-index: 99; }

    .totalCost { font-size: 24px; font-weight: bold; }

    .orderButton { width: 80%; height: 60px; background-color: white; border-radius: 5px; border: 1px solid black; font-weight: bold; }

    .operator { font-size: 30px; }
  </style>
</head>
<%@ include file="indexheader.jsp" %>
<body class="main" style="margin-top: 0;">

    <!-- header end -->
    <hr class="hr mt-5" style="color: #d0ac88;">
    <!-- section -->
    <section id="section" class="sectionbody">

      <div class="sectionContainer">
        <div class="basketHead">
          장바구니
        </div>

        <!-- ============= 주문리스트 ================-->
        <div class="infoContainer" id="infoContainer1">
          <table width="100%" class="orderTable">
            <col width="5%">
            <col width="20%">
            <col width="10%">
            <col width="15%">
            <col width="10%">
            <col width="15%">
            <col width="10%">
            <col width="15%">

            <tr>
              <td class="orderHead"></td>
              <td colspan="6" class="orderHead" id="order_title">Bello edition</td>
              <td><button class="removeButton" id="removeBtn1">삭제</button></td>
            </tr>

            <tr>
              <td rowspan="2">
                <label class="custom-checkbox" for="chkbox1">
                  <input type="checkbox" id="chkbox1">
                  <span class="checkmark"></span>
                </label>
              </td>
              <td rowspan="2">
                <img
                  src="https://p.turbosquid.com/ts-thumb/L5/fPVQZK/CzLlq5lO/03/png/1586281684/1920x1080/fit_q87/8faf3fe307ed07168372161fc592754ba653d995/03.jpg"
                  class="goodsimg">
              </td>
              <td>사이즈</td>
              <td>수량</td>
              <td>상품금액</td>
              <td>배송비</td>
              <td>할인금액</td>
              <td>결제예상</td>

            </tr>

            <tr>
              <td class="orderDetails">
                <select class="sizeBox" id="size1">
                  <option value="s" data-price="1550000">S</option>
                  <option value="ss" data-price="1750000">SS</option>
                  <option value="q" data-price="1900000">Q</option>
                  <option value="k" data-price="2000000">K</option>
                </select>
              </td>
              <td class="orderDetails" id="order_amount">
                <button class="amountNum" id="minus1">-</button>
                <span id="orderAmount1">1</span>
                <button class="amountNum" id="plus1">+</button>

              </td>
              <td class="orderDetails" id="order_fee1">1,550,000</td>
              <td class="orderDetails" id="order_deliveryFee1">0</td>
              <td class="orderDetails" id="order_discountFee1">100,000</td>
              <td class="orderDetails" id="order_ex-amount1">1,450,000</td>

            </tr>

          </table>
        </div>
        <!-- ============= 주문리스트 끝 ================-->
        <!-- 주문리스트 복붙 -->
        <div class="infoContainer" id="infoContainer2">
          <table width="100%" class="orderTable">
            <col width="5%">
            <col width="20%">
            <col width="10%">
            <col width="15%">
            <col width="10%">
            <col width="15%">
            <col width="10%">
            <col width="15%">

            <tr>
              <td class="orderHead"></td>
              <td colspan="6" class="orderHead" id="order_title">Rowl</td>
              <td><button class="removeButton" id="removeBtn2">삭제</button></td>
            </tr>

            <tr>
              <td rowspan="2">
                <label class="custom-checkbox" for="chkbox2">
                  <input type="checkbox" id="chkbox2">
                  <span class="checkmark"></span>
                </label>
              </td>
              <td rowspan="2">
                <img
                  src="https://p.turbosquid.com/ts-thumb/Tc/X6JZPf/Kr/renderdemuestra1/jpg/1639339611/1920x1080/fit_q87/ce28a85e2e42bed18a8ea4fe3b05b2043bc367fc/renderdemuestra1.jpg"
                  class="goodsimg">
              </td>
              <td>사이즈</td>
              <td>수량</td>
              <td>상품금액</td>
              <td>배송비</td>
              <td>할인금액</td>
              <td>결제예상</td>

            </tr>

            <tr>
              <td class="orderDetails">
                <select class="sizeBox" id="size2">
                  <option value="s" data-price="900000">S</option>
                  <option value="ss" data-price="1000000">SS</option>
                  <option value="q" data-price="1200000">Q</option>
                  <option value="k" data-price="1400000">K</option>
                </select>
              </td>
              <td class="orderDetails" id="order_amount">
                <button class="amountNum" id="minus2">-</button>
                <span id="orderAmount2">1</span>
                <button class="amountNum" id="plus2">+</button>

              </td>
              <td class="orderDetails" id="order_fee2">900,000</td>
              <td class="orderDetails" id="order_deliveryFee2">5,000</td>
              <td class="orderDetails" id="order_discountFee2">3,000</td>
              <td class="orderDetails" id="order_ex-amount2">902,000</td>

            </tr>

          </table>
        </div>
        <!-- ===============  복붙 끝 ================ -->
      </div> <!--  섹션 컨테이너 끝 (섹션 끝은 아님)-->

      <!-- 고정된 토탈 박스 -->

      <div class="totalContainer">
        <table width="100%">
          <colgroup>
            <col width="15%">
            <col width="10%">
            <col width="10%">
            <col width="10%">
            <col width="10%">
            <col width="10%">
            <col width="20%">
            <col width="15%">
          </colgroup>
          <tr>
            <td>선택상품금액</td>
            <td rowspan="2" class="operator">+</td>
            <td>총 배송비</td>
            <td rowspan="2" class="operator">-</td>
            <td>할인</td>
            <td rowspan="2" class="operator">=</td>
            <td>총 주문금액</td>
            <td rowspan="2"><button class="orderButton">주문하기</button></td>
          </tr>

          <tr>
            <td class="totalCost" id="total_checkedFee">0 원</td>
            <td class="totalCost" id="total_deliveryFee">0 원</td>
            <td class="totalCost" id="total_discountFee">0 원</td>
            <td class="totalCost" id="total_fee">0 원</td>
          </tr>
        </table>
      </div>
    </section>

    <!-- section end -->
<c:import url="http://localhost:8080/Unicorn/indexfooter.jsp"/>
    <div style="height: 150px;"></div>
  </div>

  <script>

let infoContainers = document.querySelectorAll(".infoContainer");

infoContainers.forEach((currentContainer, index) => {
  let i = index + 1; // 1부터 시작하는 인덱스

      // 수량 변경하기 관련
      let plus = document.getElementById("plus" + i);
      let minus = document.getElementById("minus" + i);
      let orderAmount = document.getElementById("orderAmount" + i);

      let amount = parseInt(orderAmount.textContent);

      plus.addEventListener("click", function () {
        amount += 1;
        orderAmount.innerHTML = amount;
        doOrderPrice()
        doOrderTotal()
        doTotal()

      });
      minus.addEventListener("click", function () {
        if (amount > 1) {
          amount -= 1;
          orderAmount.innerHTML = amount;
          doOrderPrice()
          doOrderTotal()
          doTotal()
        }
      });



      // 사이즈 변경 관련
      let sizeSelect = document.getElementById("size" + i);
      let sizePrice = parseInt(sizeSelect.options[sizeSelect.selectedIndex].getAttribute("data-price"));

      // 처음 장바구니에 담긴 사이즈의 금액을 저장하기위한 변수
      let size_fee = sizePrice;

      sizeSelect.addEventListener("change", function () {
        sizePrice = parseInt(sizeSelect.options[sizeSelect.selectedIndex].getAttribute("data-price"));
        size_fee = sizePrice;
        doOrderPrice()
        doOrderTotal()
        doTotal()

      });



      // 상품금액 함수
      function doOrderPrice() {
        let order_fee = document.getElementById("order_fee" + i);
        order_fee.innerHTML = (sizePrice * amount).toLocaleString();
      }

      // 결제예상 함수
      function doOrderTotal() {
        let order_exAmount = document.getElementById("order_ex-amount" + i)
        let order_deliveryFee = parseInt(document.getElementById("order_deliveryFee" + i).textContent.replace(/,/g, ""));
        let order_discountFee = parseInt(document.getElementById("order_discountFee" + i).textContent.replace(/,/g, ""));

        console.log(order_deliveryFee);
        order_exAmount.innerHTML = ((sizePrice * amount) + order_deliveryFee - order_discountFee).toLocaleString();
      }


      // 체크박스 관련
      let checkbox = document.getElementById("chkbox" + i);
      let infoContainer = document.getElementById("infoContainer" + i);
      let removeBtn = document.getElementById("removeBtn" + i);


      // total 박스 관련
      let total_checkedFee = document.getElementById("total_checkedFee");

      checkbox.addEventListener("change", function () {


        if (this.checked) {
          // 테두리 색상 변경
          infoContainer.style.border = "3px solid #d0ac88";
          removeBtn.style.borderColor = "#d0ac88";
          removeBtn.style.color = "#d0ac88";
          doTotal()


        } else {
          infoContainer.style.border = "1px solid #a6a8aa";
          removeBtn.style.borderColor = "#a6a8aa";
          removeBtn.style.color = "#6c757d";
          doTotal()
        }

      });


       // 삭제하기 이벤트
       removeBtn.addEventListener("click", function () {
        alert("삭제되었습니다.");
        infoContainer.remove();
        
        doTotal()
      });

      // total박스 메소드
      function doTotal() {
        let total_checkedFee = document.getElementById("total_checkedFee");
        let total_deliveryFee = 0;
        let total_discountFee = 0; 
        let totalFee = 0; 

        infoContainers.forEach((Container, idx) => {
          let checkbox = document.getElementById("chkbox" +  (idx + 1));

          if (checkbox.checked) {
            let order_fee = document.getElementById("order_fee" +  (idx + 1));
            let order_deliveryFee = document.getElementById("order_deliveryFee" +  (idx + 1));
            let order_discountFee = document.getElementById("order_discountFee" +  (idx + 1));

            let orderFee = parseInt(order_fee.textContent.replace(/,/g, ""));
            let deliveryFee = parseInt(order_deliveryFee.textContent.replace(/,/g, ""));
            let discountFee = parseInt(order_discountFee.textContent.replace(/,/g, ""));

            totalFee += orderFee;
            total_deliveryFee += deliveryFee;
            total_discountFee += discountFee;
          }
        });
     
        total_checkedFee.innerHTML = totalFee.toLocaleString() + " 원";
        document.getElementById("total_deliveryFee").innerHTML = total_deliveryFee.toLocaleString() + " 원";
        document.getElementById("total_discountFee").innerHTML = total_discountFee.toLocaleString() + " 원";
        document.getElementById("total_fee").innerHTML = (totalFee + total_deliveryFee - total_discountFee).toLocaleString() + " 원";
      }

    });

  </script>


</body>

</html>