

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
    <link rel='stylesheet'
        href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- link css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/login.css">
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

    .title-heading {
        margin: 0;
        color: #36424b;
        font-size: 18px;
        font-weight: 500;
        padding: 0;
        margin-top: 0;
        margin-bottom: 10px;
        position: relative;
        text-transform: uppercase;
    }

    .contact-info {
        padding: 0;
    }

    .contact-info li {
        display: table;
        margin-bottom: 7px;
        font-size: 14px;
    }

    .text-contact {
        font-style: italic;
        color: #707e89;
    }
    .mapbox {
        border-top: 1px solid #e8e9f1;
        margin-top: 30px;
        height: 350px;
        overflow: hidden;
        border: 10px solid #e5e5e5;
        border-radius: 3px;
    }
    /* Mobile & tablet  */
    @media (max-width: 1023px) {}

    /* tablet */
    @media (min-width: 740px) and (max-width: 1023px) {

        textarea {
            width: 100%;
        }

    }

    /* mobile */
    @media (max-width: 739px) {}
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
                        <a href="">Trang chủ</a>
                    </li>
                    <li class="ng-scope">
                        <a href="">Giới thiệu</a>
                    </li>
                    <li class="ng-scope ng-has-child1">
                        <a href="">Sản phẩm <i class="fas fa-plus cong"></i> <i class="fas fa-minus tru hidden"></i></a>
                        <ul class="ul-has-child1">
                            <li class="ng-scope ng-has-child2">
                                <a href="">Giày, dép <i class="fas fa-plus cong1" onclick="hienthi(1,`abc`)"></i> <i
                                        class="fas fa-minus tru1 hidden" onclick="hienthi(1,`abc`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc">
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="#">Bóng đá <i class="fas fa-plus cong2" onclick="hienthi(2,`abc2`)"></i> <i
                                        class="fas fa-minus tru2 hidden" onclick="hienthi(2,`abc2`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc2">
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="">Bóng đá <i class="fas fa-plus cong3" onclick="hienthi(3,`abc3`)"></i> <i
                                        class="fas fa-minus tru3 hidden" onclick="hienthi(3,`abc3`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc3">
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ng-scope ng-has-child2">
                                <a href="">Bóng đá <i class="fas fa-plus cong4" onclick="hienthi(4,`abc4`)"></i> <i
                                        class="fas fa-minus tru4 hidden " onclick="hienthi(4,`abc4`)"></i></a>
                                <ul class="ul-has-child2 hidden" id="abc4">
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                    <li class="ng-scope">
                                        <a href="">Bóng đá</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="ng-scope">
                        <a href="">Tin tức</a>
                    </li>
                    <li class="ng-scope">
                        <a href="">Liên hệ</a>
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
                <a href="mailto:support@sapo.vn">support@sapo.vn</a>
            </li>
        </ul>
    </div>
    <!-- end mobile menu -->
    <!-- header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- end header -->
   
  
    </div>
    <!-- content -->
    <div class="content" style="margin-top: 30px">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="info-shop">
                        <h3 class="title-heading">Thông tin liên hệ</h3>
                        <ul class="contact-info">
                            <li>P&T SHOP xin hân hạnh phục vụ quý khách với những bộ quần áo phục kiện rất nhiều khách
                                hàng
                                tại Việt Nam ưa thích và chọn lựa.</li>
                            <li class="footer__item">
                                <p><i class="fas fa-search-location footer__item-icon"></i> Ho Chi Minh, Viet Nam</p>
                            </li>
                            <li class="footer__item">
                                <p><i class="fas fa-phone-square-alt footer__item-icon"></i> Phone: <a
                                        href="tel:0123456789">0123456789</a></p>
                            </li>
                            <li class="footer__item">
                                <p><i class="fas fa-envelope-square footer__item-icon"></i> Email: <a
                                        href="mailto:abc@gmail.com">abc@gmail.com</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="page-login">
                        <h3 class="title-heading">Gửi thông tin</h3>
                        <span class="text-contact">Bạn hãy điền nội dung tin nhắn vào form dưới đây
                            và gửi cho chúng tôi. Chúng tôi sẽ trả lời bạn sau khi nhận được.
                        </span>
                        <form action="" method="POST" class="form" id="form-1">
                            <div class="form-group">
                                <label for="fullname" class="form-label">Tên đầy đủ</label>
                                <input id="fullname" name="fullname" type="text" placeholder="VD: Sơn Đặng"
                                    class="form-control">
                                <span class="form-message"></span>
                            </div>
                            <div class="form-group">
                                <label for="email" class="form-label">Email</label>
                                <input id="email" name="email" type="text" placeholder="VD: email@domain.com"
                                    class="form-control">
                                <span class="form-message"></span>
                            </div>
                            <div class="form-group">
                                <label for="phone" class="form-label">Điện thoại</label>
                                <input id="phone" pattern="[0-9]{10}" name="phone" type="tel" placeholder="0912*******"
                                    class="form-control">
                                <span class="form-message"></span>
                            </div>
                            <label for="phone" class="form-label">Nội dung</label>
                            <div class="form-group">
                                <textarea name="noidung" id="noidung" cols="70" rows="10"></textarea>
                                <span class="form-message"></span>
                            </div>

                            <button class="form-submit btn-blocker">Gửi tin nhắn<i class="fas fa-arrow-right"
                                    style="font-size: 16px;margin-left: 10px;"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-12">
                    <h3 style="text-align: center; margin-top:30px;border-top:1px solid #333;padding-top:10px">Bản đồ cửa hàng</h3>
                    <div class="mapbox">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.043789433826!2d106.70723641474923!3d10.807958192300143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528bd0e0d9399%3A0xf97b95c646431c71!2zODYgxJBpbmggQuG7mSBMxKluaCwgUGjGsOG7nW5nIDI2LCBCw6xuaCBUaOG6oW5oLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1634136123250!5m2!1svi!2s" width="100%" height="450"  allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
      <jsp:include page="footer.jsp"></jsp:include>
    <!-- end footer -->
</body>
<script src="./assets/js/validator.js"></script>
<script src="./assets/js/main.js"></script>
<script>
    Validator({
        form: '#form-1',
        formGroupSelector: '.form-group',
        errorSelector: '.form-message',
        rules: [
            Validator.isRequired('#fullname', 'Vui lòng nhập tên đầy đủ'),
            Validator.isRequired('#email'),
            Validator.isEmail('#email'),
            Validator.minLength('#password', 6),
            Validator.isRequired('#password_confirmation'),
            Validator.isRequired('input[name="gender"]'),
            Validator.isConfirmed('#password_confirmation', function () {
                return document.querySelector('#form-1 #password').value;
            }, 'Mật khẩu nhập lại không chính xác'),
            Validator.isRequired('#noidung')
        ],
        onSubmit: function (data) {
            // call api
            console.log(data);
        }
    });
</script>

</html>