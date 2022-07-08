<div id="wrapper">
  <div class="content-page">
    <div class="alert alert-success title_page" role="alert">
      Thêm thông tin nhà cung cấp
    </div>
    <form action="<?php echo BASE_URL ?>nhacungcap/nhacungcap_insert" method="POST" autocomplete="off">
      <table class="table">
        <tbody>
          <tr>
            <th scope="row" class="title_table">Tên: </th>
            <td class="was-validated">
              <input type='text' class='form-control input_table' required name="ten_ncc">
            </td>
          </tr>
          <tr>
            <th scope="row">Địa chỉ: </th>
            <td class="was-validated">
              <input type='text' class='form-control input_table' required name="diachi_ncc">
            </td>
          </tr>
          <tr>
            <th scope="row">Sô điện thoại: </th>
            <td class="was-validated">
              <input type='text' class='form-control input_table' required
                pattern="^\+?\d{1,3}?[- .]?\(?(?:\d{2,3})\)?[- .]?\d\d\d[- .]?\d\d\d\d$" maxlength="10"
                name="sdt_ncc">
            </td>
          </tr>
          <tr>
            <th scope="row">Email: </th>
            <td class="was-validated">
              <input type='text' class='form-control input_table' required name="email_ncc">
            </td>
          </tr>
          <tr>
            <td></td>
            <td>
              <button type="submit" class="btn btn-outline-success font-weight-bold" name="insert_ncc">
                <i class="fas fa-plus-square"></i>
                Thêm
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
    <div class="alert alert-success title_page" role="alert">
      Thông tin nhà cung cấp
    </div>
    <table class="table table-hover">
      <thead>
        <tr class="tr_table">
          <th scope="col">STT</th>
          <th scope="col">Tên</th>
          <th scope="col">Địa chỉ</th>
          <th scope="col">Số điện thoại</th>
          <th scope="col">Email</th>
          <th scope="col">Quản lý</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td>Otto</td>
          <td>@mdo</td>
          <td>@mdo</td>
          <td>
            <a href="">
              <button type="button" class="btn sua">
                <i class="fas fa-edit"></i>
              </button>
            </a>
            <a onclick="return confirm('Bạn có muốn xóa không?')" href="">
              <button type="button" class="btn xoa">
                <i class="fas fa-trash-alt"></i>
              </button>
            </a>
          </td>
        </tr>
      </tbody>
    </table>

  </div>
  <!-- Vendor js -->
  <script src="../public/assets\js\vendor.min.js"></script>

  <script src="../public/assets\libs\morris-js\morris.min.js"></script>
  <script src="../public/assets\libs\raphael\raphael.min.js"></script>

  <script src="../public/assets\js\pages\dashboard.init.js"></script>

  <!-- App js -->
  <script src="../public/assets\js\app.min.js"></script>
</div>