 <main class="ps-main">
      <div class="ps-blog-grid pt-80 pb-80">
        <div class="ps-container">
          <div class="row">
              <?php
              foreach ($rs_detail_blog as $key => $value) {
              ?>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
                  <div class="ps-post--detail">
                    <div class="ps-post__header">
                      <h3 class="ps-post__title"><?php echo $value['post_name'] ?></h3>
                        <i class="fa fa-clock-o"></i> -<span class="ml-5"><?php echo $value['dateTime'] ?></span>
                    </div>
                    <div class="ps-post__content">
                        <?php echo $value['content'] ?>
                    </div>
                    <div class="ps-post__footer">
                      <p class="ps-post__tags"><i class="fa fa-tags"></i><a href="blog-list.html">Man shoe</a>,<a href="blog-list.html"> Woman</a>,<a href="blog-list.html"> Nike</a></p>
                      <div class="ps-post__actions"><span><i class="fa fa-comments"></i> 23 Comments</span><span><i class="fa fa-heart"></i>  likes</span>
                        <div class="ps-post__social"><i class="fa fa-share-alt"></i><a href="#">Share</a>
                          <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="ps-author">
                    <div class="ps-author__thumbnail"><img src="../../publics/images/user/1.jpg" alt=""></div>
                    <div class="ps-author__content">
                      <header>
                        <h4>MARK GREY</h4>
                        <p>WEB DESIGNER</p>
                      </header>
                      <p>The development of the mass spectrometer allowed the mass of atoms to be measured with increased accuracy. The device uses the launch and continued operation of the Hubble space telescope probably.</p>
                    </div>
                  </div>
                  <div class="ps-comments">
                    <h3>Comment(4)</h3>
                    <div class="ps-comment">
                      <div class="ps-comment__thumbnail"><img src="../../publics/images/user/2.jpg" alt=""></div>
                      <div class="ps-comment__content">
                        <header>
                          <h4>MARK GREY <span>(15 minutes ago)</span></h4><a href="#">Reply<i class="ps-icon-arrow-left"></i></a>
                        </header>
                        <p>The development of the mass spectrometer allowed the mass of atoms to be measured with increased accuracy. The device uses the launch and continued operation of the Hubble space telescope probably.</p>
                      </div>
                    </div>
                    <div class="ps-comment ps-comment--reply">
                      <div class="ps-comment__thumbnail"><img src="../../publics/images/user/3.jpg" alt=""></div>
                      <div class="ps-comment__content">
                        <header>
                          <h4>MARK GREY <span>(3 hours ago)</span></h4><a href="#">Reply<i class="ps-icon-arrow-left"></i></a>
                        </header>
                        <p>The development of the mass spectrometer allowed the mass of atoms to be measured with increased accuracy. The device uses  continue ace explore.</p>
                      </div>
                    </div>
                    <div class="ps-comment">
                      <div class="ps-comment__thumbnail"><img src="../../publics/images/user/4.jpg" alt=""></div>
                      <div class="ps-comment__content">
                        <header>
                          <h4>MARK GREY <span>(1 day ago)</span></h4><a href="#">Reply<i class="ps-icon-arrow-left"></i></a>
                        </header>
                        <p>The development of the mass spectrometer allowed the mass of atoms to be measured with increased accuracy. The device uses the launch and continued operation of the Hubble space telescope probably.</p>
                      </div>
                    </div>
                  </div>
                  <form class="ps-form--comment" action="do_action" method="post">
                    <h3>LEAVE A COMMENT</h3>
                    <div class="row">
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                            <div class="form-group">
                              <input class="form-control" type="text" placeholder="Your Name">
                            </div>
                          </div>
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                            <div class="form-group">
                              <input class="form-control" type="email" placeholder="E-mail">
                            </div>
                          </div>
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                            <div class="form-group">
                              <input class="form-control" type="text" placeholder="Subject">
                            </div>
                          </div>
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                            <div class="form-group">
                              <input class="form-control" type="text" placeholder="Phone Number">
                            </div>
                          </div>
                          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="form-group">
                              <textarea class="form-control" rows="6" placeholder="Text your message here..."></textarea>
                            </div>
                          </div>
                    </div>
                    <div class="form-group">
                      <button class="ps-btn ps-btn--sm ps-contact__submit">Send Message<i class="ps-icon-next"></i></button>
                    </div>
                  </form>
                </div>
                  <?php
              }
              ?>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                  <aside class="ps-widget--sidebar ps-widget--search">
                    <form class="ps-search--widget" action="" method="POST" role="form">
                      <input class="form-control" name="keys" required="" type="text" placeholder="Tìm bài viết...">
                        <button type="submit" name="sb_search"><i class="ps-icon-search"></i></button>
                    </form>
                  </aside>
                  <aside class="ps-widget--sidebar">
                      <div class="ps-widget__header">
                          <h3>BÀI VIẾT KHÁC</h3>
                      </div>
                      <?php
                      foreach ($rs_blog as $key => $value) {
                      ?>
                      <div class="ps-post mb-10">
                          <div class="ps-post__thumbnail"><img style="width: 400px; height: 200px;" src="admin/images/blog/<?php echo $value['post_avatar'] ?>" alt=""><a class="ps-post__overlay" href="index.php?page=blog-detail&id=<?php echo $value['id_post'] ?>"></a></div>
                          <div class="ps-post__content"><a class="ps-post__title" href="index.php?page=blog-detail&id=<?php echo $value['id_post'] ?>"><?php echo $value['post_name'] ?></a>
                              <p class="ps-post__meta"><i class="fa fa-clock-o"></i> -<span class="ml-5"><?php echo $value['dateTime'] ?></span></p>
                          </div>
                      </div>
                          <?php
                      }
                      ?>
                  </aside>
                    <aside class="ps-widget--sidebar">
                    <div class="ps-widget__header">
                        <h3 class="widget-title">Social Networks</h3>
                        <div class="textwidget custom-html-widget">
                            <a href="https://www.facebook.com/tu.taola.3/" target="_blank" rel="noopener noreferrer">
                                <img src="https://raw.githubusercontent.com/ngxson/storeData/master/email_icons/icons8-facebook-48.png" alt="Facebook">
                            </a>
                            &nbsp;&nbsp;
                            <a href="https://github.com/trantu0112" target="_blank" rel="noopener noreferrer">
                                <img src="https://raw.githubusercontent.com/ngxson/storeData/master/email_icons/icons8-github-48.png" alt="Github">
                            </a>
                            &nbsp;&nbsp;
                            <a href="https://www.instagram.com/tran.tu_zzz/" target="_blank" rel="noopener noreferrer">
                                <img style="width: 40px; height: 40px;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/768px-Instagram_icon.png" alt="LinkedIn">
                            </a>
                        </div>
                    </div>
                    </aside>
                </div>
          </div>
        </div>
      </div>
    </main>