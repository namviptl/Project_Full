<main class="ps-main">
      <div class="ps-blog-grid pt-80 pb-80">
        <div class="ps-container">
          <div class="row">
              <?php
              foreach ($rs_blog as $key => $value) {
              ?>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                  <div class="ps-post mb-30">
                    <div class="ps-post__thumbnail"><img style="width: 450px; height: 300px;" src="publics/images/blog/<?php echo $value['post_avatar'] ?>" alt=""><a class="ps-post__overlay" href="index.php?page=blog-detail&id=<?php echo $value['id_post'] ?>"></a></div>
                    <div class="ps-post__content"><a class="ps-post__title" href="index.php?page=blog-detail&id=<?php echo $value['id_post'] ?>"><?php echo $value['post_name'] ?></a>
                      <p class="ps-post__meta"><i class="fa fa-clock-o"></i> -<span class="ml-5"><?php echo $value['dateTime'] ?></span></p>
                      <p><?php echo $value['description'] ?>…</p><a class="ps-morelink" href="index.php?page=blog-detail&id=<?php echo $value['id_post'] ?>">Chi tiết bài viết<i class="fa fa-long-arrow-right"></i></a>
                    </div>
                  </div>
                </div>
                  <?php
              }
              ?>
          </div>
          <div class="mt-30">
            <div class="ps-pagination">
              <ul class="pagination">
                <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">...</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </main>