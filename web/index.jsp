<!DOCTYPE jsp>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, model.Product,model.User" %>


<html lang="vi">

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
        }
        /* tablet */
        @media (min-width: 740px) and (max-width: 1023px) {
            .owl-item {
                width: 396px;
                padding: 16px 0;
            }
        }
        /* mobile */
        @media (max-width: 739px) {
            .owl-item {
                float: unset;
                padding: 16px 0;
            }
        }
    </style>

    <body style="background-color: rgb(248, 242, 236);">
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
                        <a href="">Trang chủ</a>
                    </li>
                    <li class="ng-scope">
                        <a href="./intro.jsp">Giới thiệu</a>
                    </li>
                    <li class="ng-scope ng-has-child1">
                        <a href="./Product.jsp">Sản phẩm <i class="fas fa-plus cong"></i> <i class="fas fa-minus tru hidden"></i></a>
                        <ul class="ul-has-child1">
                            <li class="ng-scope ng-has-child2">
                                <a href="./Product.jsp">Tất cả sản phẩm <i class="fas fa-plus cong1" onclick="hienthi(1, `abc`)"></i> <i
                                        class="fas fa-minus tru1 hidden" onclick="hienthi(1, `abc`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc">
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Chạy</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Cầu lông</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bóng rổ</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Quần vợt</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bơi lội</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">GOLF</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="./Product.jsp">Quần áo <i class="fas fa-plus cong2" onclick="hienthi(2, `abc2`)"></i> <i
                                        class="fas fa-minus tru2 hidden" onclick="hienthi(2, `abc2`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc2">
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Chạy</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Cầu lông</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bóng rổ</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Quần vợt</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bơi lội</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">GOLF</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="./Product.jsp">Già dép<i class="fas fa-plus cong3" onclick="hienthi(3, `abc3`)"></i> <i
                                        class="fas fa-minus tru3 hidden" onclick="hienthi(3, `abc3`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc3">
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Chạy</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Cầu lông</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bóng rổ</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Quần vợt</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bơi lội</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">GOLF</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="./Product.jsp">Phụ kiện <i class="fas fa-plus cong4" onclick="hienthi(4, `abc4`)"></i> <i
                                        class="fas fa-minus tru4 hidden " onclick="hienthi(4, `abc4`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc4">
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Chạy</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Cầu lông</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bóng rổ</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Quần vợt</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">Bơi lội</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="./Product.jsp">GOLF</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="ng-scope">
                        <a href="./new.html">Tin tức</a>
                    </li>
                    <li class="ng-scope">
                        <a href="./contact.jsp">Liên hệ</a>
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
    <div class="container">
        <!-- slide show -->
        <div class="row">
            <section class="awe-section-1">
                <div class="mt-4 top-sliders col-md-12">
                    <div class="slideshow">
                        <div id="demo" class="carousel slide" data-ride="carousel">
                            <ul class="carousel-indicators">
                                <li data-target="#demo" data-slide-to="0" class="active"></li>
                                <li data-target="#demo" data-slide-to="1"></li>
                                <li data-target="#demo" data-slide-to="2"></li>
                            </ul>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="./assets/img/slideshow/1.jpg" alt="Los Angeles" width="1100" height="550">
                                    <div class="carousel-caption">
                                        <a href="./Product.jsp" class="click-slideshow">Xem chi tiết</a>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="./assets/img/slideshow/2.jpg" alt="Chicago" width="1100" height="550">
                                    <div class="carousel-caption">
                                        <a href="./Product.jsp" class="click-slideshow">Xem chi tiết</a>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="./assets/img/slideshow/3.jpg" alt="New York" width="1100" height="550">
                                    <div class="carousel-caption">
                                        <a href="./Product.jsp" class="click-slideshow">Xem chi tiết</a>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                            </a>
                            <a class="carousel-control-next" href="#demo" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- end slide show -->
        <div class="product">
            <div class="container">
                <div class="product_popular">
                    <h3 class="product__popular title-product">Sản phẩm phổ biến</h3>
                    <div class="row">
                        <div class="col-lg-4 col-sm-12 mb-20">
                            <div class="card" style="width: 100%;">
                                <img class="card-img-top" src="./assets/img/product/addidas1.jpg" alt="Card image" style="width:100%">
                                <div class="card-body">
                                    <h4 class="card-title" >Joma Super Regate</h4>
                                    <p class="card-text description" style="font-weight: 400;">Phần trên được sản xuất bằng cách sử dụng sợi nhỏ, nylon và TPU chèn trên nylon để bảo vệ chống nứt nẻ
                                        . Joma Super Regate bao gồm công nghệ BẢO VỆ ở cổ chân để tăng cường sức đề kháng 
                                        và sự ổn định cho đòn đánh. Joma Super Regate có hệ thống thông gió VTS cho phép thở và
                                        luồng không khí lớn hơn bên trong giày.
                                        Đế lót EVA định hình sẵn có thể điều chỉnh theo hình dạng của bàn chân.
                                        Đế được sản xuất bằng EVA tự nhiên góp phần tạo đệm cho giày bằng cách
                                        hấp thụ tác động từ bàn chân.</p>
                                    <a href="./ProductDetail.jsp" title="GIÀY ADIDAS 4D FUTURECRAFT" class="btn btn-buynow">Xem ngay <i class="fas fa-arrow-right"
                                                                                                                                        style="font-size: 16px;margin-left: 5px;"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-12">
                            <div class="card" style="width: 100%;">
                                <img class="card-img-top" src="./assets/img/product/stansmith.jpg" alt="Card image" style="width:100%">
                                <div class="card-body">
                                    <h4 class="card-title">adidas stan smith</h4>
                                    <p class="card-text description" style="font-weight: 400;">Đúng chất kinh điển.
                                        Trước đây, Stan Smith từng là ngôi sao lớn của làng quần vợt.
                                        Mang đôi giày adidas xứng tầm tên tuổi của ông, bạn sẽ là ngôi sao đường phố.
                                        Từ trên xuống dưới, đôi giày kinh điển này bắt trọn tinh hoa phong cách của kiểu dáng nguyên bản năm 1971,
                                        với thiết kế bằng da tối giản và đường nét gọn gàng.</p>
                                    <a href="./ProductDetail.jsp" class="btn btn-buynow">Xem ngay <i class="fas fa-arrow-right "
                                                                                                     style="font-size: 16px;margin-left: 5px;"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-12">
                            <div class="card" style="width: 100%;">
                                <img class="card-img-top" src="./assets/img/product/stansmith.jpg" alt="Card image" style="width:100%">
                                <div class="card-body">
                                    <h4 class="card-title">adidas stan smith</h4>
                                    <p class="card-text description" style="font-weight: 400;">Đúng chất kinh điển.
                                        Trước đây, Stan Smith từng là ngôi sao lớn của làng quần vợt.
                                        Mang đôi giày adidas xứng tầm tên tuổi của ông, bạn sẽ là ngôi sao đường phố.
                                        Từ trên xuống dưới, đôi giày kinh điển này bắt trọn tinh hoa phong cách của kiểu dáng nguyên bản năm 1971,
                                        với thiết kế bằng da tối giản và đường nét gọn gàng.</p>
                                    <a href="./ProductDetail.jsp" class="btn btn-buynow">Xem ngay <i class="fas fa-arrow-right "
                                                                                                     style="font-size: 16px;margin-left: 5px;"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product__new">
                    <h3 class="product__ne title-product">Sản phẩm mới</h3>

                    <%
                        List<Product> productList = (List<Product>) request.getAttribute("productList");
                        int index = 0;
               %>

                    <div class="container">
                        <% for (Product product : productList) { 
                            if (index % 3 == 0) { // Mở một row mới sau mỗi 3 sản phẩm
                        %>
                        <div class="row">
                            <% } %>

                            <div class="col-lg-4 col-md-6 col-sm-12 mb-20">
                                <a href="ProductDetail?productId=<%= product.getProductId() %>" class="product__new-item">
                                    <div class="card" style="width: 100%">
                                        <div>
                                            <img class="card-img-top" src="<%= product.getImageUrl()%>" alt="<%= product.getName() %>">
                                            <form action="" class="hover-icon hidden-sm hidden-xs">
                                                <input type="hidden">
                                                <a href="pay?productId=<%= product.getProductId() %>" class="btn-add-to-cart" title="Mua ngay">
                                                    <i class="fas fa-cart-plus"></i>
                                                </a>
                                                <a data-toggle="modal" data-target="#myModal" class="quickview" title="Xem nhanh">
                                                    <i class="fas fa-search"></i>
                                                </a>
                                            </form>
                                        </div>
                                        <div class="card-body">
                                            <h5 class="card-title description">
                                                <%= product.getName() %>
                                            </h5>
                                            <div class="product__price">
                                                <p class="card-text price-color product__price-old"><%= String.format("%,.0f", product.getPrice()*1.2) %>đ</p>
                                                <p class="card-text price-color product__price-new"><%= String.format("%,.0f", product.getPrice()) %> đ</p>
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
                                if (index % 3 == 0 || index == productList.size()) { // Đóng row sau mỗi 3 sản phẩm hoặc khi hết danh sách
                            %>
                        </div>
                        <% } 
    } %>
                    </div>

                </div>

                <section class="awe-section-9">
                    <div class="section_policy clearfix">
                        <div class="col-12">
                            <div class="owl-policy-mobile">
                                <div class="owl-stage-outer">
                                    <div class="owl-stage">
                                        <div class="owl-item">
                                            <div class="section_policy_content">

                                                <img src="https://bizweb.dktcdn.net/100/344/983/themes/704702/assets/policy_images_1.png?1628514159582" alt="">
                                                <div class="section-policy-padding">
                                                    <h3>Miễn phí vận chuyển</h3>
                                                    <div class="section_policy_title">Cho các đơn hàng</div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="owl-item">
                                            <div class="section_policy_content">

                                                <img src="https://bizweb.dktcdn.net/100/344/983/themes/704702/assets/policy_images_2.png?1628514159582" alt="">
                                                <div class="section-policy-padding">
                                                    <h3>Hỗ trợ 24/7</h3>
                                                    <div class="section_policy_title">Liên hệ hỗ trợ 24h/ngày</div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="owl-item">
                                            <div class="section_policy_content">

                                                <img src="	https://bizweb.dktcdn.net/100/344/983/themes/704702/assets/policy_images_3.png?1628514159582" alt="">
                                                <div class="section-policy-padding">
                                                    <h3>Hoàn tiền 100%</h3>
                                                    <div class="section_policy_title">Nếu sản phẩm bị lỗi, hư hỏng</div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="owl-item">
                                            <div class="section_policy_content">

                                                <img src="https://bizweb.dktcdn.net/100/344/983/themes/704702/assets/policy_images_4.png?1628514159582" alt="">
                                                <div class="section-policy-padding">
                                                    <h3>Thanh toán</h3>
                                                    <div class="section_policy_title">Được bảo mật 100%</div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <div class="shoesnews">
            <div class="container">
                <h3 class="shoesnews__title">Tin tức</h3>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 mb-20">
                        <a href="./newDetail.jsp" class="product__new-item">
                            <div class="card" style="width: 100%">
                                <img class="card-img-top" src="./assets/img/product/new2.jpg" alt="Card image cap" height="230px">
                                <div class="card-body">
                                    <h5 class="card-title description title-news">
                                        Tin tức về giày puma
                                    </h5>
                                    <p class="card-text description" style="font-weight: 400;">Trong phạm vi bài viết ngày hôm nay, hãy cùng Thanh Hùng Futsal khám phá mẫu giày
                                        đá bóng độc nhất vô nhị được nhà Swoosh thửa riêng cho cậu bé vàng của xứ sở Lục Lăng nhé! </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 mb-20">
                        <a href="./newDetail.jsp" class="product__new-item">
                            <div class="card" style="width: 100%">
                                <img class="card-img-top" src="./assets/img/product/new1.jpg" alt="Card image cap" height="230px">
                                <div class="card-body">
                                    <h5 class="card-title description title-news">
                                        Người sáng lập đế chế puma
                                    </h5>
                                    <p class="card-text description" style="font-weight: 400;">"PUMA ra mắt KING TOP DASSLER phiên bản giới hạn
                                        20/11/2021
                                        Nhằm tôn vinh những di sản mà Rudolph Dassler, người sáng lập Puma để lại, mới đây hãng thể thao nước Đức đã cho ra đời phiên bản Puma King Top Dassler
                                        với chỉ giới hạn 100 đôi trên toàn thế giới.
                                        Đôi giày đá banh được thiết kế theo phong cách đơn giản, đúng với tinh thần của dòng sản phẩm Puma King
                                        . Upper là chất liệu da Kangaroo cao cấp với tone màu trắng chủ đạo lấy ý tưởng từ những bộ
                                        quần áo sạch sẽ mà cậu bé Dassler đã giặt thuê từ khi còn nhỏ,
                                        thông qua đó cũng xây dựng lên tinh thần kinh doanh và ý chí khởi nghiệp từ sớm của cậu.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 mb-20">
                        <a href="./newDetail.jsp" class="product__new-item">
                            <div class="card" style="width: 100%">
                                <img class="card-img-top" src="./assets/img/product/new3.jpg" alt="Card image cap" height="230px" >
                                <div class="card-body">
                                    <h5 class="card-title description title-news">
                                        Thông tin bên lề Uero
                                    </h5>
                                    <p class="card-text description" style="font-weight: 400;">"Bóng đá đã trở lại", câu nói tưởng chừng bình thường nhưng lại vô cùng ý nghĩa trong thời điểm hiện tại, khi mà chúng ta đang phải sống chung với đại dịch Covid-19.
                                        Các sân vận động chật kín cổ động viên với các tràng vỗ tay,
                                        tiếng cổ vũ cũng là một hình ảnh đánh dấu chiến thắng của nhân loại trước Covid-19.
                                        Bên cạnh các trận đấu bóng đá đỉnh cao đang diễn ra khắp các sân cỏ trên toàn thế giới,
                                        thì các ông lớn như Nike, adidas hay Puma, v.v...</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="shoesnews__all">
                    <a href="./Product.jsp" class="shoesnews__all-tittle">Xem tất cả</a> <i class="fi-rs-angle-right"></i>
                </div>
            </div>
        </div>
    </div>
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
                                        <input type="button" value="-" class="control" onclick="tru()">
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

</html>