<div class="container giohang ">
  <h2>Giỏ hàng</h2>
  <a href="">
    <button type="button" class="btn btn-success">Mua thêm sản phẩm khác</button>
  </a>
  <div class="mt-4">
    <table class="table table-hover">
      <thead>
        <tr class="table-dark">
          <th scope="col">STT</th>
          <th scope="col">Tên</th>
          <th scope="col">Hình</th>
          <th scope="col">Gía</th>
          <th scope="col">Số lượng</th>
          <th scope="col">Thành tiền</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td>Otto</td>
          <td>Otto</td>
          <td>
            <input type="number" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2"
              min="0" max="10" name="soluong" value="1">
          </td>
          <td>Otto</td>
          <td>
            <a href="">
              <button type=" button" class="btn btn-warning btn_xoa">
                <i class="fa-solid fa-trash-can"></i>
              </button>
            </a>
            <button class="btn btn-success" name="update" type="submit" id="button-addon2">Update</button>
          </td>
        </tr>
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td>Otto</td>
          <td>Otto</td>
          <td>
            <input type="number" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2"
              min="0" max="10" name="soluong" value="1">
          </td>
          <td>Otto</td>
          <td>
            <a href="">
              <button type=" button" class="btn btn-warning btn_xoa">
                <i class="fa-solid fa-trash-can"></i>
              </button>
            </a>
            <button class="btn btn-success" name="update" type="submit" id="button-addon2">Update</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="mb-4">
    <form action="">
      <p class="fw-bold">THÔNG TIN KHÁCH HÀNG</p>
      <div class="row">
        <div class="col-4">
          <input type="text" class="form-control" placeholder="Họ tên" required minlength="5">
        </div>
        <div class="col-4">
        <input type="text" class="form-control" placeholder="Số Điện Thoại" required pattern="^\+?\d{1,3}?[- .]?\(?(?:\d{2,3})\)?[- .]?\d\d\d[- .]?\d\d\d\d$" maxlength="10">
        </div>
        <div class="col-4">
          <select class="form-select" style="height:34px ; font-size: 16px;" aria-label="Default select example">
            <option >Giới tính</option>
            <option value="1">Nam</option>
            <option value="2">Nữ</option>
          </select>
        </div>
      </div>
      <div class="row mt-3">
        <div class="col-12">
          <input type="text" class="form-control" placeholder="Địa chỉ" required minlength="10">
        </div>
      </div>
      <div class="d-flex justify-content-center mt-4">
        <button type="submit" class="btn btn-warning btn_dathang ">ĐẶT HÀNG</button>
      </div>
      
    </form>
  </div>

</div>