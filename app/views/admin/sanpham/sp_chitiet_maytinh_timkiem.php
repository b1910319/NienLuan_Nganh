<div id="wrapper">
  <div class="content-page">
    <div class="alert alert-success title_page" role="alert">
      <div class="row">
        <div class="col-6 mt-2">
          <a href="<?php echo BASE_URL ?>sanpham/sp_chitiet_maytinh">
            <i class="fas fa-solid fa-caret-left"></i>&ensp;
          </a>
          Thông tin chi tiết: Máy tính để bàn
        </div>
        <div class="col-6">
          <form class="d-flex" action="<?php echo BASE_URL ?>sanpham/sp_chitiet_maytinh_timkiem"
            method="POST">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
              name="tukhoa">
            <button class="btn btn-success btn_search" type="submit"><i
                class="fas fa-search"></i></button>
          </form>
        </div>
      </div>
    </div>
    <table class="table table-hover">
      <thead>
        <tr class="tr_table">
          <th scope="col">STT</th>
          <th scope="col">Tên sản phẩm</th>
          <th scope="col">Chi tiêt</th>
          <th scope="col">Quản lý</th>
        </tr>
      </thead>
      <tbody>
        <?php
        $i = 0;
        foreach ($data['sp_chitiet_timkiem'] as $key => $ctsp) {
          $i++;
          ?>
        <tr>
          <th scope="row" style="width: 10%;"><?php echo $i ?></th>
          <td style="width: 30%;"><?php echo $ctsp['ten_sp'] ?></td>
          <td style="width: 45%;">
            <div class="row ">
              <div class="col-md-12">
                <div class="scrollspy-example" data-bs-spy="scroll" data-bs-target="#lex" id="work" data-offset="20"
                  style="height: 100px; overflow: auto;">
                  <p>
                    Công nghệ CPU: <?php echo $ctsp['congnghe_cpu'] ?> <br>
                    RAM: <?php echo $ctsp['ram'].'GB' ?> <br>
                    Ổ cứng: <?php echo 'SSD '.$ctsp['rom'].'GB' ?> <br>
                    Màn hình: <?php echo $ctsp['manhinh'] ?> <br>
                    Card màn hình: <?php echo $ctsp['card_manhinh'] ?> <br>
                    Cổng kết nối: <?php echo $ctsp['cong_ketnoi'] ?> <br>
                    Hệ điều hành: <?php echo $ctsp['hedieuhanh']?> <br>
                    Kích thước: <?php echo $ctsp['kichthuoc'] ?>
                  </p>
                </div>
              </div>
            </div>
          </td>
          <td style="width: 15%;">
            <a href="<?php echo BASE_URL ?>sanpham/sp_chitiet_maytinh_edit/<?php echo $ctsp['ma_ctsp'] ?>">
              <button type="button" class="btn sua">
                <i class="fas fa-edit"></i>
              </button>
            </a>
            <a onclick="return confirm('Bạn có muốn xóa sản phẩm <?php echo $ctsp['ten_sp'] ?> không?')"
              href="<?php echo BASE_URL ?>sanpham/sp_chitiet_maytinh_delete/<?php echo $ctsp['ma_ctsp'] ?>">
              <button type="button" class="btn xoa">
                <i class="fas fa-trash-alt"></i>
              </button>
            </a>
          </td>
        </tr>
        <?php
        }
        echo '<p class="text-warning" style="font-weight: bold;">Tổng: ' . $i . '</p>';
        ?>
      </tbody>
    </table>
  </div>
  <!-- Vendor js -->
  <script src="<?php echo BASE_URL ?>public/assets\js\vendor.min.js"></script>

  <script src="<?php echo BASE_URL ?>public/assets\libs\morris-js\morris.min.js"></script>
  <script src="<?php echo BASE_URL ?>public/assets\libs\raphael\raphael.min.js"></script>

  <script src="<?php echo BASE_URL ?>public/assets\js\pages\dashboard.init.js"></script>

  <!-- App js -->
  <script src="<?php echo BASE_URL ?>public/assets\js\app.min.js"></script>
  <!-- trình soạn thảo  -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="//cdn.ckeditor.com/4.17.1/full/ckeditor.js"></script>
  <script>
  CKEDITOR.replace('thongtin_sp');
  </script>
  <!--  -->
</div>