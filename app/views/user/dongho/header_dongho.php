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
            <a class="dropdown-item" href="#">Dưới 1 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 1 triệu - 3 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 3 triệu - 5 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 7 triệu - 15 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 15 triệu - 30 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Từ 30 triệu - 50 triệu</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Trên 50 triệu</a>
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
          &emsp;&emsp;Giới tính&emsp;&emsp;&emsp;&emsp;
        </button>
        <ul class="dropdown-menu">
          <li>
            <a class="dropdown-item" href="#">Nam</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Nữ</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Trẻ em</a>
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
          &emsp;Chất liệu mặt kính&emsp;
        </button>
        <ul class="dropdown-menu">
          <li>
            <a class="dropdown-item" href="#">Kính Sapphire</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Kính khoáng (Mineral)</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Nhựa Resin</a>
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
          &emsp;&emsp;Chất liệu dây&emsp;&emsp;
        </button>
        <ul class="dropdown-menu">
          <li>
            <a class="dropdown-item" href="#">Da thật</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Da tổng hợp</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Gốm sứ (Ceramic)</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Thép không gỉ</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Kim loại</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Hợp kim</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Vải</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Silicone/Cao su</a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>
          <li>
            <a class="dropdown-item" href="#">Nhựa</a>
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
            <a href="<?php echo BASE_URL ?>dongho/timkiem_thuonghieu/<?php echo $dmth['ma_dm'] ?>/<?php echo $dmth['ma_th'] ?>">
              <button style="width:100% ;" type="button" class="btn btn-light fw-bold"><?php echo $dmth['ten_th'] ?></button>
            </a>
          </div>
        <?php
      }
    ?>
  </div>
</div>