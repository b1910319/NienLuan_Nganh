<div class=" main container mt-2">
  <div class="deal_ngon p-4">
    <div class="row">
      <div class="col-md-12">
        <h2>Deal ngon <b>mỗi ngày</b></h2>
      </div>
    </div>
    <div class="row mt-3 mb-4" >
      <div class="col-xs-12 col-sm-12 col-md-12 mt-4" >
        <div class="carousel carousel-showmanymoveone slide" id="itemslider">
          <div class="carousel-inner">
            <?php
              foreach ($data['sanpham_limit1'] as $key => $sp){
                ?>
                  <div class="item active">
                    <div class="col-xs-12 col-sm-6 col-md-2">
                      <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
                          class="img-responsive center-block"></a>
                      <h4 class="text-center fw-bold fs-5"><?php echo $sp['ten_sp'] ?></h4>
                      <h5 class="text-center gia fs-4"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></h5>
                    </div>
                  </div>
                <?php
              }
              foreach ($data['sanpham_limit'] as $key => $sp){
                ?>
                  <div class="item">
                    <div class="col-xs-12 col-sm-6 col-md-2">
                      <a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>"><img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>"
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
            <a class="left carousel-control" href="#itemslider" data-slide="prev"><i
                class="fas fa-angle-left icon_arrow"></i></a>
            <a class="right carousel-control" href="#itemslider" data-slide="next"><i
                class="fas fa-angle-right icon_arrow"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- điện thoại -->
  <div class="sanpham mb-3">
    <div class="row">
      <div class="col-md-12">
        <h2 class="gachchan"><b>Điện thoại</b></h2>
      </div>
    </div>
    <div class="row">
      <?php
        foreach ($data['sanpham_dt_limit'] as $key => $sp){
          ?>
            <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
              <a href="<?php echo BASE_URL ?>dienthoai/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>">
                <img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>" class="d-block w-100">
              </a>
              <p class="text-center mt-3 sanpham_item_title"><?php echo $sp['ten_sp'] ?></p>
              <p class="fw-bold text-center mt-2 sanpham_gia"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></p>
            </div>
          <?php
        }
      ?>
    </div>
    <div style=" text-align: center;">
      <a href="">
        <button type="button" class="btn btn-outline-success mt-5 btn_xemthem">Xem thêm</button>
      </a>
    </div>
  </div>
  <!--  -->
  <!-- danh mục nổi bật -->
  <div class="danhmuc_noibat">
    <div class="row">
      <div class="col-md-12 mb-4">
        <h2>danh mục <b>nổi bật</b></h2>
      </div>
    </div>
    <div class="row">
      <?php
        foreach ($data['danhmuc_sanpham'] as $key => $dm){
          ?>
      <div class="col-1 danhmuc_noibat_item mt-3"
        style="background-color:<?php echo $dm['mamau_dm'] ?> ; margin-right: 15px;">
        <p class="text-center mt-2 danhmuc_noibat_item_title"><?php echo $dm['ten_dm'] ?></p>
        <a href="<?php echo $dm['ghichu_dm'] ?>/sanpham">
          <img class="giua mb-1"
            src="<?php echo BASE_URL ?>public/uploads/danhmuc/<?php echo $dm['hinh_dm'] ?>"
            style="width:90% ;">
        </a>
      </div>
      <?php
        }
      ?>
    </div>
  </div>

  <!--  -->
  <!-- chuyên trang thương hiệu -->
  <div class="chuyentrang_thuonghieu">
    <div class="row">
      <div class="col-md-12 mb-4 mt-2">
        <h2 class="gachchan"><b>chuyên trang thương hiệu</b></h2>
      </div>
    </div>
    <div class="row mb-3">
      <?php
        foreach ($data['thuonghieu'] as $key => $th){
          ?>
            <div class="col-3">
              <a href="">
                <img src="<?php echo BASE_URL ?>public/uploads/thuonghieu/<?php echo $th['hinh_th'] ?>" class="d-block w-100"
                  style="border-radius:15px ;">
              </a>
            </div>
          <?php
        }
      ?>
      <!-- <div class="col-3">
        <a href="">
          <img src="app/views/user/img/logo/samsung.png" class="d-block w-100"
            style="border-radius:15px ;">
        </a>
      </div>
      <div class="col-3">
        <a href="">
          <img src="app/views/user/img/logo/asus.png" class="d-block w-100"
            style="border-radius:15px ;">
        </a>
      </div>
      <div class="col-3">
        <a href="">
          <img src="app/views/user/img/logo/apple.png" class="d-block w-100"
            style="border-radius:15px ;">
        </a>
      </div>
      <div class="col-3">
        <a href="">
          <img src="app/views/user/img/logo/xiaomi.png" class="d-block w-100"
            style="border-radius:15px ;">
        </a>
      </div> -->
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
      <div class="h_congnghe_item col-6 pt-3 pb-3 pe-4">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="app/views/user/img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel
                Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn
                tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một
                ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh
                mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy
                cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
      <div class="h_congnghe_item col-6 pt-3 pb-3 pe-4">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="app/views/user/img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel
                Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn
                tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một
                ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh
                mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy
                cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
      <div class="h_congnghe_item col-6 pt-3 pb-3 pe-4">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="app/views/user/img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel
                Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn
                tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một
                ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh
                mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy
                cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
      <div class="h_congnghe_item col-6 pt-3 pb-3 pe-4">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="app/views/user/img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel
                Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn
                tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một
                ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh
                mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy
                cùng nhau trên tay
                ASUS
                ZenBook 14 OLED UX3402 để tìm hiểu rõ hơn về sản phẩm này nhé.
              </span>
            </div>
          </div>
        </a>
      </div>
      <div class="h_congnghe_item col-6 pt-3 pb-3 pe-4">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="app/views/user/img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <h4 class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel
                Core i5 Gen 12</h4>
              <span class="d-inline-block text-truncate" style="max-width: 300px;">
                Để chào mừng dòng sản phẩm ZenBook bước qua một thập kỷ mới với nhiều sự thay đổi ấn
                tượng thì thời gian
                vừa
                qua, ASUS đã giới thiệu đến người dùng mẫu laptop ZenBook 14 OLED UX3402 sở hữu một
                ngoại hình gọn nhẹ,
                tinh
                tế cực kỳ phù hợp với phong cách của thế hệ trẻ Gen Z năng động cùng cấu hình mạnh
                mẽ đáp ứng hầu hết
                nhu
                cầu sử dụng. Vậy ASUS ZenBook 12 OLED đã được trang bị những gì hay ho đến vậy? Hãy
                cùng nhau trên tay
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
  <!-- script chạy deal ngon mỗi ngày -->
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