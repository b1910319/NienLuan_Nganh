<div class="container giohang ">
  <h2>Giỏ hàng</h2>
  <?php
    if (isset($_SESSION['giohang'])){
      ?>
        <a href="<?php echo BASE_URL ?>index/index">
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
                <th scope="col">Màu</th>
                <th scope="col">Thành tiền</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <?php
                $i=0;
                foreach($_SESSION['giohang'] as $key => $gh){
                  $i++;
                  ?>
                    <form action="<?php echo BASE_URL ?>giohang/giohang_update/<?php echo $gh['ma_sp'] ?>" method="POST">
                    
                      <tr>
                        <th style="width: 5%;" scope="row"><?php echo $i ?></th>
                        <td style="width: 20%;"> 
                          <?php
                            foreach($data['sanpham'] as $key => $sp){
                              if($gh['ma_sp'] == $sp['ma_sp']){
                                echo $sp['ten_sp'];
                              }
                            }
                          ?>
                        </td>
                        <td style="width: 15%;">
                          <?php
                            foreach($data['sanpham'] as $key => $sp){
                              if($gh['ma_sp'] == $sp['ma_sp']){
                                ?>
                                  <img src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $sp['hinh_sp'] ?>" style="width: 40%;" >
                                <?php
                              }
                            }
                          ?>
                        </td>
                        <td style="width: 10%;">
                          <?php
                            foreach($data['sanpham'] as $key => $sp){
                              if($gh['ma_sp'] == $sp['ma_sp']){
                                echo number_format($sp['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>';
                              }
                            }
                          ?>
                        </td>
                        <td>
                          <input type="number" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2"
                            min="0" max="10" name="soluong_dat" value="<?php echo $gh['soluong_dat'] ?>">
                        </td>
                        <td style="width: 10%;">
                          <?php
                            foreach($data['mau'] as $key => $m){
                              if($gh['ma_m'] == $m['ma_m']){
                                echo $m['ten_m'];
                              }
                            }
                          ?>
                        </td>
                        <td style="width: 10%;">
                          <?php
                            foreach($data['sanpham'] as $key => $sp){
                              if($gh['ma_sp'] == $sp['ma_sp']){
                                echo number_format($sp['gia_sp'] * $gh['soluong_dat'], 0, ',', '.') . ' <sup>đ</sup>';
                              }
                            }
                          ?>
                        </td>
                        <td style="width: 20%;">
                          <a href="<?php echo BASE_URL ?>giohang/giohang_delete/<?php echo $gh['ma_sp'] ?>" onclick="return confirm('Bạn có muốn xóa sản phẩm không?')">
                            <button type="button" class="btn btn-warning btn_xoa" name="xoa_giohang">
                              <i class="fa-solid fa-trash-can"></i>
                            </button>
                          </a>
                          <button class="btn btn-success" name="update_giohang" type="submit" id="button-addon2">Update</button>
                        </td>
                      </tr>
                    </form>
                  <?php
                }
              ?>
              <tr>
                <td colspan="8" >
                  <p class="text-end fw-bold">
                    Tổng: 
                    <?php
                      $tong = 0;
                      foreach($_SESSION['giohang'] as $key => $gh){
                        foreach($data['sanpham'] as $key => $sp){
                          if($gh['ma_sp'] == $sp['ma_sp']){
                            $tong = $tong + ( $sp['gia_sp'] * $gh['soluong_dat'] );
                          }
                        }
                      }
                      echo number_format($tong, 0, ',', '.') . ' <sup>đ</sup>';
                    ?>
                  </p>
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
      <?php
    }else{
      ?>
        <img src="<?php echo BASE_URL ?>public/img/logo/giohang_trong.png" style="display: block; margin-left: auto; margin-right: auto;">
      <?php
    }
  ?>

</div>