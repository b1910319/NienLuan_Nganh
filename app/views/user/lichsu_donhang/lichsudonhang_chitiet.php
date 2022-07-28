<div class="container lichsudonhang_chitiet">
  <h2>CHI TIẾT ĐƠN HÀNG</h2>
  <form action="<?php echo BASE_URL ?>index/lichsu_donhang" method="POST">
    <?php
      foreach ($data['lichsudonhang_chitiet'] as $key => $dh){
        ?>
          <input type="hidden" style="border-radius:15px ;" class="form-control mt-4"  name="sdt_k" value="<?php echo $dh['sdt_k'] ?>">
        <?php
      }
    ?>
    <button type="submit" class="btn btn-success">Quay lại</button>
  </form>
  <div class="mt-3">
  <table class="table table-hover">
      <thead>
        <tr class="tr_table">
          <th scope="col">STT</th>
          <th scope="col">Thông tin sản phẩm</th>
          <th scope="col">Số lượng đặt</th>
          <th scope="col">Thành tiền</th>
          <th scope="col">Thời gian bảo hành</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $i = 0;
          foreach ($data['lichsudonhang_chitiet'] as $key => $ctdh){
            $i ++;
            ?>
              <tr>
                <th scope="row" style="width: 5%;"><?php echo $i ?></th>
                <td style="width: 40%;">
                  <div class="row ">
                    <div class="col-md-12">
                      <div class="scrollspy-example" data-bs-spy="scroll" data-bs-target="#lex" id="work"
                        data-offset="20" style="height: 100px; overflow: auto;">
                        <p>
                          <b>Tên:</b> <?php echo $ctdh['ten_sp'] ?> <br>
                          <b>Gía: </b> <?php echo number_format($ctdh['gia_sp'], 0, ',', '.') . ' <sup>đ</sup>' ?> <br>
                          <b>Màu: </b> <?php echo $ctdh['ten_m'] ?> <br>
                          <b>Hình:</b>
                          <img style="width: 40%;"src="<?php echo BASE_URL ?>public/uploads/sanpham/<?php echo $ctdh['hinh_sp'] ?>">
                        </p>
                      </div>
                    </div>
                  </div>
                </td>
                <td style="width: 15%;"><?php echo $ctdh['soluong_dat'] ?></td>
                <td style="width: 20%;"><?php echo number_format($ctdh['gia_sp'] * $ctdh['soluong_dat'], 0, ',', '.') . ' <sup>đ</sup>' ?></td>
                <td style="width: 25%;">
                  <?php echo $ctdh['thoigian_bh'] ?>
                </td>
              </tr>
            <?php
          }
          ?>
            <tr>
              <td colspan="5" class="text-center" style="font-weight: bold; color:#EF5B0C ;" > Tổng: <?php echo number_format($ctdh['tonggia_dh'], 0, ',', '.') . ' <sup>đ</sup>'  ?></td>
            </tr>
          <?php
        ?>
      </tbody>
    </table>
  </div>
</div>