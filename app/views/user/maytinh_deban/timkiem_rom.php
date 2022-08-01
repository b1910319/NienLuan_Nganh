<div class="list_sanpham mt-4 container">
  <?php
    if($data['sanpham_ma_dm_rom']){
      $i=0;
      foreach ($data['sanpham_ma_dm_rom'] as $key => $sp){
        $i++;
      }
      ?>
        <p>
          Có <b><?php echo $i ?></b> sản phẩm BỘ NHỚ TRONG <b><?php echo  $sp['rom'].' GB' ?></b> đuợc tìm thấy
        </p>
      <?php
    }else{
      echo 'Kết quả tìm kiếm hiện không tồn tại';
    }
  ?>
  <div class="sanpham mb-3" style="border-top: 2px solid #c7c7c7;">
    <div class="row">
      <?php
        foreach ($data['sanpham_ma_dm_rom'] as $key => $sp){
          ?>
            <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
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
</div>