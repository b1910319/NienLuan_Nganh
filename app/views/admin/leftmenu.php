<div id="wrapper">
  <div class="left-side-menu">


    <div class="user-box">
      <div class="float-left">
        <img src="<?php echo BASE_URL ?>public/assets\images\users\avatar-1.jpg" alt=""
          class="avatar-md rounded-circle">
      </div>
      <div class="user-info">
        <?php
          if(session::get('dangnhap') == true){
            $ten_nv = session::get('ten_nv');
            ?>
              <a href="#"><?php echo $ten_nv ?></a>
            <?php
          }
        ?>
        <p class="text-muted m-0"><a href="<?php echo BASE_URL ?>dangnhap/nhanvien_dangxuat">Đăng xuất</a></p>
      </div>
    </div>
    <!--- Sidemenu -->
    <div id="sidebar-menu">

      <ul class="metismenu" id="side-menu">

        <li class="menu-title">Menu</li>

        <li>
          <a href="<?php echo BASE_URL ?>admin/index">
            <i class="fa-solid fa-house-chimney"></i>
            <span> Trang chủ </span>
          </a>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>thongke/index">
            <i class="fa-solid fa-chart-pie"></i>
            <span> Thống kê </span>
          </a>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>nhanvien/nhanvien">
          <i class="fa-solid fa-users"></i>
            <span> Nhân viên </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>nhacungcap/nhacungcap">
            <i class="fa-solid fa-warehouse"></i>
            <span> Nhà cung cấp </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>

        <li>
          <a href="<?php echo BASE_URL ?>mau/mau">
            <i class=" fas fa-solid fa-eye-dropper"></i>
            <span> Màu </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>

        <li>
          <a href="javascript: void(0);">
            <i class="ti-menu-alt"></i>
            <span> Danh mục </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level nav" aria-expanded="false">
            <li>
              <a href="javascript: void(0);" aria-expanded="false">Danh mục sản phẩm
                <span class="menu-arrow"></span>
              </a>
              <ul class="nav-third-level nav" aria-expanded="false">
                <li>
                  <a href="javascript: void(0);">
                    <a href="<?php echo BASE_URL ?>danhmuc_sanpham/danhmuc_sanpham">Thêm danh
                      mục</a>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);">
                    <a href="<?php echo BASE_URL ?>danhmuc_thuonghieu/danhmuc_thuonghieu">Danh mục _
                      Thương hiệu</a>
                  </a>
                </li>
              </ul>
            </li>
            <li>
              <a href="<?php echo BASE_URL ?>danhmuc_tintuc/danhmuc_tintuc">
                <span> Danh mục tin tức </span>
                <span class="badge badge-primary float-right"></span>
              </a>
            </li>
          </ul>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>loai_sanpham/loai_sanpham">
            <i class="fas fa-solid fa-layer-group"></i>
            <span> Loại sản phẩm </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>thuonghieu/thuonghieu">
            <i class="fa-solid fa-registered"></i>
            <span> Thương hiệu </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>
        <li>
          <a href="javascript: void(0);">
            <i class="fa-solid fa-mobile"></i>
            <span> Sản phẩm </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level nav" aria-expanded="false">
            <li>
              <a href="<?php echo BASE_URL ?>sanpham/sanpham">
                <span> Thêm sản phẩm </span>
                <span class="badge badge-primary float-right"></span>
              </a>
            </li>
            <li>
              <a href="javascript: void(0);" aria-expanded="false">Chi tiết - Sản phẩm
                <span class="menu-arrow"></span>
              </a>
              <ul class="nav-third-level nav" aria-expanded="false">
                <li>
                  <a href="javascript: void(0);">
                    <a href="<?php echo BASE_URL ?>sanpham/sp_chitiet">
                    Điện Thoại - Table
                    </a>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);">
                    <a href="<?php echo BASE_URL ?>sanpham/sp_chitiet_laptop">
                      Laptop
                    </a>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);">
                    <a href="<?php echo BASE_URL ?>sanpham/sp_chitiet_smartwatch">
                      Smartwatch
                    </a>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);">
                    <a href="<?php echo BASE_URL ?>sanpham/sp_chitiet_dongho">
                    Đồng hồ
                    </a>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);">
                    <a href="<?php echo BASE_URL ?>sanpham/sp_chitiet_maytinh">
                      Máy tính để bàn
                    </a>
                  </a>
                </li>
              </ul>
            </li>
            <li>
              <a href="<?php echo BASE_URL ?>sanpham/hinh">
                <span> Hình - Sản phẩm </span>
                <span class="badge badge-primary float-right"></span>
              </a>
            </li>
            <li>
              <a href="<?php echo BASE_URL ?>sanpham/mau_sanpham">
                <span> Màu - Sản phẩm </span>
                <span class="badge badge-primary float-right"></span>
              </a>
            </li>
          </ul>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>khuyenmai/khuyenmai">
            <i class="fa-solid fa-percent"></i>
            <span> Khuyến mãi </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>luotxem/luotxem/DESC">
            <i class="fa-solid fa-eye"></i>
            <span> Lượt xem sản phẩm </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>
        <li>
          <a href="javascript: void(0);">
            <i class="fa-solid fa-star"></i>
            <span> Đánh giá sản phẩm </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level nav" aria-expanded="false">
            <li>
              <a href="<?php echo BASE_URL ?>danhgia/danhgia">
                <span> Đánh giá </span>
                <span class="badge badge-primary float-right"></span>
              </a>
            </li>
            <li>
              <a href="<?php echo BASE_URL ?>danhgia/thongke">
                <span> Thống kê </span>
                <span class="badge badge-primary float-right"></span>
              </a>
            </li>
          </ul>
        </li>
        <li>
          <?php
            $i = 0;
            foreach ($data['donhang_moi'] as $key => $dh){
              $i ++;
            }
            ?>
              <a href="javascript: void(0);">
                <i class="fas fa-cart-arrow-down"></i>
                <span class="badge badge-danger float-right"><?php echo $i ?></span>
                <span> Đơn hàng </span>
              </a>
            <?php
          ?>
          <ul class="nav-second-level" aria-expanded="false">
            <li><a href="<?php echo BASE_URL ?>/donhang/donhang">Tất cả đơn hàng</a></li>
            <?php
              $i = 0;
              foreach ($data['donhang_moi'] as $key => $dh){
                $i ++;
              }
              ?>
                <li>
                  <a href="<?php echo BASE_URL ?>/donhang/donhang_moi">Đơn hàng mới <span class="badge badge-danger float-right"><?php echo $i ?></span></a>
                </li>
              <?php
            ?>
            <?php
              $i = 0;
              foreach ($data['donhang_dangvanchuyen'] as $key => $dh){
                $i ++;
              }
              ?>
                <li>
                  <a href="<?php echo BASE_URL ?>/donhang/donhang_dangvanchuyen">Đơn hàng đang vận chuyển <span class="badge badge-info float-right"><?php echo $i ?></span></a>
                </li>
              <?php
            ?>
            <?php
              $i = 0;
              foreach ($data['donhang_dagiao'] as $key => $dh){
                $i ++;
              }
              ?>
                <li>
                  <a href="<?php echo BASE_URL ?>/donhang/donhang_dagiao">Đơn hàng đã giao <span class="badge badge-warning float-right"><?php echo $i ?></span></a>
                </li>
              <?php
            ?>
          </ul>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>tintuc/tintuc">
            <i class="fa-solid fa-newspaper"></i>
            <span> Tin tức </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>baohanh/baohanh_list">
            <i class="fa-solid fa-file-shield"></i>
            <span> Bảo hành </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>
        <li>
          <a href="<?php echo BASE_URL ?>hoi_dap/hoi_dap_list">
            <i class="fa-solid fa-question"></i>
            <span> Hỏi đáp </span>
            <span class="badge badge-primary float-right"></span>
          </a>
        </li>
      </ul>
    </div>
    <div class="clearfix"></div>
  </div>
  <!-- Vendor js -->
  <script src="<?php echo BASE_URL ?>public/assets\js\vendor.min.js"></script>

  <script src="<?php echo BASE_URL ?>public/assets\libs\morris-js\morris.min.js"></script>
  <script src="<?php echo BASE_URL ?>public/assets\libs\raphael\raphael.min.js"></script>

  <script src="<?php echo BASE_URL ?>public/assets\js\pages\dashboard.init.js"></script>

  <!-- App js -->
  <script src="<?php echo BASE_URL ?>public/assets\js\app.min.js"></script>
</div>