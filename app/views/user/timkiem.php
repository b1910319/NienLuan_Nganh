<div class="timkiem container">
  <div class="sanpham mb-3">
    <div class="row">
      <div class="col-md-12">
        <h2 class="gachchan"><b>"<?php echo $_POST['tukhoa'] ?>"</b></h2>
      </div>
    </div>
    <div class="row">
      <?php
        foreach ($data['Usanpham_timkiem'] as $key => $sp_tk){
          ?>
            <div class="sanpham_item col-xs-12 col-sm-6 col-md-2 mt-5">
              <a href="<?php echo BASE_URL ?>dienthoai/chitiet_sanpham/<?php echo $sp_tk['ma_sp'] ?>/<?php echo $sp_tk['ma_th'] ?>/<?php echo $sp_tk['ma_dm'] ?>">
                <img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp_tk['hinh_sp'] ?>" class="d-block w-100">
              </a>
              <p class="text-center mt-3 sanpham_item_title"><?php echo $sp_tk['ten_sp'] ?></p>
              <div class="row tex-center ms-2">
              <?php
                $ma_sp = $sp_tk['ma_sp'];
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
              <p class="fw-bold text-center mt-2 sanpham_gia"><?php echo number_format($sp_tk['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></p>
            </div>
          <?php
        }
      ?>
    </div>
  </div>
</div>