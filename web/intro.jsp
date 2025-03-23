<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" href="./assets/css/login.css">
  <link rel="stylesheet" href="./assets/css/reponsive1.css">
  <link rel="icon" href="./assets/img/logo/main.png" type="image/x-icon" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
    integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
    crossorigin="anonymous"></script>
</head>
<style>
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
        font-size: 12px;
    }
    .mapbox {
        border-top: 1px solid #e8e9f1;
        margin-top: 30px;
        height: 350px;
        overflow: hidden;
        border: 10px solid #e5e5e5;
        border-radius: 3px;
    }
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
  .content-page p{
    font-size: 16px;
    padding: 5px 0;
  }
    /* Mobile & tablet  */
  @media (max-width: 1023px) {
  }
  /* tablet */
  @media (min-width: 740px) and (max-width: 1023px) {
    
    textarea {
      width: 100%;
    }
    
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
            <a href="./index.jsp">Trang chủ</a>
          </li>
          <li class="ng-scope">
            <a href="./intro.jsp">Giới thiệu</a>
          </li>
          <li class="ng-scope ng-has-child1">
            <a href="./Product.jsp">Sản phẩm <i class="fas fa-plus cong"></i> <i class="fas fa-minus tru hidden"></i></a>
            <ul class="ul-has-child1">
              <li class="ng-scope ng-has-child2">
                <a href="./Product.jsp">Tất cả sản phẩm <i class="fas fa-plus cong1" onclick="hienthi(1,`abc`)"></i> <i
                    class="fas fa-minus tru1 hidden" onclick="hienthi(1,`abc`)"></i></a>
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
                <a href="./Product.jsp">Quần áo <i class="fas fa-plus cong2" onclick="hienthi(2,`abc2`)"></i> <i
                    class="fas fa-minus tru2 hidden" onclick="hienthi(2,`abc2`)"></i></a>
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
                <a href="./Product.jsp">Già dép<i class="fas fa-plus cong3" onclick="hienthi(3,`abc3`)"></i> <i
                    class="fas fa-minus tru3 hidden" onclick="hienthi(3,`abc3`)"></i></a>
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
                <a href="./Product.jsp">Phụ kiện <i class="fas fa-plus cong4" onclick="hienthi(4,`abc4`)"></i> <i
                    class="fas fa-minus tru4 hidden " onclick="hienthi(4,`abc4`)"></i></a>
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
    <div class="content" style="margin-top: 30px">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="page-title">
                        <h1 class="title-head">
                            Giới thiệu
                        </h1>
                    </div>
                    <div class="content-page">
                        <h2>
                            <strong>I/ Tầm nhìn</strong>
                        </h2>
                        <p>
                            Tại P&T SHOP, chúng tôi luôn hướng đến việc cải tiến chất lượng
                             trải nghiệm của khách hàng thông qua việc đa dạng hóa các loại sản phẩm,
                              đầu tư nghiên cứu để đưa ra những tư vấn phù hợp với từng khách hàng một.
                               Và với định hướng trở thành một trong những cửa hàng cung cấp các sản
                                phẩm giày đá bóng chính hãng tốt nhất Việt Nam,
                             P&T SHOP luôn hướng đến những giá trị cốt lõi cho khách hàng bao gồm:
                        </p>
                        <h3>
                            <strong>1. Trải nghiệm hoàn hảo</strong>
                        </h3>
                        <P>
                            Thông qua việc tư vấn, hỗ trợ khách hàng tận tâm và nhanh nhất có thể. 
                        </P>
                        <h3>
                            <strong>2. Sản phẩm chính hãng</strong>
                        </h3>
                        <P>
                            Sản phẩm được P&T SHOP mua trực tiếp từ công ty và các trang web
                             uy tín của Nike, adidas,
                             Puma v.v… nên các bạn có thể yên tâm về nguồn gốc sản phẩm. 
                        </P>
                        <h3>
                            <strong>3. Chế độ dịch vụ</strong>
                        </h3>
                        <P>
                            Những sản phẩm giày đá banh tại P&T SHOP được bảo hành 3 tháng,
                             hỗ trợ trả góp 0% lãi suất qua Fundiin, Freeship toàn quốc
                             khi khách hàng thanh toán chuyển khoản trước, tặng vớ & balo khi mua giày.
                        </P>
                        <h2>
                            <strong>II/ Sứ mệnh</strong>
                        </h2>
                        <p>
                            Đặt khách hàng làm trung tâm. Đáp ứng hiệu quả nhất mọi nhu cầu vì lợi ích khách hàng và chất lượng dịch vụ
Đặt nhân sự là yếu tố quyết định và là nền tảng của sự phát triển. Không ngừng đào tạo và xây dựng đội ngũ kế thừa.
Chia sẽ các quyền lợi với các thành viên trong công ty, cùng xây dựng và phát triển vì mục tiêu chung của công ty.
                        </p>
                        <h2>
                            <strong>III/ Cửa hàng của P&T SHOP</strong>
                        </h2>
                        <p>
                            <b>P&T SHOP Store I: Ngu Hanh Son,Da Nang | ĐT: 0123456789</b>
                            <br>
                            <b>P&T SHOP Store II: Ngu Hanh Son,Da Nang | ĐT: 0123456789</b>
                            <br>
                            Hoạt động từ 9h tới 21h hàng ngày và cả 7 ngày trong tuần. Rất vui được đón tiếp các bạn.
                            
                            <br>
                            Xin cảm ơn các bạn đã tin tưởng và ủng hộ P&T SHOP.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <!-- footer -->
   <jsp:include page="footer.jsp"></jsp:include>
  
  <!-- end footer -->
</body>
<script src="./assets/js/main.js"></script>
</html>