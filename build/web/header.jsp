<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.User"%>
<header class="header">
        <div class="container">
            <div class="top-link clearfix hidden-sm hidden-xs">
                <div class="row">
                    <div class="col-6 social_link">
                        <div class="social-title">Theo dõi: </div>
                        <a href="https://www.facebook.com/zeroryo25/"><i class="fab fa-facebook" style="font-size: 24px; margin-right: 10px"></i></a>
                        <a href=""><i class="fab fa-instagram" style="font-size: 24px; margin-right: 10px;color: pink;"></i></a>
                        <a href=""><i class="fab fa-youtube" style="font-size: 24px; margin-right: 10px;color: red;"></i></a>
                        <a href=""><i class="fab fa-twitter" style="font-size: 24px; margin-right: 10px"></i></a>
                    </div>
                     
                    <div class="col-6 login_link">
                        <c:if test="${sessionScope.user == null}">
                         <ul class="header_link right m-auto">
                            
                            <li>
                                <a href="./Login.jsp"><i class="fas fa-sign-in-alt mr-3"></i>Đăng nhập</a>
                            </li>
                            
                            <li>
                                <a href="./Login.jsp"><i class="fas fa-user-plus mr-3" style="margin-left: 10px;"></i>Đăng kí</a>
                            </li>
                        </ul>
                     </div>
                        </c:if> 
                       <div class="col-6 login_link">
                         
                        <ul class="nav nav__first right">
                            <li class="nav-item nav-item__first nav-item__first-user">
                                <img src="./assets/img/product/noavatar.png" alt="" class="nav-item__first-img">
                                <span class="nav-item__first-name">${user.name}</span>
                                <ul class="nav-item__first-menu">
                                    <li class="nav-item__first-item">
                                        <a href="">Tài khoản của tôi</a>
                                    </li>
                                    <li class="nav-item__first-item">
                                        <a href="">Đơn mua</a>
                                    </li>
                                    <li class="nav-item__first-item">
                                        <a href="./LogoutServlet">Đăng xuất</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                           
                    </div>
                </div>
            </div>
            <div class="header-main clearfix">
                <div class="row">
                    <div class="col-lg-3 col-100-h">
                        <div id="trigger-mobile" class="visible-sm visible-xs"><i class="fas fa-bars"></i></div>
                        <div class="logo">
                            <a href="index.jsp">
                                <img src="./assets/img/logo/logomain.png" alt="">
                            </a>
                        </div>
                        <div class="mobile_cart visible-sm visible-xs">
                            <a href="./cart.jsp" class="header__second__cart--icon">
                                <i class="fas fa-shopping-cart"></i>
                                <span id="header__second__cart--notice" class="header__second__cart--notice">3</span>
                            </a>
                            <a href="./listlike.jsp" class="header__second__like--icon">
                                <i class="far fa-heart"></i>
                                <span id="header__second__like--notice" class="header__second__like--notice">3</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-6 m-auto pdt15">
                        <form class="example" action="Search">
                            <input type="text" class="input-search" placeholder="Tìm kiếm.." name="search">
                            <button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <div class="col-3 m-auto hidden-sm hidden-xs">
                        <div class="item-car clearfix">
                            <a href="./cart.jsp" class="header__second__cart--icon">
                                <i class="fas fa-shopping-cart"></i>
                                <span id="header__second__cart--notice" class="header__second__cart--notice">3</span>
                            </a>
                        </div>
                        <div class="item-like clearfix">
                            <a href="./listlike.jsp" class="header__second__like--icon">
                                <i class="far fa-heart"></i>
                                <span id="header__second__like--notice" class="header__second__like--notice">3</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="header_nav hidden-sm hidden-xs">
            <div class="container">
                <ul class="header_nav-list nav">
                    <li class="header_nav-list-item "><a href="./HomeServlet" class="active">Trang chủ</a></li>
                    <li class="header_nav-list-item"><a href="./intro.jsp">Giới thiệu</a></li>
                    <li class="header_nav-list-item has-mega">
                        <a href="./ProductServlet">Sản phẩm<i class="fas fa-angle-right" style="margin-left: 5px;"></i></a>
                        <div class="mega-content" style="overflow-x: hidden;">
                            <div class="row">
                                <ul class="col-8 no-padding level0">
                                    <li class="level1">
                                        <a class="hmega" href="./Product.jsp">Tất cả sản phẩm</a>
                                        <!-- <ul class="level1">
                                            <li class="level2"><a href="">Bóng đá</a></li>
                                            <li class="level2"><a href="">Bóng đá</a></li>
                                            <li class="level2"><a href="">Bóng đá</a></li>
                                            <li class="level2"><a href="">Bóng đá</a></li>
                                          </ul> -->
                                    </li>
                                    <li class="level1">
                                        <a class="hmega">Giày, dép</a>
                                        <ul class="level1">
                                            <li class="level2"><a href="./Product.jsp">Bóng đá</a></li>
                                            <li class="level2"><a href="./Product.jsp">Chạy</a></li>
                                            <li class="level2"><a href="./Product.jsp">Cầu lông</a></li>
                                            <li class="level2"><a href="./Product.jsp">Bóng rổ</a></li>
                                            <li class="level2"><a href="./Product.jsp">Quần vợt</a></li>
                                        </ul>
                                    </li>
                                    <li class="level1">
                                        <a class="hmega">Quần, áo</a>
                                        <ul class="level1">
                                            <li class="level2"><a href="./Product.jsp">Bóng đá</a></li>
                                            <li class="level2"><a href="./Product.jsp">Chạy</a></li>
                                            <li class="level2"><a href="./Product.jsp">Cầu lông</a></li>
                                            <li class="level2"><a href="./Product.jsp">Bóng rổ</a></li>
                                            <li class="level2"><a href="./Product.jsp">Quần vợt</a></li>
                                        </ul>
                                    </li>
                                    <li class="level1">
                                        <a class="hmega">Phụ kiện</a>
                                        <ul class="level1">
                                            <li class="level2"><a href="./Product.jsp">Bóng đá</a></li>
                                            <li class="level2"><a href="./Product.jsp">Chạy</a></li>
                                            <li class="level2"><a href="./Product.jsp">Cầu lông</a></li>
                                            <li class="level2"><a href="./Product.jsp">Bóng rổ</a></li>
                                            <li class="level2"><a href="./Product.jsp">Quần vợt</a></li>
                                            <li class="level2"><a href="./Product.jsp">Bơi lội</a></li>
                                            <li class="level2"><a href="./Product.jsp">Golf</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="col-4">
                                    <a href="">
                                        <picture>
                                            <img src="https://media.giphy.com/media/mj7HcKFq23oobJMcOG/giphy.gif" alt="" width="80%">
                                        </picture>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="header_nav-list-item"><a href="./new.html">Tin tức</a></li>
                    <li class="header_nav-list-item"><a href="./contact.jsp">Liên hệ</a></li>
                </ul>
            </div>
        </nav>
    </header>