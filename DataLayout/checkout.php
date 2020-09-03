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
    <title>checkout</title>
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
      <div class="ps-checkout pt-80 pb-80">
        <div class="ps-container">
          <form class="ps-checkout__form" action="do_action" method="post">
            <div class="row">
                  <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 ">
                    <div class="ps-checkout__billing">
                      <h3>Billing Detail</h3>
                            <div class="form-group form-group--inline">
                              <label>First Name<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Last Name<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Company Name<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Email Address<span>*</span>
                              </label>
                              <input class="form-control" type="email">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Company Name<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Phone<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Address<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                      <div class="form-group">
                        <div class="ps-checkbox">
                          <input class="form-control" type="checkbox" id="cb01">
                          <label for="cb01">Create an account?</label>
                        </div>
                      </div>
                      <h3 class="mt-40"> Addition information</h3>
                      <div class="form-group form-group--inline textarea">
                        <label>Order Notes</label>
                        <textarea class="form-control" rows="5" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="ps-checkout__order">
                      <header>
                        <h3>Your Order</h3>
                      </header>
                      <div class="content">
                        <table class="table ps-checkout__products">
                          <thead>
                            <tr>
                              <th class="text-uppercase">Product</th>
                              <th class="text-uppercase">Total</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>HABITANT x1</td>
                              <td>$300.00</td>
                            </tr>
                            <tr>
                              <td>Card Subtitle</td>
                              <td>$300.00</td>
                            </tr>
                            <tr>
                              <td>Order Total</td>
                              <td>$300.00</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <footer>
                        <h3>Payment Method</h3>
                        <div class="form-group cheque">
                          <div class="ps-radio">
                            <input class="form-control" type="radio" id="rdo01" name="payment" checked>
                            <label for="rdo01">Cheque Payment</label>
                            <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                          </div>
                        </div>
                        <div class="form-group paypal">
                          <div class="ps-radio ps-radio--inline">
                            <input class="form-control" type="radio" name="payment" id="rdo02">
                            <label for="rdo02">Paypal</label>
                          </div>
                          <ul class="ps-payment-method">
                            <li><a href="#"><img src="../publics/images/payment/1.png" alt=""></a></li>
                            <li><a href="#"><img src="../publics/images/payment/2.png" alt=""></a></li>
                            <li><a href="#"><img src="../publics/images/payment/3.png" alt=""></a></li>
                          </ul>
                          <button class="ps-btn ps-btn--fullwidth">Place Order<i class="ps-icon-next"></i></button>
                        </div>
                      </footer>
                    </div>
                    <div class="ps-shipping">
                      <h3>FREE SHIPPING</h3>
                      <p>YOUR ORDER QUALIFIES FOR FREE SHIPPING.<br> <a href="#"> Singup </a> for free shipping on every order, every time.</p>
                    </div>
                  </div>
            </div>
          </form>
        </div>
      </div>
          <?php include_once '../layout/footer.php'; ?>
    </main>
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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx39JFH5nhxze1ZydH-Kl8xXM3OK4fvcg&amp;region=GB"></script><script type="text/javascript" src="./plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
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