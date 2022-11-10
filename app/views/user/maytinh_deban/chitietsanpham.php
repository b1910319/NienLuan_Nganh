<div class="container mb-4">
  <div class="horizontal">
    <?php
      foreach($data['sanpham_ma'] as $key => $sp){
        ?>
          <div class="verticals ten offset-by-one">
            <ol class="breadcrumb breadcrumb-fill2 style2">
              <li><a href="<?php echo BASE_URL ?>index/index"><i class="fa fa-home"></i></a></li>
              <li><a href="<?php echo BASE_URL ?><?php echo $sp['ghichu_dm'] ?>/sanpham/13"><?php echo $sp['ten_dm'] ?></a></li>
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
                    <p class="ps-4">Bộ bán hàng chuẩn: <?php echo $sp['bo_sanpham'] ?></p>
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
              <div class="alert alert-danger" role="alert" style="background-color:#FEE2E2 ; color: red; font-weight: bold; font-size: 20px;">
                <i class="fa-solid fa-circle-dollar-to-slot"></i> &ensp;
                <?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?>
                <span style="color: gray; text-decoration: line-through;"><?php echo number_format($sp['gia_sp']+200000, 0, ',', '.') . ' <sup>đ</sup>'  ?></span>
              </div>
            </div>
            <div class="mota">
              <p style="font-weight:bold ;">Sản phẩm có những màu: </p>
              <?php
                foreach ($data['mau_sanpham_ma'] as $key => $msp){
                  ?>
                    <button type="button" class="btn btn-success" style="background-color:#16511a ;">
                    <span style="border-radius: 50%; background-color: <?php echo $msp['mau'] ?>; color: <?php echo $msp['mau'] ?>;">... </span> &ensp;
                      <?php echo $msp['ten_m'] ?>
                    </button>
                  <?php
                }
              ?>
              <p class="mt-3" style="font-weight: bold;">
                Miễn phí giao hàng cho đơn hàng từ
                <button type="button" class="btn btn-danger">2.000.000 <sup>đ</sup></button>
              </p>
            </div>
            <div class="thongso_kythuat">
              <div class="row py-5 justify-content-center">
                <div class="col-md-12">
                  <div class="scrollspy-example" data-bs-spy="scroll" data-bs-target="#lex" id="work" data-offset="20"
                    style="height: 350px; overflow: auto;">
                    <div class="alert alert-info text-center" role="alert" style="font-size: 18px; font-weight: bold;">
                      Cấu hình Máy tính: <?php echo $sp['ten_sp'] ?>
                    </div>
                    <p>
                    <table class="table table-hover">
                      <tbody>
                        <tr>
                          <th scope="row">Công nghệ CPU </th>
                          <td><?php echo $sp['congnghe_cpu'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">RAM:</th>
                          <td><?php echo $sp['ram'].' GB' ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Ổ cứng:</th>
                          <td><?php echo 'SSD '.$sp['rom'].' GB' ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Màn hình: </th>
                          <td><?php echo $sp['manhinh'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Card màn hình:</th>
                          <td><?php echo $sp['card_manhinh'] ?></td>
                        </tr>

                        <tr>
                          <th scope="row">Cổng kết nối:</th>
                          <td><?php echo $sp['cong_ketnoi'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Hệ điều hành:</th>
                          <td><?php echo $sp['hedieuhanh'] ?></td>
                        </tr>
                        <tr>
                          <th scope="row">Kích thước:</th>
                          <td><?php echo $sp['kichthuoc'] ?></td>
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
      <?php
        foreach ($data['sanpham_ma'] as $key => $sp){
          ?>
            <div class="chonmau">
              <form action="<?php echo BASE_URL ?>giohang/giohang_insert" method="POST">
                <input type="hidden" value="1" name="soluong_dat">
                <input type="hidden" value="<?php echo $sp['ma_sp'] ?>" name="ma_sp">
                <input type="hidden" value="<?php echo $sp['soluong_sp'] ?>" name="soluong_sp">
                <div class="">
                  <div class="">
                      <!-- 	Select	 -->
                      <div class="select-control">
                        <span class="select-control__title">Màu của sản phẩm</span>
                        <select class="select" id="js-select" name="ma_m">
                          <?php
                            $i=0;
                            foreach ($data['mau_sanpham_ma'] as $key => $msp){
                              $i++;
                              ?>
                                <option class="select__item" value="<?php echo $msp['ma_m'] ?>"><?php echo $msp['ten_m'] ?></option>
                                
                              <?php
                            }
                          ?>
                        </select>
                      </div>
                  </div>
                </div>
                <div class="d-grid gap-2 btn_themgiohang">
                  <?php
                    if ($sp['soluong_sp'] > 0){
                      ?>
                        <button class="btn btn-light p-4" type="submit" style="background-color:#E51F22 ; color: white; font-size: 18px; font-weight: bold;">Thêm vào giỏ hàng</button>
                      <?php
                    }else{
                      ?>
                        <button type="button" class="btn btn-primary" disabled data-bs-toggle="button" autocomplete="off">Sản phẩm hết hàng</button>
                      <?php
                    }
                  ?>
                </div>
              </form>
            </div>
          <?php
        }
      ?>
      <div class="h_congnghe_item pt-3 pb-3 ps-3">
        <?php
          foreach ($data['tintuc'] as $key => $tt){
            ?>
              <div class="mt-3 mb-3">
                <a href="<?php echo BASE_URL ?>index/chitiet_tintuc/<?php echo $tt['ma_tt'] ?>" style="text-decoration: none;" class="text-dark">
                  <div class="row">
                    <div class="col-3">
                      <img src="<?php echo BASE_URL ?>public/uploads/tintuc/<?php echo $tt['hinh_tt'] ?>" class="d-block w-100">
                    </div>
                    <div class="col-9">
                      <p class="fw-bold"><?php echo $tt['ten_tt'] ?></p>
                    </div>
                  </div>
                </a>
              </div>
            <?php
          }
        ?>
      </div>
    </div>

  </div>
  <div class="thongtin_sanpham">
    <div class="">
      <!-- <h2 class="py-3 text-center">Thông tin sản phẩm</h2> -->
      <div class="alert alert-warning" role="alert" style="font-weight: bold; font-size: 20px; text-align: center; color: white; background-color: #E6A157;">
        THÔNG TIN SẢN PHẨM
      </div>
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
    <div class="alert alert-info" role="alert" style="text-align:center ; font-weight:bold ; font-size: 20px; color: #16511a;" >
      Sản phẩm tương tự
    </div>
    <?php
      foreach ($data['sanpham_tuongtu'] as $key => $sp){
        ?>
          <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5 img-hover-zoom img-hover-zoom--brightness">
            <a href="<?php echo BASE_URL ?>maytinhdeban/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>">
              <img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>" class="d-block w-100">
            </a>
            <p class="text-center mt-3 sanpham_item_title"><?php echo $sp['ten_sp'] ?></p>
            <div class="row tex-center ms-2">
            <?php
              $ma_sp = $sp['ma_sp'];
              $con = mysqli_connect('localhost', 'root', '', 'nienluan');
              $result = mysqli_query($con, "SELECT * FROM `mau_sanpham` join `sanpham` on mau_sanpham.ma_sp = sanpham.ma_sp join `mau` on mau_sanpham.ma_m = mau.ma_m WHERE sanpham.ma_sp = '$ma_sp'");
              while ($row = mysqli_fetch_assoc($result)) {
                  $arr[$row['ma_m']]['ten_m'] = $row['ten_m'];
                  $arr[$row['ma_m']]['mau'] = $row['mau'];
                  ?>
                    <div class="col-2">
                      <span  style="border-radius:100% ; background-color: <?php echo $row['mau'] ?> ; color: <?php echo $row['mau'] ?>;">....</span>
                    </div>
                  <?php
              }
            ?>
            </div>
            <p class="fw-bold text-center mt-2 sanpham_gia"><?php echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></p>
          </div>
        <?php
      }
    ?>
  </div>
</div>