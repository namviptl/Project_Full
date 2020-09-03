<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="../publics/images/favicon.png" rel="icon">
    <meta name="author" content="Nghia Minh Luong">
    <meta name="keywords" content="Default Description">
    <meta name="description" content="Default keyword">
    <title>login</title>
    <!-- Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../plugins/ps-icon/style.css">
    <!-- CSS Library-->
    <link rel="stylesheet" href="../plugins/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../plugins/owl-carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="../plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
    <link rel="stylesheet" href="../plugins/slick/slick/slick.css">
    <link rel="stylesheet" href="../plugins/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="../plugins/Magnific-Popup/dist/magnific-popup.css">
    <link rel="stylesheet" href="../plugins/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="../plugins/revolution/css/settings.css">
    <link rel="stylesheet" href="../plugins/revolution/css/layers.css">
    <link rel="stylesheet" href="../plugins/revolution/css/navigation.css">
    <!-- Custom-->
    <link rel="stylesheet" href="../publics/css/style.css">
</head>
  <body class="ps-loading">
    <div class="header--sidebar"></div>
    <header class="header">
          <?php include_once '../layout/header-top.php'; ?>

          <?php include_once '../layout/nav.php'; ?>
    </header>

          <?php include_once '../layout/header-services.php'; ?>
    <main class="ps-main">

        <div class="ps-section__header mb-50">        
            <form class="ps-contact__form" action="do_action" method="post">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 "></div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ">
                        <h2 class="ps-section__title">- Đăng nhập hệ thống</h2>
                        <div class="form-group">
                            <label>Tài khoản <sub>*</sub></label>
                            <input class="form-control" type="text" placeholder="">
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu <sub>*</sub></label>
                            <input class="form-control" type="email" placeholder="">
                        </div>
                        <div class="form-group">
                            <button class="ps-btn">Đăng nhập<i class="ps-icon-next"></i></button>
                            <h4>Nếu bạn chưa có tài khoản? <a href="register.php" style="color: red;">Đăng ký</a></h4>     
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 "></div>

                </div>
            </form>
        </div>

    </main>

    <?php include_once '../layout/footer.php'; ?>

        <!-- JS Library-->
    <script type="text/javascript" src="../plugins/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="../plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
    <script type="text/javascript" src="../plugins/owl-carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="../plugins/gmap3.min.js"></script>
    <script type="text/javascript" src="../plugins/imagesloaded.pkgd.js"></script>
    <script type="text/javascript" src="../plugins/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="../plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="../plugins/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="../plugins/slick/slick/slick.min.js"></script>
    <script type="text/javascript" src="../plugins/elevatezoom/jquery.elevatezoom.js"></script>
    <script type="text/javascript" src="../plugins/Magnific-Popup/dist/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="../plugins/jquery-ui/jquery-ui.min.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx39JFH5nhxze1ZydH-Kl8xXM3OK4fvcg&amp;region=GB"></script>
    <script type="text/javascript" src="../plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="../plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="../plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="../plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="../plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="../plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="../plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="../plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<!-- Custom scripts-->
<script src="https://sp.zalo.me/plugins/sdk.js"></script>
<script type="text/javascript" src="../publics/js/main.js"></script>
  </body>
</html>