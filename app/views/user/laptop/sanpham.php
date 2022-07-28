<div class="list_sanpham mt-4 container">
  <div class="deal_soc mt-4" id="dealsoc">
    <h1>DEAL SỐC <b>GIẢM TỚI 10.000.000đ</b></h1>
    <div class="row mt-3 mb-4">
      <div class="col-xs-12 col-sm-12 col-md-12 mt-4">
        <div class="carousel carousel-showmanymoveone slide" id="itemslider">
          <!-- <div class="carousel-inner">

            <div class="item active">
              <div class="col-xs-12 col-sm-6 col-md-2">
                <a href="#"><img src="./img/sanpham/oppo_reno7.png" class="img-responsive center-block"></a>
                <h4 class="text-center text-light fw-bold" style="font-size: 15px ;">Oppo reno 7</h4>
                <h5 class="text-center">400.000 VND</h5>
              </div>
            </div>

            <div class="item">
              <div class="col-xs-12 col-sm-6 col-md-2">
                <a href="#"><img src="./img/sanpham/ss_a33.png" class="img-responsive center-block"></a>
                <h4 class="text-center text-light fw-bold" style="font-size: 15px ;">Samsung A33</h4>
                <h5 class="text-center">400.000 VND</h5>
              </div>
            </div>

            <div class="item">
              <div class="col-xs-12 col-sm-6 col-md-2">
                <a href="#"><img src="./img/sanpham/ss_s20.png" class="img-responsive center-block"></a>
                <h4 class="text-center text-light fw-bold" style="font-size: 15px ;">Samsung s20</h4>
                <h5 class="text-center">400.000 VND</h5>
              </div>
            </div>

            <div class="item">
              <div class="col-xs-12 col-sm-6 col-md-2">
                <a href="#"><img src="./img/sanpham/sac_duphong.png" class="img-responsive center-block"></a>
                <h4 class="text-center text-light fw-bold" style="font-size: 15px ;">CVETNA HALJINA</h4>
                <h5 class="text-center">600.000 VND</h5>
              </div>
            </div>

            <div class="item">
              <div class="col-xs-12 col-sm-6 col-md-2">
                <a href="#"><img src="./img/sanpham/ss_a32.png" class="img-responsive center-block"></a>
                <h4 class="text-center text-light fw-bold" style="font-size: 15px ;">MAJICA FOTO</h4>
                <h5 class="text-center">400.000 VND</h5>
              </div>
            </div>

            <div class="item">
              <div class="col-xs-12 col-sm-6 col-md-2">
                <a href="#"><img src="./img/sanpham/ip_13.png" class="img-responsive center-block"></a>
                <h4 class="text-center text-light fw-bold" style="font-size: 15px ;">MAJICA MAYORAL</h4>
                <h5 class="text-center">400.000 VND</h5>
              </div>
            </div>

          </div> -->
          <div class="carousel-inner">
            <?php
              foreach ($data['sanpham_deal1'] as $key => $sp){
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
              foreach ($data['sanpham_deal'] as $key => $sp){
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
            <a class="left carousel-control" href="#itemslider" data-slide="prev"><i
                class="fas fa-angle-left icon_arrow"></i></a>
            <a class="right carousel-control" href="#itemslider" data-slide="next"><i
                class="fas fa-angle-right icon_arrow"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="laptop_gaming mt-4" id="gaming">
    <img src="<?php echo BASE_URL ?>public/img/banner/banner_laptop_gaming.jpg" class="d-block w-100 mb-3">
    <div class="row mb-5">
      <?php
        foreach ($data['sanpham_gaming'] as $key => $sp){
          ?>
            <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
              <a href="<?php echo BASE_URL ?>dienthoai/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>">
                <img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>" class="d-block w-100">
              </a>
              <p class="text-center mt-3 sanpham_item_title" ><?php echo $sp['ten_sp'] ?></p>
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
  <div class="laptop_hoctap mt-4" id="hoctapvanphong">
    <img src="<?php echo BASE_URL ?>public/img/banner/banner_laptop_hoctap.jpg" class="d-block w-100 mb-3">
    <div class="row mb-5">
    <?php
        foreach ($data['sanpham_hoctap'] as $key => $sp){
          ?>
            <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
              <a href="<?php echo BASE_URL ?>dienthoai/chitiet_sanpham/<?php echo $sp['ma_sp'] ?>/<?php echo $sp['ma_th'] ?>/<?php echo $sp['ma_dm'] ?>">
                <img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>" class="d-block w-100">
              </a>
              <p class="text-center mt-3 sanpham_item_title" ><?php echo $sp['ten_sp'] ?></p>
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
  <div class="laptop_dohoa mt-4" id="dohoakythuat">
    <img src="<?php echo BASE_URL ?>public/img/banner/banner_laptop_dohoa.jpg" class="d-block w-100 mb-3">
    <div class="row mb-5">
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
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
          <img src="./img/sanpham/oppo_reno7.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center fw-b sanpham_item_titleold mt-3">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
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
  <div class="laptop_mong mt-4" id="mongnhe">
    <img src="<?php echo BASE_URL ?>public/img/banner/banner_laptop_mong.jpg" class="d-block w-100 mb-3">
    <div class="row mb-5">
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
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
          <img src="./img/sanpham/oppo_reno7.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center fw-b sanpham_item_titleold mt-3">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
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
  <div class="laptop_caocap mt-4" id="caocapsangtrong">
    <img src="<?php echo BASE_URL ?>public/img/banner/banner_laptop_caocap.jpg" class="d-block w-100 mb-3">
    <div class="row mb-5">
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
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
          <img src="./img/sanpham/oppo_reno7.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
        </a>
        <p class="text-center fw-b sanpham_item_titleold mt-3">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_s20.png" class="d-block w-100">
        </a>
        <p class="text-center mt-3 sanpham_item_title">Samsung s20</p>
        <p class="fw-bold text-center mt-2 sanpham_gia">20.000.000 d</p>
      </div>
      <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
        <a href="">
          <img src="./img/sanpham/ss_a32.png" class="d-block w-100">
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
  <!-- chuyên trang thương hiệu -->
  <div class="chuyentrang_thuonghieu">
    <div class="row">
      <div class="col-md-12 mb-4 mt-2">
        <h2 class="gachchan"><b>chuyên trang thương hiệu</b></h2>
      </div>
    </div>
    <div class="row mb-3">
      <div class="col-3">
        <a href="">
          <img src="./img/logo/samsung.png" class="d-block w-100" style="border-radius:15px ;">
        </a>
      </div>
      <div class="col-3">
        <a href="">
          <img src="./img/logo/asus.png" class="d-block w-100" style="border-radius:15px ;">
        </a>
      </div>
      <div class="col-3">
        <a href="">
          <img src="./img/logo/apple.png" class="d-block w-100" style="border-radius:15px ;">
        </a>
      </div>
      <div class="col-3">
        <a href="">
          <img src="./img/logo/xiaomi.png" class="d-block w-100" style="border-radius:15px ;">
        </a>
      </div>
    </div>
  </div>

  <!--  -->
</div>