<div class="list_sanpham mt-4 container">
  <!-- đồng hồ độc quyền -->
  <div class="sanpham mb-3" style="border-top: 2px solid #c7c7c7;">
    <div class="row mt-3 mb-4 dongho_docquyen">
      <div class="col-2">
        <img src="<?php echo BASE_URL ?>public/img/banner/banner_dongho_docquyen.jpg" class="d-block w-100">
      </div>
      <div class="col-10 mt-4">
        <div class="col-xs-12 col-sm-12 col-md-12 mt-4">
          <div class="carousel carousel-showmanymoveone slide" id="itemslider">
            <div class="carousel-inner">

              <?php
                foreach ($data['sanpham_ma_dm_limit1'] as $key => $sp){
                  ?>
                    <div class="item active">
                      <div class="col-xs-12 col-sm-6 col-md-2">
                        <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                            class="img-responsive center-block"></a>
                        <h4 class="text-center fw-bold fs-5" style="color:white ;"><?php echo $sp['ten_sp'] ?></h4>
                        <h5 class="text-center gia fs-4"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                      </div>
                    </div>
                  <?php
                }
                foreach ($data['sanpham_ma_dm_limit'] as $key => $sp){
                  ?>
                    <div class="item">
                      <div class="col-xs-12 col-sm-6 col-md-2">
                        <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                            class="img-responsive center-block"></a>
                        <h4 class="text-center fw-bold fs-5" style="color:white ;"><?php echo $sp['ten_sp'] ?></h4>
                        <h5 class="text-center gia fs-4"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                      </div>
                    </div>
                  <?php
                }
              ?>
            </div>
            <!-- left,right control -->
            <div id="slider-control">
              <a class="left carousel-control" href="#itemslider" data-slide="prev"><i
                  class="fas fa-angle-left icon_arrow"></i></a>
              <a class="right carousel-control" href="#itemslider" data-slide="next"><i
                  class="fas fa-angle-right icon_arrow"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--  -->
  <!-- đồng hồ phái đẹp -->
  <div class="sanpham mb-3" style="border-top: 2px solid #c7c7c7;">
    <div class="row mt-3 mb-4 dongho_phaidep">
      <div class="col-2">
        <img src="<?php echo BASE_URL ?>public/img/banner/banner_dongho_phaidep.png" class="d-block w-100">
      </div>
      <div class="col-10 mt-4">
        <div class="col-xs-12 col-sm-12 col-md-12 mt-4">
          <div class="carousel carousel-showmanymoveone slide" id="itemslider1">
            <div class="carousel-inner">

            <?php
              foreach ($data['sanpham_nu_limit1'] as $key => $sp){
                ?>
                  <div class="item active">
                    <div class="col-xs-12 col-sm-6 col-md-2">
                      <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                          class="img-responsive center-block"></a>
                      <h4 class="text-center fw-bold fs-5"><?php echo $sp['ten_sp'] ?></h4>
                      <h5 class="text-center gia fs-4"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                    </div>
                  </div>
                <?php
              }
              foreach ($data['sanpham_nu_limit'] as $key => $sp){
                ?>
                  <div class="item">
                    <div class="col-xs-12 col-sm-6 col-md-2">
                      <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                          class="img-responsive center-block"></a>
                      <h4 class="text-center fw-bold fs-5"><?php echo $sp['ten_sp'] ?></h4>
                      <h5 class="text-center gia fs-4"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                    </div>
                  </div>
                <?php
              }
            ?>

            </div>
            <!-- left,right control -->
            <div id="slider-control">
              <a class="left carousel-control" href="#itemslider1" data-slide="prev"><i
                  class="fas fa-angle-left icon_arrow"></i></a>
              <a class="right carousel-control" href="#itemslider1" data-slide="next"><i
                  class="fas fa-angle-right icon_arrow"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--  -->
  <!-- đồng hồ phái mạnh -->
  <div class="sanpham mb-3" style="border-top: 2px solid #c7c7c7;">
    <div class="row mt-3 mb-4 dongho_phaimanh">
      <div class="col-2">
        <img src="<?php echo BASE_URL ?>public/img/banner/banner_dongho_phaimanh.png" class="d-block w-100">
      </div>
      <div class="col-10 mt-4">
        <div class="col-xs-12 col-sm-12 col-md-12 mt-4">
          <div class="carousel carousel-showmanymoveone slide" id="itemslider2">
            <div class="carousel-inner">

            <?php
              foreach ($data['sanpham_nam_limit1'] as $key => $sp){
                ?>
                  <div class="item active">
                    <div class="col-xs-12 col-sm-6 col-md-2">
                      <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                          class="img-responsive center-block"></a>
                      <h4 class="text-center fw-bold fs-5" style="color:white ;"><?php echo $sp['ten_sp'] ?></h4>
                      <h5 class="text-center gia fs-4 fw-bold" style="color: #FA2FB5;"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                    </div>
                  </div>
                <?php
              }
              foreach ($data['sanpham_nam_limit'] as $key => $sp){
                ?>
                  <div class="item">
                    <div class="col-xs-12 col-sm-6 col-md-2">
                      <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                          class="img-responsive center-block"></a>
                      <h4 class="text-center fw-bold fs-5" style="color:white ;"><?php echo $sp['ten_sp'] ?></h4>
                      <h5 class="text-center gia fs-4 fw-bold" style="color: #FA2FB5;"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                    </div>
                  </div>
                <?php
              }
            ?>

            </div>
            <!-- left,right control -->
            <div id="slider-control">
              <a class="left carousel-control" href="#itemslider2" data-slide="prev"><i
                  class="fas fa-angle-left icon_arrow"></i></a>
              <a class="right carousel-control" href="#itemslider2" data-slide="next"><i
                  class="fas fa-angle-right icon_arrow"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--  -->
  <!-- đồng hồ trẻ em -->
  <div class="sanpham mb-3" style="border-top: 2px solid #c7c7c7;">
    <div class="row mt-3 mb-4 dongho_treem">
      <div class="col-2">
        <img src="<?php echo BASE_URL ?>public/img/banner/banner_dongho_treem.jpg" class="d-block w-100">
      </div>
      <div class="col-10 mt-4">
        <div class="col-xs-12 col-sm-12 col-md-12 mt-4">
          <div class="carousel carousel-showmanymoveone slide" id="itemslider3">
            <div class="carousel-inner">

              <?php
                foreach ($data['sanpham_treem_limit1'] as $key => $sp){
                  ?>
                    <div class="item active">
                      <div class="col-xs-12 col-sm-6 col-md-2">
                        <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                            class="img-responsive center-block"></a>
                        <h4 class="text-center fw-bold fs-5" style="color:white ;"><?php echo $sp['ten_sp'] ?></h4>
                        <h5 class="text-center gia fs-4"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                      </div>
                    </div>
                  <?php
                }
                foreach ($data['sanpham_treem_limit'] as $key => $sp){
                  ?>
                    <div class="item">
                      <div class="col-xs-12 col-sm-6 col-md-2">
                        <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                            class="img-responsive center-block"></a>
                        <h4 class="text-center fw-bold fs-5" style="color:white ;"><?php echo $sp['ten_sp'] ?></h4>
                        <h5 class="text-center gia fs-4"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                      </div>
                    </div>
                  <?php
                }
              ?>

            </div>
            <!-- left,right control -->
            <div id="slider-control">
              <a class="left carousel-control" href="#itemslider3" data-slide="prev"><i
                  class="fas fa-angle-left icon_arrow"></i></a>
              <a class="right carousel-control" href="#itemslider3" data-slide="next"><i
                  class="fas fa-angle-right icon_arrow"></i></a>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--  -->
  <!-- 24h công nghệ -->
  <div class="h_congnghe">
    <div class="h_congnghe_title">
      <button type="button" class="btn btn-danger mt-3 mb-4">
        <a href="" style="text-decoration: none">
          <div class="spinner-grow text-light" role="status">
            <span class="visually-hidden">Loading...</span>
          </div>
          <span style="font-weight:bold ; color: white; font-size: 20px;">24H CÔNG NGHỆ</span>
        </a>
      </button>
    </div>
    <div class="row">
      <div class="h_congnghe_item col-6 pt-3 pb-3">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="./img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
      <div class="h_congnghe_item col-6 pt-3 pb-3">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="./img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
      <div class="h_congnghe_item col-6 pt-3 pb-3">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="./img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
      <div class="h_congnghe_item col-6 pt-3 pb-3">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="./img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
      <div class="h_congnghe_item col-6 pt-3 pb-3">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="./img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
    </div>

  </div>


  <!--  -->

  <!-- script chạy slider sản phẩm -->
  <script type="text/javascript">
  $(document).ready(function() {
    $('#itemslider').carousel({
      interval: 3000
    });
    $('.carousel-showmanymoveone .item').each(function() {
      var itemToClone = $(this);
      for (var i = 1; i < 6; i++) {
        itemToClone = itemToClone.next();
        if (!itemToClone.length) {
          itemToClone = $(this).siblings(':first');
        }
        itemToClone.children(':first-child').clone()
          .addClass("cloneditem-" + (i))
          .appendTo($(this));
      }
    });
  });
  </script>
  <!--  -->
</div>