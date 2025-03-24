

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, model.ProductImage,model.Product,model.Category,model.ProductDetail,model.User" %>
<!DOCTYPE jsp>
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
        <link rel="stylesheet" href="./assets/css/productdetail.css">
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
        .sale-off-2 {
            top: 14px;
            right: 14px;
        }
        /* Mobile & tablet  */
        @media (max-width: 1023px) {
            .sale-off-2 {
                top: 1px;
            }
        }
        /* tablet */
        @media (min-width: 740px) and (max-width: 1023px) {
            .daonguoc {
                display: flex;
                flex-direction: column-reverse;
            }
            #main-img {
                max-width: unset;
            }
            #main-img img {
                width: 100%;
                margin-left: 0;
                margin-top: 0;
                background-size: cover;
                background-position: center;
                margin-bottom: 10px;
            }
            .all-img > li {
                display: inline-block;
            }
            .all-img {
                padding: unset;
            }
            .img-item img {
                width: 150px;
                cursor: pointer;
                margin: 5px 10px;
            }
            textarea {
                width: 100%;
            }
            .btn-comment {
                display: block;
                width: 100%;
                padding: 25px 0 35px 0;
                font-size: small;
            }
        }
        /* mobile */
        @media (max-width: 739px) {
            .daonguoc {
                display: flex;
                flex-direction: column-reverse;
            }
            #main-img img {
                width: 100%;
                margin-left: 0;
                margin-top: 0;
                background-size: cover;
                background-position: center;
                margin-bottom: 10px;
            }
            .all-img > li {
                display: inline-block;
            }
            .all-img {
                padding: unset;
            }
            .img-item img {
                width: 80px;
                margin: 5px 2px;
            }
            .product__price {
                margin: 15px 0;
            }
            .product__wrap {
                display: block;
                margin: 15px 0;
            }
            .add-cart {
                width: 100%;
                padding: 10px 0;
                margin: 15px 0;
            }
            .product__shopnow {
                display: block;
            }
            .shopnow {
                width: 100%;
                margin-bottom: 15px;
            }
            .likenow {
                width: 100%;
            }
            .btn-comment {
                width: 100%;
            }
            .sale-off-2 {
                top: 1px;
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
                        <a href="./HomeServlet">Trang chủ</a>
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
        <!-- product detail -->
        <div class="container">
            <div class="product__detail">
                <div class="row product__detail-row">
                    <div class="col-lg-6 col-12 daonguoc">
                        <div class="img-product">
                            <ul class="all-img">

                            <%
                                List<ProductImage> images = (List<ProductImage>) request.getAttribute("productImages");
                                int i=1;
                                if (images != null) {
                                    for (ProductImage image : images) {
                                    i++;
                            %>
                            <li class="img-item">
                                <img src="<%= image.getImageUrl() %>" class="small-img" alt="anh <%= i %>" 
                                     onclick="changeImg('<%= image.getImageUrl() %>')" id="<%= image.getImageUrl() %>">
                            </li>
                            <%
                                    }
                                }
                            %>
                        </ul>
                    </div>
                    <div id="main-img" style="cursor: pointer;">
                        <%
                            String mainImageUrl = "default-image.jpg"; // Ảnh mặc định
                            if (images != null) {
                                for (ProductImage image : images) {
                                    if (image.isIsPrimary()) {
                                        mainImageUrl = image.getImageUrl();
                                        break;
                                    }
                                }
                            }
                        %>

                        <img src="<%= mainImageUrl %>" class="big-img" alt="Ảnh chính"
                             id="img-main" xoriginal="<%= mainImageUrl %>">

                        <div class="sale-off sale-off-2">
                            <span class="sale-off-percent">20%</span>
                            <span class="sale-off-label">GIẢM</span>
                        </div>
                    </div>
                </div>

                <%
                      Product product =  (Product) request.getAttribute("product");
                      Category ca = (Category) request.getAttribute("ca");
                           
                %>             
                <div class="col-lg-6 col-12">
                    <div class="product__name">
                        <h2><%= product.getName() %></h2>
                    </div>

                    <div class="status-product">
                        Trạng thái: <b>Còn hàng</b>
                    </div>
                    <div class="infor-oder">
                        Loại sản phẩm: <b><%= ca.getName() %></b>
                    </div>
                    <div class="product__price">
                        <h2><%= String.format("%,.0f", product.getPrice()) %>đ</h2>
                    </div>

                    <div class="price-old">
                        Giá gốc: 
                        <del><%= String.format("%,.0f", product.getPrice()*1.2) %>đ</del>
                        <span class="discount">(-20%)</span>
                    </div>
                    <!-- <div class="product__color">
                      <div class="select-swap">
                        <div class="circlecheck">
                          <input type="radio" id="f-option" class="circle-1" name="selector" checked>
                          <label for="f-option">Radio Mint Color</label>
                          
                          <div class="outer-circle"></div>
                        </div>
                        <div class="circlecheck">
                          <input type="radio" id="g-option" class="circle-2" name="selector">
                          <label for="g-option">Radio Orange Color</label>
                          
                          <div class="outer-circle"></div>
                        </div>
                        <div class="circlecheck">
                          <input type="radio" id="h-option" class="circle-3" name="selector">
                          <label for="h-option">Radio Purple Color</label>
                          
                          <div class="outer-circle"></div>
                        </div>
                        
                      </div>
                    </div> -->

                    <div class="product__wrap">
                        <div class="product__amount">
                            <label for="">Số lượng: </label>
                            <input type="button" value="-" class="control" onclick="tru()" id="cong">
                            <input type="text" value="1" class="text-input" id="quantity" onkeypress='validate(event)'> 
                            <input type="button" value="+" class="control" onclick="cong()">
                        </div>
                        <button class="add-cart" onclick="addToCart()" ><a href="CartServlet?productId=<%= product.getProductId()%>&quantity=1&userId=${user.userId}">Thêm vào giỏ</a></button>
                    </div>
                    <div class="product__shopnow">
                        <button class="shopnow">Mua ngay</button>
                        <span class="home-product-item__like home-product-item__like--liked">
                            <i class="home-product-item__like-icon-empty far fa-heart" style="font-size: 24px;margin-top: 7px;"></i>
                            <i class="home-product-item__like-icon-fill fas fa-heart" style="font-size: 24px;margin-top: 7px;"></i>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product__describe">
        <div class="container">
            <h2 class="product__describe-heading">Mô tả</h2>
            <div class="row">
                <div class="col-1"></div>
                <div class="col-11">
                    <%
                                List<ProductDetail> Detail = (List<ProductDetail>) request.getAttribute("productDetails");
                                
                               
                                    for (ProductDetail detail: Detail) {
                                   
                    %>
                    <h3 class="name__product"><%= product.getName() %></h3>
                    <p>Phân khúc: Academy (tầm trung).</p>
                    <p>Size: <%= detail.getSize() %></p>
                    <p>Thiết kế: <%= detail.getContent() %></p>
                    <p>Chât Liệu:<%= detail.getMaterial() %> </p>
                    <p>Màu : <%= detail.getColor() %></p>
                    <%
                                   }
                                
                    %>
                </div>
            </div>
        </div>
    </div>
    <div class="product__comment">
        <div class="container">
            <h2 class="product__describe-heading">Bình luận</h2>
            <div class="row">
                <div class="col-lg-4 col-12 mb-4">
                    <div class="home-product-item__rating" style="font-size: 24px;transform-origin: left;margin-bottom: 5px">
                        <i class="home-product-item__star--gold fas fa-star"></i>
                        <i class="home-product-item__star--gold fas fa-star"></i>
                        <i class="home-product-item__star--gold fas fa-star"></i>
                        <i class="home-product-item__star--gold fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <textarea name="" id="" cols="70" rows="10"></textarea>
                    <button type="submit" class="btn btn-comment">Gửi</button>
                </div>
                <div class="col-lg-8 col-12">
                    <div class="body__comment">
                        <div class="comment" style="align-items: center;">
                            <img class="comment-img" src="./assets/img/product/noavatar.png" alt="" >
                            <div class="comment__content">
                                <div class="comment__content-heding">
                                    <h4 class="comment__content-name">Gia Huy</h4>
                                    <span class="comment__content-time">2021-11-12</span>
                                </div>
                                <div class="home-product-item__rating" style="font-size: 14px;transform-origin: left;margin-bottom: 5px">
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="comment__content-content">
                                    <span>Đẹp quá</span>
                                </div>
                            </div>
                        </div>
                        <div class="comment">
                            <img class="comment-img" src="./assets/img/product/noavatar.png" alt="" >
                            <div class="comment__content">
                                <div class="comment__content-heding">
                                    <h4 class="comment__content-name">Gia Huy</h4>
                                    <span class="comment__content-time">2021-11-12</span>
                                </div>
                                <div class="home-product-item__rating" style="font-size: 14px;transform-origin: left;margin-bottom: 5px">
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="comment__content-content">
                                    <span>Quá đẹp</span>
                                </div>
                            </div>
                        </div>
                        <div class="comment">
                            <img class="comment-img" src="./assets/img/product/noavatar.png" alt="" >
                            <div class="comment__content">
                                <div class="comment__content-heding">
                                    <h4 class="comment__content-name">Gia Huy</h4>
                                    <span class="comment__content-time">2021-11-12</span>
                                </div>
                                <div class="home-product-item__rating" style="font-size: 14px;transform-origin: left;margin-bottom: 5px">
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="comment__content-content">
                                    <span>Đẹp quá</span>
                                </div>
                            </div>
                        </div>
                        <div class="comment">
                            <img class="comment-img" src="./assets/img/product/noavatar.png" alt="" >
                            <div class="comment__content">
                                <div class="comment__content-heding">
                                    <h4 class="comment__content-name">Gia Huy</h4>
                                    <span class="comment__content-time">2021-11-12</span>
                                </div>
                                <div class="home-product-item__rating" style="font-size: 14px;transform-origin: left;margin-bottom: 5px">
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="comment__content-content">
                                    <span>Sản phẩm tốt</span>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="comment">
                          <img class="comment-img" src="./assets/img/product/noavatar.png" alt="" >
                          <div class="comment__content">
                            <div class="comment__content-heding">
                              <h4 class="comment__content-name">Gia Huy</h4>
                              <span class="comment__content-time">2021-11-12</span>
                            </div>
                            <div class="home-product-item__rating" style="font-size: 14px;transform-origin: left;margin-bottom: 5px">
                              <i class="home-product-item__star--gold fas fa-star"></i>
                              <i class="home-product-item__star--gold fas fa-star"></i>
                              <i class="home-product-item__star--gold fas fa-star"></i>
                              <i class="home-product-item__star--gold fas fa-star"></i>
                              <i class="fas fa-star"></i>
                            </div>
                            <div class="comment__content-content">
                              <span>Sản phẩm tốt</span>
                            </div>
                          </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end product detail -->
    <!-- product relate to -->
    <div class="product__relateto">
        <div class="container">
            <h3 class="product__relateto-heading">Sản phẩm liên quan</h3>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-12 mb-20">
                    <a href="./ProductDetail.jsp" class="product__new-item">
                        <div class="card" style="width: 100%">
                            <div>
                                <img class="card-img-top" src="./assets/img/product/aohoodie1.jpg" alt="Card image cap">
                                <!-- <form action="" class="hover-icon hidden-sm hidden-xs">
                                  <input type="hidden">
                                  <a href="./pay.jsp" class="btn-add-to-cart" title="Mua ngay">
                                    <i class="fas fa-cart-plus"></i>
                                  </a>
                                  <a data-toggle="modal" data-target="#myModal" class="quickview" title="Xem nhanh">
                                    <i class="fas fa-search"></i>
                                  </a>
                                </form> -->
                            </div>
                            <div class="card-body">
                                <h5 class="card-title custom__name-product">
                                    Hoodie Adidas
                                </h5>
                                <div class="product__price">
                                    <p class="card-text price-color product__price-old">1,000,000 đ</p>
                                    <p class="card-text price-color product__price-new">1,000,000 đ</p>
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
                                    <span class="home-product-item__sold">79 đã bán</span>
                                </div>
                                <div class="sale-off">
                                    <span class="sale-off-percent">20%</span>
                                    <span class="sale-off-label">GIẢM</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-20">
                    <a href="./ProductDetail.jsp" class="product__new-item">
                        <div class="card" style="width: 100%">
                            <div>
                                <img class="card-img-top" src="./assets/img/product/aohoodie1.jpg" alt="Card image cap">
                                <!-- <form action="" class="hover-icon hidden-sm hidden-xs">
                                  <input type="hidden">
                                  <a href="./pay.jsp" class="btn-add-to-cart" title="Mua ngay">
                                    <i class="fas fa-cart-plus"></i>
                                  </a>
                                  <a data-toggle="modal" data-target="#myModal" class="quickview" title="Xem nhanh">
                                    <i class="fas fa-search"></i>
                                  </a>
                                </form> -->
                            </div>
                            <div class="card-body">
                                <h5 class="card-title custom__name-product">
                                    Hoodie Adidas
                                </h5>
                                <div class="product__price">
                                    <p class="card-text price-color product__price-old">1,000,000 đ</p>
                                    <p class="card-text price-color product__price-new">1,000,000 đ</p>
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
                                    <span class="home-product-item__sold">79 đã bán</span>
                                </div>
                                <div class="sale-off">
                                    <span class="sale-off-percent">20%</span>
                                    <span class="sale-off-label">GIẢM</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-20">
                    <a href="./ProductDetail.jsp" class="product__new-item">
                        <div class="card" style="width: 100%">
                            <div>
                                <img class="card-img-top" src="./assets/img/product/aohoodie1.jpg" alt="Card image cap">
                                <!-- <form action="" class="hover-icon hidden-sm hidden-xs">
                                  <input type="hidden">
                                  <a href="./pay.jsp" class="btn-add-to-cart" title="Mua ngay">
                                    <i class="fas fa-cart-plus"></i>
                                  </a>
                                  <a data-toggle="modal" data-target="#myModal" class="quickview" title="Xem nhanh">
                                    <i class="fas fa-search"></i>
                                  </a>
                                </form> -->
                            </div>
                            <div class="card-body">
                                <h5 class="card-title custom__name-product">
                                    Hoodie Adidas
                                </h5>
                                <div class="product__price">
                                    <p class="card-text price-color product__price-old">1,000,000 đ</p>
                                    <p class="card-text price-color product__price-new">1,000,000 đ</p>
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
                                    <span class="home-product-item__sold">79 đã bán</span>
                                </div>
                                <div class="sale-off">
                                    <span class="sale-off-percent">20%</span>
                                    <span class="sale-off-label">GIẢM</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-20">
                    <a href="./ProductDetail.jsp" class="product__new-item">
                        <div class="card" style="width: 100%">
                            <div>
                                <img class="card-img-top" src="./assets/img/product/aohoodie1.jpg" alt="Card image cap">
                                <!-- <form action="" class="hover-icon hidden-sm hidden-xs">
                                  <input type="hidden">
                                  <a href="./pay.jsp" class="btn-add-to-cart" title="Mua ngay">
                                    <i class="fas fa-cart-plus"></i>
                                  </a>
                                  <a data-toggle="modal" data-target="#myModal" class="quickview" title="Xem nhanh">
                                    <i class="fas fa-search"></i>
                                  </a>
                                </form> -->
                            </div>
                            <div class="card-body">
                                <h5 class="card-title custom__name-product">
                                    Hoodie Adidas
                                </h5>
                                <div class="product__price">
                                    <p class="card-text price-color product__price-old">1,000,000 đ</p>
                                    <p class="card-text price-color product__price-new">1,000,000 đ</p>
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
                                    <span class="home-product-item__sold">79 đã bán</span>
                                </div>
                                <div class="sale-off">
                                    <span class="sale-off-percent">20%</span>
                                    <span class="sale-off-label">GIẢM</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="seemore">
                <a href="./Product.jsp">Xem thêm</a>
            </div>
        </div>
    </div>
    <!-- end  product relate to-->
    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>
        <!-- end footer -->

        <div id="alert-cart" class="alert" style="display:none">
            <div class="alert__heading">
                <h4>Thêm vào giỏ hàng</h4>
            </div>
            <div class="alert__body">
                <img src="./assets/img/product/addidas1.jpg" alt="" class="alert__body-img">
                <div>
                    <h5 class="alert__body-name"></h5>

                    <span class="alert__body-amount">Số lượng: 1</span>
                    <h6 class="alert__body-price">2.000.000 VNĐ</h6>
                </div>
            </div>
            <div class="alert__footer">
                <a class="click__cart" style="border-radius: 4px">Xem giỏ hàng</a>
            </div>
        </div>
        <div class="overlay1" style="display: none" onclick="fadeout()">

        </div>  
    </body>
    <script src="./assets/js/main.js"></script>
    <script src="./assets/js/zoomsl.js"></script>
    <script>

            $(document).ready(function () {
                $(".big-img").imagezoomsl({
                    zoomrange: [3, 3]

                });
            });
    <%
    User user = (User) session.getAttribute("user");
    int userId = (user != null) ? user.getUserId() : 0; // Nếu chưa đăng nhập, userId = 0
    %>

      
                    let userId = <%= userId %>; // Gán userId từ session vào JavaScript
            function addToCart() {

                    if (userId === 0) {
                    alert("Vui lòng đăng nhập trước khi thêm vào giỏ hàng!");
                    window.location.href = "Login.jsp"; // Chuyển hướng đến trang đăng nhập
                    return;
                }
            }

            function cong() {
            let input = document.getElementById("quantity");
                    let value = parseInt(input.value);
                    if (!isNaN(value)) {
            input.value = value + 1;
            }
            }

            function tru() {
            let input = document.getElementById("quantity");
                    let value = parseInt(input.value);
                    if (!isNaN(value) && value > 1) {
            input.value = value - 1;
            }
            }
            function fadeInModal()
            {
            $('.alert').fadeIn();
                    $('.overlay1').fadeIn();
            }
            function fadeOutModal()
            {
            $('.alert').fadeOut();
                    $('.overlay1').fadeOut();
            }
            function fadeout()
            {
            $('.overlay1').fadeOut();
                    $('.alert').fadeOut();
            }
            setInterval(fadeOutModal, 7000);
</script>
</html>