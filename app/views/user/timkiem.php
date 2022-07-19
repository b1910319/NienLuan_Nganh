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
              <a href="<?php echo BASE_URL ?><?php echo $sp_tk['ghichu_dm'] ?>/chitiet_sanpham/<?php echo $sp_tk['ma_sp'] ?>">
                <img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp_tk['hinh_sp'] ?>" class="d-block w-100">
              </a>
              <p class="text-center mt-3 sanpham_item_title"><?php echo $sp_tk['ten_sp'] ?></p>
              <p class="fw-bold text-center mt-2 sanpham_gia"><?php echo number_format($sp_tk['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>'  ?></p>
            </div>
          <?php
        }
      ?>
    </div>
  </div>
</div>