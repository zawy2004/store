<%-- 
    Document   : cart
    Created on : Mar 23, 2025, 8:41:21 PM
    Author     : gia huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, model.ProductImage,model.Product,model.Category,model.ProductDetail" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>P&T Shop</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- link font chữ -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
        <!-- link icon -->
        <link rel="stylesheet" href="https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css">
        <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <!-- link css -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <link rel="stylesheet" href="./assets/css/main.css">
        <link rel="stylesheet" href="./assets/css/cart.css">
        <link rel="stylesheet" href="./assets/css/reponsive1.css">
        <link rel="icon" href="./assets/img/logo/main.png" type="image/x-icon"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous"></script>
    </head>
    <style>
        form.example input[type=text] {
            padding: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            width: 80%;
            background: #f1f1f1;
        }

        form.example button {
            float: left;
            width: 20%;
            padding: 10px;
            background: #2196F3;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none;
            cursor: pointer;
        }

        form.example button:hover {
            background: #0b7dda;
        }

        form.example::after {
            content: "";
            clear: both;
            display: table;
        }
        /* Mobile & tablet  */
        @media (max-width: 1023px) {
        }
        /* tablet */
        @media (min-width: 740px) and (max-width: 1023px) {
            .cart-wrap {
                padding-top: 8px;
                padding-bottom: 46px
            }
            .cart-body-left {
                width: 100%;
            }
            .cart-body-right {
                margin-top: 8px;
                width: 100%;
                padding: 16px;
            }
        }
        /* mobile */
        @media (max-width: 739px) {
            .cart-wrap {
                padding-top:8px;
                padding-bottom: 46px;
            }
            .cart-body-left {
                width: 100%;
            }
            .cart-body-right {
                margin-top: 8px;
                width: 100%;
                padding: 16px;
            }
            .cart-body-row {
                flex-direction: row;
                /* margin-left: -12px;
                margin-right: -12px; */
            }
            .card-info {
                display: grid;
                grid-template-columns: 1fr 1fr;
            }
            .card-info-img {
                grid-row: span 3;
            }
            .cart-quantity {
                margin-top: 5px;
            }
        }
    </style>
    <body>
        <div class="overlay hidden"></div>
        <!-- mobile menu -->
        <div class="mobile-main-menu">
            <div class="drawer-header">
                <a href="">
                    <div class="drawer-header--auth">
                        <div class="_object">
                            <img src="./assets/img/product/giayxah2.jpg" alt="">
                        </div>
                        <div class="_body">Đăng nhập
                            <br>Nhận nhiều ưu đãi hơn
                        </div>
                    </div>
                </a>
            </div>
            <ul class="ul-first-menu">
                <li>
                    <a href="">Đăng nhập</a>
                </li>
                <li>
                    <a href="" class="abc">Đăng kí</a>
                </li>
            </ul>
            <!-- <ul class="ul-first-menu">
              <li>
                <a href="">Tài khoản của tôi</a>
              </li>
              <li>
                <a href="">Địạ chỉ của tôi</a>
              </li>
              <li>
                <a href="">Đơn mua</a>
              </li>
              <li>
                <a href="" class="list-like-noicte">Danh sách yêu thích</a>
                <span id="header__second__like--notice" class="header__second__like--notice">3</span>
              </li>
              <li>
                <a href="">Đăng xuất</a>
              </li> -->
        </ul>
        <div class="la-scroll-fix-infor-user">
            <div class="la-nav-menu-items">
                <div class="la-title-nav-items">
                    <strong>Danh mục</strong>
                </div>
                <ul class="la-nav-list-items">
                    <li class="ng-scope">
                        <a href="./index.html">Trang chủ</a>
                    </li>
                    <li class="ng-scope">
                        <a href="./intro.html">Giới thiệu</a>
                    </li>
                    <li class="ng-scope ng-has-child1">
                        <a href="./Product.html">Sản phẩm <i class="fas fa-plus cong"></i> <i class="fas fa-minus tru hidden"></i></a>
                        <ul class="ul-has-child1">
                            <li class="ng-scope ng-has-child2">
                                <a href="./Product.html">Tất cả sản phẩm <i class="fas fa-plus cong1" onclick="hienthi(1, `abc`)"></i> <i
                                        class="fas fa-minus tru1 hidden" onclick="hienthi(1, `abc`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc">
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Chạy</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Cầu lông</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bóng rổ</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Quần vợt</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bơi lội</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">GOLF</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="./Product.html">Quần áo <i class="fas fa-plus cong2" onclick="hienthi(2, `abc2`)"></i> <i
                                        class="fas fa-minus tru2 hidden" onclick="hienthi(2, `abc2`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc2">
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Chạy</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Cầu lông</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bóng rổ</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Quần vợt</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bơi lội</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">GOLF</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="./Product.html">Già dép<i class="fas fa-plus cong3" onclick="hienthi(3, `abc3`)"></i> <i
                                        class="fas fa-minus tru3 hidden" onclick="hienthi(3, `abc3`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc3">
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Chạy</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Cầu lông</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bóng rổ</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Quần vợt</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bơi lội</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">GOLF</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="./Product.html">Phụ kiện <i class="fas fa-plus cong4" onclick="hienthi(4, `abc4`)"></i> <i
                                        class="fas fa-minus tru4 hidden " onclick="hienthi(4, `abc4`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc4">
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Chạy</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Cầu lông</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bóng rổ</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Quần vợt</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">Bơi lội</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.html">GOLF</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="ng-scope">
                        <a href="./news.html">Tin tức</a>
                    </li>
                    <li class="ng-scope">
                        <a href="./contact.html">Liên hệ</a>
                    </li>
                </ul>
            </div>
        </div>
        <ul class="mobile-support">
            <li>
                <div class="drawer-text-support">Hỗ trợ</div>
            </li>
            <li>
                <i class="fas fa-phone-square-alt footer__item-icon">HOTLINE: </i>
                <a href="tel:19006750">19006750</a>
            </li>
            <li>
                <i class="fas fa-envelope-square footer__item-icon">Email: </i>
                <a href="mailto:support@sapo.vn">support@gmail.vn</a>
            </li>
        </ul>
    </div>
    <!-- end mobile menu -->
    <!-- header -->
    <jsp:include page="header.jsp"></jsp:include>

        <!-- end header -->
        <!-- content -->
        <div class="cart">
            <div class="container">
                <div class="cart-wrap">
                    <div class="cart-content">
                        <form action="" class="form-cart">
                            <div class="cart-body-left">
                                <div class="cart-heding hidden-xs">
                                    <div class="row cart-row"> 
                                        <div class="col-11" style="text-align: center;">
                                            <div class="row">
                                                <div class="col-5">Sản phẩm</div>
                                                <div class="col-2">Đơn giá</div>
                                                <div class="col-3">Số lượng</div>
                                                <div class="col-2">Thành tiền</div>
                                            </div>
                                        </div>
                                        <div class="col-1"></div>
                                    </div>
                                </div>
                                <div class="cart-body">
                                <c:forEach var="product" items="${productList}">
                                    <div class="row cart-body-row cart-body-row-1" style="align-items: center;">
                                        <div class="col-md-11 col-10" style="text-align: center;">
                                            <div class="row card-info" style="align-items: center;">
                                                <div class="col-md-2 col-12 card-info-img">
                                                    <a href="#"><img class="cart-img" src="${product.imageUrl}" alt="${product.name}"></a>
                                                </div>
                                                <div class="col-md-3 col-12">
                                                    <a href="#" class="cart-name"><h5>${product.name}</h5></a>
                                                </div>

                                                <div class="col-md-2 col-12" style="font-size: 16px;">
                                                    <span><fmt:formatNumber value="${product.price}" type="number" pattern="#,###" /> đ</span>
                                                </div>
                                                <c:forEach var="Cart" items="${CartList}">
                                                    <c:if test="${Cart.productId == product.productId}">
                                                        <div class="col-md-3 col-12">
                                                            <div class="cart-quantity">
                                                                
                                                                <input type="text" value="${Cart.quantity}" class="text-input" id="text_so_luong-${product.productId}" onkeypress="validate(event)"> 
                                                                
                                                            </div>
                                                        </div>

                                                        <div class="col-md-2 col-12 hidden-xs" style="font-size: 16px;">

                                                            <span><fmt:formatNumber value="${product.price * Cart.quantity}" type="number" pattern="#,###" /> đ</span>

                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="col-md-1 col-2 text-right">
                                            <a href="javascript:void(0);" onclick="deleteAllByProductId(${product.productId})">
                                                <i class="fas fa-trash text-danger"></i>
                                            </a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div> <!-- Đóng thẻ cart-body-left -->

                        <div class="cart-footer">
                            <div class="row cart-footer-row">
                                <div class="col-1"></div>
                                <div class="col-11 continue">
                                    <a href="./ProductServlet">
                                        <i class="fas fa-chevron-left"></i>
                                        Tiếp tục mua sắm
                                    </a>
                                </div>
                            </div>
                        </div>


                        <div class="cart-body-right">
                            <div class="cart-total">
                                <label for="">Thành tiền:</label>
                                <span class="total__price"><fmt:formatNumber value="${totalPrice}" type="number" pattern="#,###" /> đ</span>
                            </div>
                            <div class="cart-buttons">
                                <a style="display: block; text-align: center;" href="./pay.jsp" class="chekout">THANH TOÁN</a>
                            </div>
                        </div>
                    </form> <!-- Đóng form -->
                </div> <!-- Đóng cart-content -->
            </div> <!-- Đóng cart-wrap -->
        </div> <!-- Đóng container -->
    </div> <!-- Đóng cart -->

    <!-- end content -->
    <!-- end content -->
    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>

    <!-- end footer -->
</body>
<script src="./assets/js/main.js"></script>
<script>
function deleteAllByProductId(productId) {
    if (confirm("Bạn có chắc chắn muốn xóa tất cả sản phẩm này khỏi giỏ hàng?")) {
        fetch("CartServlet?productId=" + productId, {
            method: "DELETE"
        })
        .then(response => {
            if (response.ok) {
                location.reload(); // Reload lại trang để cập nhật giỏ hàng
            } else {
                alert("Lỗi khi xóa sản phẩm khỏi giỏ hàng.");
            }
        })
        .catch(error => console.error("Lỗi:", error));
    }
}
</script>
</html>
