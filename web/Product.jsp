<%-- 
    Document   : Product
    Created on : Mar 19, 2025, 10:23:52 AM
    Author     : gia huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page import="java.util.List, model.Product,model.Category,model.Brand" %>
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
        <link rel="stylesheet" href="./assets/css/product.css">
        <link rel="stylesheet" href="./assets/css/productdetail.css">
        <link rel="stylesheet" href="./assets/css/reponsive1.css">
        <link rel="icon" href="./assets/img/logo/main.png" type="image/x-icon" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
                integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous"></script>
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
            .sortby {
                float: left;
            }
            .sortby label {
                display: none;
            }
            .sort-left {
                margin-bottom: 20px;
            }
            .sortby2 {
                display: block;
            }
            .sortby {
                float: left;
            }
        }

        /* tablet */
        @media (min-width: 740px) and (max-width: 1023px) {

        }

        /* mobile */
        @media (max-width: 739px) {

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
        <!-- product -->
        <div class="product">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-12 hidden-xs hidden-sm">
                        <div class="product__filter">
                            <div class="product__filter">
                                <h4 class="coll-name" class="product__filter-heading">Thương hiệu</h4>
                                <ul id="thuonghieu" class="product__filter-ckeckbox">
                                <%
                                     List<Brand> bList = (List<Brand>) request.getAttribute("bList");
       
                                %>
                                <c:forEach var="bra" items="${bList}">

                                    <li class="product__filter-item">

                                        <a class="btn btn-buynow" href="BrandServlet?bra=${bra.brandId}">${bra.brandName}</a>

                                    </li>
                                </c:forEach>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-lg-9 col-12">
                    <div class="sort-wrap row">
                        <div class="sort-left col-12 col-lg-6">
                            <h1 class="coll-name">Tất cả sản phẩm</h1>
                        </div>
                        <div class="sort-right col-12 col-lg-6">
                            <div class="sortby">
                                <label for="">Sắp xếp theo:</label>
                                <div class="dropdown">
                                    <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown">
                                        Sản phẩm nổi bật
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" id="sort1">Giá: Tăng dần</a>
                                        <a class="dropdown-item" id="sort2">Giá: giảm dần</a>
                                        <a class="dropdown-item" id="sort3">Tên A->Z</a>
                                        <a class="dropdown-item" id="sort4">Tên Z->A</a>
                                        <a class="dropdown-item" id="sort5">Cũ nhất</a>
                                        <a class="dropdown-item" id="sort6">Mới nhất</a>
                                        <a class="dropdown-item" id="sort7">Bán chạy nhất</a>
                                    </div>
                                </div>
                            </div>
                            <div class="sortby2 hidden" style="float: right;">
                                <div class="dropdown">
                                    <button class="btn btn-dark dropdown-toggle" id="filter">
                                        Lọc sản phẩm
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <%
       List<Product> productList = (List<Product>) request.getAttribute("productList");
       int index = 0;
                    %>

                    <c:forEach var="product" items="${productList}">
                        <% if (index % 3 == 0) { %>
                        <div class="row">
                            <% } %>
                            <div class="col-lg-4 col-md-6 col-sm-12 mb-20">
                                <a href="ProductDetail?productId=${product.productId}" class="product__new-item">
                                    <div class="card" style="width: 100%">
                                        <div>
                                            <img class="card-img-top" src="${product.imageUrl}" alt="${product.name}">
                                            <form action="" class="hover-icon hidden-sm hidden-xs">
                                                <input type="hidden">
                                                <a href="pay?productId=${product.productId}" class="btn-add-to-cart" title="Mua ngay">
                                                    <i class="fas fa-cart-plus"></i>
                                                </a>
                                                <a data-toggle="modal" data-target="#myModal" class="quickview" title="Xem nhanh">
                                                    <i class="fas fa-search"></i>
                                                </a>
                                            </form>
                                        </div>
                                        <div class="card-body">
                                            <h5 class="card-title description">${product.name}</h5>
                                            <div class="product__price">
                                                <p class="card-text price-color product__price-old">
                                                    <fmt:formatNumber value="${product.price * 1.2}" type="number" pattern="#,###" /> đ
                                                </p>

                                                <p class="card-text price-color product__price-new">
                                                    <fmt:formatNumber value="${product.price}" type="number" pattern="#,###" /> đ
                                                </p>
                                            </div>
                                            <div class="home-product-item__action">
                                                <span class="home-product-item__like home-product-item__like--liked">
                                                    <i class="home-product-item__like-icon-empty far fa-heart"></i>
                                                    <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                                </span>
                                                <div class="home-product-item__rating">
                                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                </div>
                                                <span class="home-product-item__sold">100 đã bán</span>
                                            </div>
                                            <div class="sale-off">
                                                <span class="sale-off-percent">20%</span>
                                                <span class="sale-off-label">GIẢM</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <% 
                                index++;
                                if (index % 3 == 0 || index == productList.size()) { 
                            %>
                        </div>
                        <% } %>
                    </c:forEach>
                </div>

                <div class="loadmore">
                    <a style="cursor: pointer;" class="loadmore-btn">Tải thêm</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- bộ lọc mobile -->
<div class="overlay2 hidden"></div>
<div class="filter-mobile">
    <div class="product__filter">
        <div class="product__filter-price">
            <h4 class="product__filter-heading">Khoảng giá <i class="fi-rs-minus"
                                                              onclick="khonghienthidanhsach(4, `khoanggia1`)" id="minus-4"></i> <i class="fi-rs-plus hidden"
                                                              id="plus-4" onclick="khonghienthidanhsach(4, `khoanggia1`)"></i></h4>
            <ul id="khoanggia1" class="product__filter-ckeckbox">
                <li class="product__filter-item">
                    <label class="form-check-label" for="radio2">
                        <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2"><span>Tất
                            cả</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="radio2">
                        <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2"><span>Dưới
                            1,000,000đ</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="radio2">
                        <input type="radio" class="form-check-input" id="radio2" name="optradio"
                               value="option2"><span>1,000,000đ->2,000,000đ</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="radio2">
                        <input type="radio" class="form-check-input" id="radio2" name="optradio"
                               value="option2"><span>2,000,000đ->3,000,000đ</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="radio2">
                        <input type="radio" class="form-check-input" id="radio2" name="optradio"
                               value="option2"><span>3,000,000đ->4,000,000đ</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="radio2">
                        <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2"><span>Trên
                            4,000,000đ</span>
                    </label>
                </li>
            </ul>
        </div>
        <div class="product__filter-trademark">
            <h4 class="product__filter-heading">Thương hiệu <i class="fi-rs-minus"
                                                               onclick="khonghienthidanhsach(5, `thuonghieu2`)" id="minus-5"></i> <i class="fi-rs-plus hidden"
                                                               onclick="khonghienthidanhsach(5, `thuonghieu2`)" id="plus-5"></i></h4>
            <ul id="thuonghieu2" class="product__filter-ckeckbox">
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>Adidas</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>Nike</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>Puma</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>DESPORTE</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>X-MUNICH</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>GRAND SPORT</span>
                    </label>
                </li>
            </ul>
        </div>
        <div class="product__filter-size">
            <h4 class="product__filter-heading">Size <i class="fi-rs-minus" onclick="khonghienthidanhsach(6, `size3`)"
                                                        id="minus-6"></i> <i class="fi-rs-plus hidden" onclick="khonghienthidanhsach(6, `size3`)"
                                                        id="plus-6"></i></h4>
            <ul id="size3" class="product__filter-ckeckbox">
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>37.5</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>38</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>38.5</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>x</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>xl</span>
                    </label>
                </li>
                <li class="product__filter-item">
                    <label class="form-check-label" for="check2">
                        <input type="checkbox" class="form-check-input" id="check2" name="option2"
                               value="something"><span>l</span>
                    </label>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- end bộ lộc mobile -->
<!-- end product -->
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- end footer -->
<!-- modal -->
<!-- The Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">

            <!-- Modal Header -->
            <!-- <div class="modal-header">
              <h4 class="modal-title">Giày ADIDAS</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div> -->

            <!-- Modal body -->
            <div class="modal-body">
                <div class="row">
                    <div class="col-6">
                        <div class="mb-2 main-img-2">
                            <img src="./assets/img/product/ars1.jpg" alt="" id="img-main" xoriginal="./assets/img/product/ars1.jpg">
                        </div>
                        <ul class="all-img-2">
                            <li class="img-item-2">
                                <img src="./assets/img/product/ars1.jpg" alt="" onclick="changeImg('one')" id="one">
                            </li>
                            <li class="img-item-2">
                                <img src="./assets/img/product/ars2.jpg" alt="" onclick="changeImg('two')" id="two">
                            </li>
                            <li class="img-item-2">
                                <img src="./assets/img/product/ars3.jpg" alt="" onclick="changeImg('three')" id="three"> 
                            </li>
                            <li class="img-item-2">
                                <img src="./assets/img/product/ars4.jpg" alt="" onclick="changeImg('four')" id="four">
                            </li>
                        </ul>
                    </div>
                    <div class="col-6">
                        <div class="info-product">
                            <h3 class="product-name">
                                <a href="" title="">Giày ADIDAS</a>
                            </h3>
                            <div class="status-product">
                                Trạng thái: <b>Còn hàng</b>
                            </div>
                            <div class="infor-oder">
                                Loại sản phẩm: <b>Giày dép</b>
                            </div>
                            <div class="price-product">
                                <div class="special-price">
                                    <span>540.000đ</span>
                                </div>
                                <div class="price-old">
                                    Giá gốc: 
                                    <del>650.000đ</del>
                                    <span class="discount">(-20%)</span>
                                </div>
                            </div>
                            <div class="product-description">
                                Đầu tháng /2021, Nike chính thức trình
                                làng thế hệ tiếp theo của dòng giày đá bóng huyền thoại
                                thuộc nhà Swoosh là Tiempo Legend 9. Được mệnh danh là
                                thế hệ nhẹ nhất từ trước đến nay của dòng giày đá bóng Tiempo,
                                Legend 9 đã có những thay đổi đáng kể
                                về mặt thiết kế lẫn công nghệ nhằm giúp người chơi có thể tự 
                                tin và phát huy tối đa khả năng khi chơi bóng.
                            </div>

                            <div class="product__color d-flex" style="align-items: center;">
                                <div class="title" style="font-size: 16px; margin-right: 10px;">
                                    Màu: 
                                </div>
                                <div class="select-swap d-flex">

                                    <div class="circlecheck">
                                        <input type="radio" id="f-option" class="circle-1" name="selector" checked>
                                        <label for="f-option"></label>
                                        <div class="outer-circle"></div>
                                    </div>
                                    <div class="circlecheck">
                                        <input type="radio" id="g-option" class="circle-2" name="selector">
                                        <label for="g-option"></label>
                                        <div class="outer-circle"></div>
                                    </div>
                                    <div class="circlecheck">
                                        <input type="radio" id="h-option" class="circle-3" name="selector">
                                        <label for="h-option"></label>
                                        <div class="outer-circle"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="product__size d-flex" style="align-items: center;">
                                <div class="title" style="font-size: 16px; margin-right: 10px;">
                                    Kích thước: 
                                </div>
                                <div class="select-swap">
                                    <div class="swatch-element" data-value="38">
                                        <input type="radio" class="variant-1" id="swatch-1-38" name="mau" value="trung" onclick="check()">
                                        <label for="swatch-1-38" class="sd"><span>38</span></label>
                                    </div>
                                    <div class="swatch-element" data-value="39">
                                        <input type="radio" class="variant-1" id="swatch-1-39" name="mau" value="thanh" onclick="check()">
                                        <label for="swatch-1-39" class="sd"><span>39</span></label>
                                    </div>
                                    <div class="swatch-element" data-value="40" >
                                        <input type="radio" class="variant-1" id="swatch-1-40" name="mau" value="hieu" onclick="check()">
                                        <label for="swatch-1-40" class="sd"><span>40</span></label>
                                    </div>
                                </div>
                            </div>
                            <div class="product__wrap">
                                <div class="product__amount">
                                    <label for="">Số lượng: </label>
                                    <input type="button" value="-" class="control" onclick="tru()" id="cong">
                                    <input type="text" value="1" class="text-input" id="text_so_luong" onkeypress='validate(event)'> 
                                    <input type="button" value="+" class="control" onclick="cong()">
                                </div>
                            </div>
                            <div class="product__shopnow">
                                <button class="shopnow2">Mua ngay</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn-default btn-close" data-dismiss="modal">
                <i class="fas fa-times-circle"></i>
            </button>
            <!-- Modal footer -->
            <!-- <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div> -->

        </div>
    </div>
</div>
<!-- end modal -->
</body>
<script src="./assets/js/main.js"></script>
<script src="./assets/js/product.js"></script>
<<script>
                                        function filterProducts() {
                                            // Lấy giá trị từ radio button (khoảng giá)
                                            var priceRange = document.querySelector('input[name="optradio"]:checked').value;

                                            // Lấy giá trị từ các checkbox (thương hiệu)
                                            var brandIds = [];
                                            document.querySelectorAll('.checkthuonghieu:checked').forEach(function (checkbox) {
                                                brandIds.push(checkbox.value);
                                            });

                                            // Tạo yêu cầu AJAX
                                            var xhr = new XMLHttpRequest();
                                            xhr.open("POST", "FilterProducts", true);
                                            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                                            xhr.onreadystatechange = function () {
                                                if (xhr.readyState === 4 && xhr.status === 200) {
                                                    // Cập nhật danh sách sản phẩm mà không cần load lại trang
                                                    document.querySelector(".product__new .container").innerHTML = xhr.responseText;
                                                }
                                            };
                                            xhr.send("priceRange=" + priceRange + "&brandIds=" + brandIds.join(","));
                                        }
</script>

</html>
