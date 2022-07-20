<div class="list_sanpham mt-4 container">
  <div class="row mb-4">
    <div class="col-2">
      <div class="btn-group ">
        <button type="button" class="btn btn-light dropdown-toggle btn_loc" data-bs-toggle="dropdown"
          aria-expanded="false">
          &emsp;&emsp;&emsp;&emsp;Gía&emsp;&emsp;&emsp;&emsp;
        </button>
        <ul class="dropdown-menu">
          <li>
            <a class="dropdown-item" href="#">Dưới 2 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 2 triệu - 4 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 4 triệu - 7 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 7 triệu - 13 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 13 triệu - 20 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Trên 20 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
        </ul>
      </div>
    </div>
    <div class="col-2">
      <a href="">
        <button type="button" class="btn btn-light btn_loc ">Độc quyền</button>
      </a>
    </div>
    <div class="col-2">
      <div class="btn-group ">
        <button type="button" class="btn btn-light dropdown-toggle btn_loc" data-bs-toggle="dropdown"
          aria-expanded="false">
          &emsp;&emsp;&emsp;&emsp;RAM&emsp;&emsp;&emsp;&emsp;
        </button>
        <ul class="dropdown-menu">
          <li>
            <a class="dropdown-item" href="#">2GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">3GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">4GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">6GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">8GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">12GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
        </ul>
      </div>
    </div>
    <div class="col-2">
      <div class="btn-group ">
        <button type="button" class="btn btn-light dropdown-toggle btn_loc" data-bs-toggle="dropdown"
          aria-expanded="false">
          &emsp;&emsp;Bộ nhớ trông&emsp;&emsp;
        </button>
        <ul class="dropdown-menu">
          <li>
            <a class="dropdown-item" href="#">8GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">16GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">32GB</a>
          </li>
          <li> 
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">64GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">128GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">256GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">512GB</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
        </ul>
      </div>
    </div>

  </div>
  <div class="row mb-4 timkiem_hang ">
    <?php
      foreach ($data['thuonghieu_ma_dm'] as $key => $dmth){
        ?>
          <div class="col-2 p-3 p-3 btn_hang">
            <a href="<?php echo BASE_URL ?>dienthoai/timkiem_thuonghieu/<?php echo $dmth['ma_dm'] ?>/<?php echo $dmth['ma_th'] ?>">
              <img src="<?php echo BASE_URL ?>public/uploads/thuonghieu/<?php echo $dmth['logo_th'] ?>" class="d-block w-100">
            </a>
          </div>
        <?php
      }
    ?>
  </div>
  <p>Kết quả tìm kiếm: </p>
  <div class="sanpham mb-3" style="border-top: 2px solid #c7c7c7;">
    <div class="row">
      <?php
        foreach ($data['sanpham_ma_dm_th'] as $key => $sp){
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
  </div>
</div>