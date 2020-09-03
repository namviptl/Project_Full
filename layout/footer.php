<div class="ps-footer bg--cover" data-background="../publics/images/background/parallax.jpg">
  <div class="ps-footer__content">
    <div class="ps-container">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
          <aside class="ps-widget--footer ps-widget--info">
            <header><a class="ps-logo" href="index.php"><h1 class="logo-ntn" style="font-size: 42px;position: relative;top: 0;right: 0;">N T N</h1></a>
              <h3 class="ps-widget__title">Địa chỉ</h3>
            </header>
            <footer>
              <p><strong>Số 1, Đường Lĩnh Nam, Hoàng Mai, Hà Nội</strong></p>
              <p>Email: <a>ntnstore@gmail.com</a></p>
              <p>Số điện thoại: 0347173650</p>
            </footer>
          </aside>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
          <!-- <aside class="ps-widget--footer ps-widget--info second">
            <header>
              <h3 class="ps-widget__title">Address Office 2</h3>
            </header>
            <footer>
              <p><strong>PO Box 16122 Collins  Victoria 3000 Australia</strong></p>
              <p>Email: <a href='mailto:support@store.com'>support@store.com</a></p>
              <p>Phone: +323 32434 5334</p>
              <p>Fax: ++323 32434 5333</p>
            </footer>
          </aside> -->
        </div>
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
          <!-- <aside class="ps-widget--footer ps-widget--link">
            <header>
              <h3 class="ps-widget__title">Find Our store</h3>
            </header>
            <footer>
              <ul class="ps-list--link">
                <li><a href="#">Coupon Code</a></li>
                <li><a href="#">SignUp For Email</a></li>
                <li><a href="#">Site Feedback</a></li>
                <li><a href="#">Careers</a></li>
              </ul>
            </footer>
          </aside> -->
        </div>
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
          <aside class="ps-widget--footer ps-widget--link">
            <header>
              <h3 class="ps-widget__title">Trợ giúp</h3>
            </header>
            <footer>
              <ul class="ps-list--line">
                <li>
                  <?php if (!isset($_SESSION['id_account'])) {
                  ?>
                  <a href="index.php?page=login">Thông tin tài khoản</a>
                  <?php
                  }else{
                  ?>
                  <a href="index.php?page=account-information">Thông tin tài khoản</a>
                  <?php
                  } ?>
                </li>
                 <li>
                  <?php if (!isset($_SESSION['id_account'])) {
                  ?>
                  <a href="index.php?page=login">Thông tin tài khoản</a>
                  <?php
                  }else{
                  ?>
                   <li><a href="index.php?page=view-order">Trạng thái đơn hàng</a></li>
                  <?php
                  } ?>
                </li>
               
              </ul>
            </footer>
          </aside>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
          <aside class="ps-widget--footer ps-widget--link">
            <header>
              <h3 class="ps-widget__title">Sản phẩm</h3>
            </header>
            <footer>
              <ul class="ps-list--line">
                <li><a href="index.php?page=adidas">Adidas</a></li>
                <li><a href="index.php?page=nike">Nike</a></li>
                <li><a href="index.php?page=vans">Vans</a></li>
              </ul>
            </footer>
          </aside>
        </div>
      </div>
    </div>
  </div>
  <div class="ps-footer__copyright">
    <div class="ps-container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
          <p>&copy; <a href="index.php">NTN</a>, Inc. All rights Resevered. Design by <a href="index.php"> NTN</a></p>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
          <ul class="ps-social">
            <li><a href="https://www.facebook.com/Gi%C3%A0y-NTN-103765321445046/" target="blank"><i class="fa fa-facebook"></i></a></li>
            <li><a><i class="fa fa-google-plus"></i></a></li>
            <li><a target="blank"><i class="fa fa-twitter"></i></a></li>
            <li><a target="blank"><i class="fa fa-instagram"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="zalo-chat-widget" data-oaid="3517336795822052066" data-welcome-message="Chúng tôi bán các loại giày Nike, Adidas, Jordan Authentic. Rất vui khi được hỗ trợ bạn!" data-autopopup="0" data-width="350" data-height="420"></div>