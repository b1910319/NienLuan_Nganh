<div id="wrapper">
  <div class="content-page">
    <div class="alert alert-success title_page" role="alert">
      Thêm thông tin màu
    </div>
    <form action="<?php echo BASE_URL ?>mau/mau_insert" method="POST"
      autocomplete="off">
      <table class="table">
        <tbody>
          <tr>
            <th scope="row" class="title_table">Tên: </th>
            <td class="was-validated">
              <input type='text' class='form-control input_table' required name="ten_m">
            </td>
          </tr>
          <tr>
            <td></td>
            <td>
              <button type="submit" class="btn btn-outline-success font-weight-bold"
                name="insert_m">
                <i class="fas fa-plus-square"></i>
                Thêm
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
    <div class="alert alert-success title_page" role="alert">
      <div class="row">
        <div class="col-6 mt-2">
          Thông tin màu
        </div>
        <div class="col-6">
          <form class="d-flex" action="<?php echo BASE_URL ?>mau/mau_timkiem" method="POST">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="tukhoa">
            <button class="btn btn-success btn_search" type="submit"><i class="fas fa-search"></i></button>
          </form>
        </div>
      </div>
    </div>
    <table class="table table-hover">
      <thead>
        <tr class="tr_table">
          <th scope="col">STT</th>
          <th scope="col">Mã màu</th>
          <th scope="col">Tên màu</th>
          <th scope="col">Quản lý</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $i=0;
          foreach($data['mau_timkiem'] as $key => $m){
            $i++;
            ?>
              <tr>
                <th scope="row"><?php echo $i ?></th>
                <td><?php echo $m['ma_m'] ?></td>
                <td><?php echo $m['ten_m'] ?></td>
                <td>
                  <a href="<?php echo BASE_URL ?>mau/mau_edit/<?php echo $m['ma_m'] ?>">
                    <button type="button" class="btn sua">
                      <i class="fas fa-edit"></i>
                    </button>
                  </a>
                  <a onclick="return confirm('Bạn có muốn xóa <?php echo $m['ten_m'] ?> không?')" href="<?php echo BASE_URL ?>mau/mau_delete/<?php echo $m['ma_m'] ?>">
                    <button type="button" class="btn xoa">
                      <i class="fas fa-trash-alt"></i>
                    </button>
                  </a>
                </td>
              </tr>
            <?php
          }
          echo '<p class="text-warning" style="font-weight: bold;">Tổng: '.$i.'</p>';
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
</div>