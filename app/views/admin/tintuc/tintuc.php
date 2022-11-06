<div id="wrapper">
  <div class="content-page card-box">
    <div class="alert alert-success title_page" role="alert">
      Thêm nội dung tin tức
    </div>
    <form action="<?php echo BASE_URL ?>tintuc/tintuc_insert" method="POST"
      autocomplete="off" enctype="multipart/form-data">
      <table class="table">
        <tbody>
          <tr>
            <th scope="row" class="title_table">Tên: </th>
            <td class="was-validated">
              <input type='text' class='form-control input_table' required autofocus name="ten_tt">
            </td>
          </tr>
          <tr>
            <th scope="row">Danh mục tin tức: </th>
            <td class="was-validated">
              <select class="custom-select input_table" id="gender2" name="ma_dmtt">
                <option >Chọn danh mục</option>
                <?php
                  foreach ($data['danhmuc_tintuc'] as $key => $dmtt){
                    ?>
                      <option value="<?php echo $dmtt['ma_dmtt'] ?>"><?php echo $dmtt['ten_dmtt'] ?></option>
                    <?php
                  }
                ?>
              </select>
            </td>
          </tr>
          <tr>
            <th scope="row">Thương hiệu: </th>
            <td class="was-validated">
              <select class="custom-select input_table" id="gender2" name="ma_th">
                <option >Chọn thương hiệu</option>
                <?php
                  foreach ($data['thuonghieu'] as $key => $th){
                    ?>
                      <option value="<?php echo $th['ma_th'] ?>"><?php echo $th['ten_th'] ?></option>
                    <?php
                  }
                ?>
              </select>
            </td>
          </tr>
          <tr>
            <th scope="row">Hình: </th>
            <td class="was-validated">
              <input type='file' name="hinh_tt">
            </td>
          </tr>
          <tr>
            <th scope="row" class="title_table">Nội dung: </th>
            <td class="was-validated">
              <textarea name="noidung_tt" id="" cols="60" rows="10"></textarea>
            </td>
          </tr>
          <tr>
            <td></td>
            <td>
              <button type="submit" class="btn btn-outline-success font-weight-bold"
                name="insert_tt">
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
          Tin tức
        </div>
        <div class="col-6">
          <form class="d-flex" action="<?php echo BASE_URL ?>tintuc/tintuc_timkiem"
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
          <th scope="col">Tên</th>
          <th scope="col">Hình</th>
          <th scope="col">Thông tin</th>
          <th scope="col">Quản lý</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $i=0;
          foreach($data['tintuc'] as $key => $tt){
            $i++;
            ?>
              <tr>
                <th scope="row" style="width:5% ;" ><?php echo $i ?></th>
                <td style="width:25% ;" > <?php echo $tt['ten_tt'] ?></td>
                <td style="width:30% ;" ><img style="width: 40%;" src="<?php echo BASE_URL ?>public/uploads/tintuc/<?php echo $tt['hinh_tt'] ?>" alt=""></td>
                <td style="width:20% ;">
                  <div class="row ">
                    <div class="col-md-12">
                      <div class="scrollspy-example" data-bs-spy="scroll" data-bs-target="#lex" id="work" data-offset="20"
                        style="height: 100px; overflow: auto;">
                        <p>
                          <b>Tên nhân viên:</b> <?php echo $tt['ten_nv'] ?> <br>
                          <b>Thương hiệu:</b> <?php echo $tt['ten_th'] ?> <br>
                          <b>Danh mục: </b> <?php echo $tt['ten_dmtt'] ?> <br>
                        </p>
                      </div>
                    </div>
                  </div>
                </td>
                <td style="width:20% ;" >
                  <a href="<?php echo BASE_URL ?>tintuc/tintuc_edit/<?php echo $tt['ma_tt'] ?>">
                    <button type="button" class="btn sua">
                      <i class="fas fa-edit"></i>
                    </button>
                  </a>
                  <a onclick="return confirm('Bạn có muốn xóa <?php echo $tt['ten_tt'] ?> không?')"
                    href="<?php echo BASE_URL ?>tintuc/tintuc_delete/<?php echo $tt['ma_tt'] ?>">
                    <button type="button" class="btn xoa">
                      <i class="fas fa-trash-alt"></i>
                    </button>
                  </a>
                </td>
              </tr>
            <?php
          }
          echo '<p class="text-warning" style="font-weight: bold;">Tổng: '.$i.'</p>';
          $level=session::get('level');
          if($level == 1){
            ?>
              <a onclick="return confirm('Bạn có muốn xóa tất cả không?')" href="<?php echo BASE_URL ?>tintuc/tintuc_deleteAll">
                <button type="button" class="btn" style="background-color: red; font-weight: bold; margin-bottom: 10px;">
                  <i class="fas fa-trash-alt"></i> Xoá tất cả
                </button>
              </a>
            <?php
          }
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
  CKEDITOR.replace('noidung_tt');
  </script>
  <!--  -->
</div>