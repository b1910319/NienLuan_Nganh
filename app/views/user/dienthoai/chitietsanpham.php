<div class="container mb-4">
  <div class="horizontal">
    <?php
      foreach($data['sanpham_ma'] as $key => $sp){
        ?>
          <div class="verticals ten offset-by-one">
            <ol class="breadcrumb breadcrumb-fill2 style2">
              <li><a href="<?php echo BASE_URL ?>index/index"><i class="fa fa-home"></i></a></li>
              <li><a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/sanpham/8"><?php echo $sp['ten_dm'] ?></a></li>
              <li><a href=""><?php echo $sp['ten_th'] ?></a></li>
            </ol>
          </div>
        <?php
      }
    ?>
  </div>
  <div class="chitiet_sanpham_title">
    <?php
      foreach($data['sanpham_ma'] as $key => $sp){
        ?>
          <h3 class="fw-bold">Điện thoại: <?php echo $sp['ten_sp'] ?></h3>
        <?php
      }
    ?>
  </div>
  <div class="row mt-3">
    <div class="col-7">
      <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
          <?php
            foreach($data['hinh_limit1'] as $key => $h){
              ?>
                <div class="carousel-item active" data-bs-interval="1000">
                  <img src="<?php echo BASE_URL ?>public/uploads/hinh_chitiet/<?php echo $h['hinh'] ?>" class="d-block w-100" alt="...">
                </div>
              <?php
            }
          ?>
          <?php
            foreach($data['hinh_ma'] as $key => $h){
              ?>
                <div class="carousel-item" data-bs-interval="2000">
                  <img src="<?php echo BASE_URL ?>public/uploads/hinh_chitiet/<?php echo $h['hinh'] ?>" class="d-block w-100" alt="...">
                </div>
              <?php
            }
          ?>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <div class="row mt-4">
        <div class="col-6">
          <div class="row">
            <div class="col-1">
              <img src="<?php echo BASE_URL ?>public/img/chitiet_sanpham/1.jpg" class="d-block">
            </div>
            <div class="col-11">
              <p class="ps-4">Hư gì đổi nấy <b>12</b> tháng tại 3192 siêu thị toàn quốc (miễn phí tháng đầu)</p>
            </div>
          </div>
          <div class="row">
            <div class="col-1">
              <img src="<?php echo BASE_URL ?>public/img/chitiet_sanpham/2.jpg" class="d-block">
            </div>
            <div class="col-11">
              <?php
                foreach($data['sanpham_ma'] as $key => $sp){
                  ?>
                    <p class="ps-4">Bộ sản phẩm gồm: <?php echo $sp['bo_sanpham'] ?></p>
                  <?php
                }
              ?>
            </div>
          </div>
        </div>
        <div class="col-6">
          <div class="row">
            <div class="col-1">
              <img src="<?php echo BASE_URL ?>public/img/chitiet_sanpham/3.jpg" class="d-block">
            </div>
            <div class="col-11">
              <p class="ps-4">Bảo hành chính hãng điện thoại 1 năm tại các trung tâm bảo hành hãng </p>
            </div>
          </div>
        </div>
      </div>
      <?php
        foreach($data['sanpham_ma'] as $key => $sp){
          ?>
            <div>
              <img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinhchitiet_sp'] ?>" alt="" class="d-block w-100">
            </div>
          <?php
        }
      ?>
    </div>
    <div class="col-5" style="border-left: 2px solid #c7c7c7;">
      <?php 
        foreach ($data['sanpham_ma'] as $key => $sp){
          ?>
            <div class="chitiet_sanpham_gia">
              <p><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></p>
            </div>
            <button type="button" class="btn btn-light btn_tragop">Trả góp 0%</button>
            <button type="button" class="btn btn-success">Mới</button>
            <div class="thongso_kythuat">
              <h2 class="py-3 text-center">Thông số kỹ thuật</h2>
              <div class="row py-5 justify-content-center">
                <div class="col-md-12">
                  <div class="scrollspy-example" data-bs-spy="scroll" data-bs-target="#lex" id="work" data-offset="20"
                    style="height: 350px; overflow: auto;">
                    <div class="alert alert-dark text-center" role="alert" style="font-size: 18px; font-weight: bold;">
                      Cấu hình Điện thoại: <?php echo $sp['ten_sp'] ?>
                    </div>
                    <p>
                    <table class="table table-hover">
                      <tbody>
                        <tr>
                          <th scope="row">Màn hình: </th>
                          <td><?php echo $sp['manhinh'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Hệ điều hành:</th>
                          <td><?php echo $sp['hedieuhanh'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Camera sau:</th>
                          <td><?php echo $sp['camera_sau'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Camera trước:</th>
                          <td><?php echo $sp['camera_truoc'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Chip:</th>
                          <td><?php echo $sp['chip'] ?></td>
                        </tr>

                        <tr>
                          <th scope="row">RAM:</th>
                          <td><?php echo $sp['ram'].'GB' ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Bộ nhớ trong:</th>
                          <td><?php echo $sp['rom'].'GB' ?></td>
                        </tr>
                        <tr>
                          <th scope="row">SIM:</th>
                          <td><?php echo $sp['sim'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Pin, Sạc:</th>
                          <td><?php echo $sp['pin'] ?></td>
                        </tr>
                      </tbody>
                    </table>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          <?php
        }
      ?>
      <div class="chonmau">
        <form action="">
          <div class="wrapper row">
            <?php
              $i=0;
              foreach ($data['mau_sanpham_ma'] as $key => $msp){
                $i++;
                ?>
                  <div class="col-3 mt-1">
                    <input type="radio" name="select" id="option-<?php echo $i ?>" >
                    <label for="option-<?php echo $i ?>" class="option option-<?php echo $i ?>">
                      <div class="dot"></div>
                      <span><?php echo $msp['ten_m'] ?></span>
                    </label>
                  </div>
                <?php
              }
            ?>
            <!-- <div class="col-3 mt-1">
              <input type="radio" name="select" id="option-1" checked>
              <label for="option-1" class="option option-1">
                <div class="dot"></div>
                <span>Đỏ</span>
              </label>
            </div>
            <div class="col-3 mt-1">
              <input type="radio" name="select" id="option-2">
              <label for="option-2" class="option option-2">
                <div class="dot"></div>
                <span>Xanh lá</span>
              </label>
            </div>
            <div class="col-3 mt-1">
              <input type="radio" name="select" id="option-3">
              <label for="option-3" class="option option-3">
                <div class="dot"></div>
                <span>Trắng</span>
              </label>
            </div> -->
          </div>
          <div class="d-grid gap-2 btn_themgiohang">
            <button class="btn btn-light" type="button">Thêm vào giỏ hàng</button>
          </div>
        </form>
      </div>
      <div class="h_congnghe_item pt-3 pb-3 ps-3">
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="./img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <p class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel Core i5 Gen 12</p>
              <span class="d-inline-block text-truncate" style="max-width: 250px;">
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
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="./img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <p class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel Core i5 Gen 12</p>
              <span class="d-inline-block text-truncate" style="max-width: 250px;">
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
        <a href="" style="text-decoration: none;" class="text-dark">
          <div class="row">
            <div class="col-3">
              <img src="./img/24h_congnghe/24h_congnghe_1.jpg" class="d-block w-100">
            </div>
            <div class="col-9">
              <p class="fw-bold">Trên tay ASUS ZenBook 14 OLED UX3402: Thiết kế thời thượng, Intel Core i5 Gen 12</p>
              <span class="d-inline-block text-truncate" style="max-width: 250px;">
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
  <div class="thongtin_sanpham">
    <div class="">
      <h2 class="py-3 text-center">Thông tin sản phẩm</h2>
      <div class="row py-5 justify-content-center">
        <div class="col-md-12">
          <?php
            foreach($data['sanpham_ma'] as $key => $sp){
              ?>
                <div class="scrollspy-example" data-bs-spy="scroll" data-bs-target="#lex" id="work" data-offset="20" style="height: 400px; overflow: auto;">
                  <p>
                    <?php echo $sp['thongtin_sp'] ?>
                  </p>
                </div>
              <?php
            }
          ?>
        </div>
      </div>
    </div>
  </div>
  <div class="row sanpham_tuongtu">
    <h3 class="pb-2">Sản phẩm tương tự</h3>
    <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
      <a href="">
        <img src="./img/sanpham/ss_a33.png" class="d-block w-100">
      </a>
      <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
      <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
    </div>
    <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
      <a href="">
        <img src="./img/sanpham/ss_a33.png" class="d-block w-100">
      </a>
      <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
      <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
    </div>
    <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
      <a href="">
        <img src="./img/sanpham/ss_a33.png" class="d-block w-100">
      </a>
      <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
      <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
    </div>
  </div>

</div>