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
  <link rel="stylesheet" href="./assets/css/login.css">
  <link rel="stylesheet" href="./assets/css/account.css">
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
  .wrapper {
    margin-top:30px;
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
  <!-- content -->
  <div class="container">
    <div class="wrapper">
      <div class="row">
        <div class="col-4">
          <div class="heading">
            <img src="./assets/img/product/noavatar.png" alt="" class="heading-img">
            <span class="heading-name_acc">${user.name}</span>
          </div>
          <div class="menu-manager">
            <div class="my-profile" onclick="hienThiDoiThongTin()">
              <div class="my-profile-title active">
                <div class="my-profile-icon"><i class="fas fa-user"></i></div>
                <div class="my-profile-name">Hồ sơ của tôi</div>
              </div>
            </div>
            <div class="my-order">
              <div class="my-order-title">
                <div class="my-order-icon"><i class="fas fa-shopping-bag"></i></div>
                <div class="my-order-name">Đơn hàng của tôi</div>
              </div>
            </div>
            <div class="my-password" onclick="hienThiDoiMatKhau()">
              <div class="my-password-title">
                <div class="my-password-icon"><i class="fas fa-key"></i></div>
                <div class="my-password-name">Đổi mật khẩu</div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-8">
          <div class="detial__my-profile undisplay">
            <div class="heading-edit-account">
              <h2>Hồ sơ của tôi</h2>
              <div class="form-group">
                <label for="fullname" class="form-label">Tên đầy đủ</label>
                <input id="fullname" name="fullname" type="text" placeholder="VD: Quốc Trung" class="form-control"
                  value="Quốc Trung">
                <span class="form-message"></span>
              </div>
              <div class="form-group">
                <label for="email" class="form-label">Email</label>
                <input id="email" name="email" type="text" placeholder="VD: email@domain.com" class="form-control"
                  value="abc@gmail.com">
                <span class="form-message"></span>
              </div>
              <div class="form-group">
                <label for="email" class="form-label">Địa chỉ</label>
                <input id="email" name="email" type="text" placeholder="VD: 86/2/3 Bình Thạnh TP HCM" class="form-control"
                  value="86 Đinh Bộ Lĩnh Phường 26 Quận Bình Thạnh TP.HCM">
                <span class="form-message"></span>
              </div>
              <div class="form-group">
                <label for="sdt" class="form-label">Số điện thoại</label>
                <input id="sdt" name="sdt" type="number" placeholder="VD: 089" class="form-control" value="0912420530">
                <span class="form-message"></span>
              </div>
              <div class="form-group">
                <label for="avatar" class="form-label">Cập nhật avatar</label>
                <input id="avatar" name="avatar" type="file" class="form-control">
                <span class="form-message"></span>
              </div>
              <button class="form-submit">Lưu</button>
            </div>
          </div>
          <div class="detail__confirm-password undisplay">
            <div class="heading-edit-password">
              <h2>Đổi lại mật khẩu</h2>
            </div>
            <div class="form-group form-group-old-password">
              <div style="display:flex;justify-content: space-between;">
                <label for="password" class="form-label">Mật khẩu cũ</label>
                <span class="show-hide"><i class="fas fa-eye"></i></span>
              </div>
              <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
              <span class="form-message"></span>
            </div>
            <div class="form-group form-group-new-password">
              <div style="display:flex;justify-content: space-between;">
                <label for="password-new" class="form-label">Mật khẩu mới</label>
                <span class="show-hide-two"><i class="fas fa-eye fa-eye-2"></i></span>
              </div>
              <input id="password-new" name="password-new" type="password" placeholder="Nhập mật khẩu"
                class="form-control">
              <span class="form-message"></span>
            </div>
            <div class="form-group form-group-confirm-password">
              <div style="display:flex;justify-content: space-between;">
                <label for="password-confirm" class="form-label">Mật khẩu mới</label>
                <span class="show-hide-three"><i class="fas fa-eye fa-eye-3"></i></span>
              </div>
              <input id="password-confirm" name="password-confirm" type="password" placeholder="Nhập mật khẩu"
                class="form-control">
              <span class="form-message"></span>
            </div>
            <button class="form-submit">Lưu</button>
          </div>
          <div class="detail__my-order">
            <div class="heading-edit-password">
              <h2>Đơn hàng của bạn</h2>
            </div>
            <div class="detail__my-order-content">
              <form action="">
                <div class="my-order-heading">
                  <div class="row">
                    <div class="col-2">MĐH</div>
                    <div class="col-3">Ngày</div>
                    <div class="col-3">Tổng tiền</div>
                    <div class="col-2">Trạng thái</div>
                    <div class="col-2">Chi tiết</div>
                  </div>
                </div>
                <div class="my-order-body">
                  <div class="row bd-bottom">
                    <div class="col-2">#1</div>
                    <div class="col-3">05-06-2021</div>
                    <div class="col-3">3.000.000 VNĐ</div>
                    <div class="col-2">
                      <span class="btn-stt blue">Đang xác nhận</span>
                    </div>
                    <div class="col-2">
                      <a href="" data-toggle="modal" data-target="#myModal">Xem</a>
                    </div>
                  </div>
                  <div class="row bd-bottom">
                    <div class="col-2">#2</div>
                    <div class="col-3">05-06-2021</div>
                    <div class="col-3">3.000.000 VNĐ</div>
                    <div class="col-2">
                      <span class="btn-stt green">Đã giao</span>
                    </div>
                    <div class="col-2">
                      <a href="">Xem</a>
                    </div>
                  </div>
                  <div class="row bd-bottom">
                    <div class="col-2">#3</div>
                    <div class="col-3">05-06-2021</div>
                    <div class="col-3">3.000.000 VNĐ</div>
                    <div class="col-2">
                      <span class="btn-stt red">Đã hủy</span>
                    </div>
                    <div class="col-2">
                      <a href="">Xem</a>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end content -->
  <!-- footer -->
  <jsp:include page="footer.jsp"></jsp:include>
  <div id="go-to-top">
    <a href="" class="btn-gototop"><i class="fas fa-arrow-up"></i></a>
  </div>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title">Chi tiết đơn hàng</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body" style="margin-top:10px">
          <div class="body-one">
            <div>Tổng tiền: 3.000.000 VNĐ</div>
            <div>Giá đã giảm: 1.000.000 VNĐ</div>
            <div>Phí ship: 30.000 VNĐ</div>
            <div>Thành Tiền: 3.000.000 VNĐ</div>
          </div>
          <form action="">
            <div class="my-order-heading">
              <div class="row" style="text-align:center">
                <div class="col-4">Sản phẩm</div>
                <div class="col-1">Số lượng</div>
                <div class="col-3">Giá</div>
                <div class="col-1">Giảm giá</div>
                <div class="col-3">Tổng</div>
              </div>
            </div>
            <div class="body-two">
              <div class="row" style="text-align:center; margin-top:10px">
                <div class="col-4" style="display: flex;">
                  <a href=""><img src="./assets/img/product/addidas1.jpg" alt=""
                      style="width: 50px;height: 50px;margin-right: 5px;"></a>
                  <h5>Adidas smith</h5>
                </div>
                <div class="col-1">3</div>
                <div class="col-3">1.000.000 VNĐ</div>
                <div class="col-1">20%</div>
                <div class="col-3">3.000.000 VNĐ</div>
              </div>
            </div>
            <div class="body-two">
              <div class="row" style="text-align:center; margin-top:10px">
                <div class="col-4" style="display: flex;">
                  <a href=""><img src="./assets/img/product/addidas1.jpg" alt=""
                      style="width: 50px;height: 50px;margin-right: 5px;"></a>
                  <h5>Adidas smith</h5>
                </div>
                <div class="col-1">3</div>
                <div class="col-3">1.000.000 VNĐ</div>
                <div class="col-1">20%</div>
                <div class="col-3">3.000.000 VNĐ</div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default red" data-dismiss="modal" style="color: white;">Close</button>
        </div>
      </div>

    </div>
  </div>
</body>
<script src="./assets/js/main.js"></script>
<script>
  const pass_field = document.querySelector('#password');
  const show_btn = document.querySelector('.fa-eye')
  show_btn.addEventListener("click", function () {
    if (pass_field.type === "password") {
      pass_field.type = "text";
      show_btn.classList.add("hide");
    } else {
      pass_field.type = "password";
      show_btn.classList.remove("hide");
    }
  });
</script>
<script>
  const pass_field2 = document.querySelector('#password-new');
  const show_btn2 = document.querySelector('.fa-eye-2')
  show_btn2.addEventListener("click", function () {
    if (pass_field2.type === "password") {
      pass_field2.type = "text";
      show_btn2.classList.add("hide");
    } else {
      pass_field2.type = "password";
      show_btn2.classList.remove("hide");
    }
  });
</script>
<script>
  const pass_field3 = document.querySelector('#password-confirm');
  const show_btn3 = document.querySelector('.fa-eye-3')
  show_btn3.addEventListener("click", function () {
    if (pass_field3.type === "password") {
      pass_field3.type = "text";
      show_btn3.classList.add("hide");
    } else {
      pass_field3.type = "password";
      show_btn3.classList.remove("hide");
    }
  });
</script>
<script>
  function hienThiDoiMatKhau() {
    $(".detail__confirm-password").removeClass("undisplay");
    $(".detail__confirm-password").addClass("display");
    $(".my-password-title").addClass("active");
    $(".my-profile-title").removeClass("active");
    $(".detial__my-profile").addClass("undisplay");
    $(".detial__my-profile").removeClass("display");
  }
  function hienThiDoiThongTin() {
    $(".detial__my-profile").removeClass("undisplay");
    $(".detial__my-profile").addClass("display");
    $(".my-profile-title").addClass("active");
    $(".my-password-title").removeClass("active");
    $(".detail__confirm-password").addClass("undisplay");
    $(".detail__confirm-password").removeClass("display");
  }
</script>

</html>
