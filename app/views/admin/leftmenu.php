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
        <p class="text-muted m-0"><a href="<?php echo BASE_URL ?>dangnhap/nhanvien_dangxuat">Đăng
            xuất</a></p>
      </div>
    </div>
    <!--- Sidemenu -->
    <div id="sidebar-menu">

      <ul class="metismenu" id="side-menu">

        <li class="menu-title">Menu</li>

        <li>
          <a href="<?php echo BASE_URL ?>admin/index">
            <i class="ti-home"></i>
            <span> Trang chủ </span>
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
            <i class="ti-paint-bucket"></i>
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
        <!-- <li>
          <a href="javascript: void(0);">
            <i class="ti-pencil-alt"></i>
            <span> Forms </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level" aria-expanded="false">
            <li><a href="forms-general.html">General Elements</a></li>
            <li><a href="forms-advanced.html">Advanced Form</a></li>
          </ul>
        </li>

        <li>
          <a href="javascript: void(0);">
            <i class="ti-menu-alt"></i>
            <span> Tables </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level" aria-expanded="false">
            <li><a href="tables-basic.html">Basic Tables</a></li>
            <li><a href="tables-advanced.html">Advanced Tables</a></li>
          </ul>
        </li>

        <li>
          <a href="charts.html">
            <i class="ti-pie-chart"></i>
            <span> Charts </span>
            <span class="badge badge-primary float-right">5</span>
          </a>
        </li>

        <li>
          <a href="maps.html">
            <i class="ti-location-pin"></i>
            <span> Maps </span>
          </a>
        </li>

        <li>
          <a href="javascript: void(0);">
            <i class="ti-files"></i>
            <span> Pages </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level" aria-expanded="false">
            <li><a href="pages-login.html">Login</a></li>
            <li><a href="pages-register.html">Register</a></li>
            <li><a href="pages-forget-password.html">Forget Password</a></li>
            <li><a href="pages-lock-screen.html">Lock-screen</a></li>
            <li><a href="pages-blank.html">Blank page</a></li>
            <li><a href="pages-404.html">Error 404</a></li>
            <li><a href="pages-confirm-mail.html">Confirm Mail</a></li>
            <li><a href="pages-session-expired.html">Session Expired</a></li>
          </ul>
        </li>

        <li>
          <a href="javascript: void(0);">
            <i class="ti-widget"></i>
            <span> Extra Pages </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level" aria-expanded="false">

            <li><a href="extras-timeline.html">Timeline</a></li>
            <li><a href="extras-invoice.html">Invoice</a></li>
            <li><a href="extras-profile.html">Profile</a></li>
            <li><a href="extras-calendar.html">Calendar</a></li>
            <li><a href="extras-faqs.html">FAQs</a></li>
            <li><a href="extras-pricing.html">Pricing</a></li>
            <li><a href="extras-contacts.html">Contacts</a></li>
          </ul>
        </li>

        <li>
          <a href="javascript: void(0);">
            <i class="ti-layout"></i>
            <span> Layouts </span>
            <span class="badge badge-danger badge-pill float-right">New</span>
          </a>
          <ul class="nav-second-level" aria-expanded="false">
            <li><a href="layouts-horizontal.html">Horizontal</a></li>
            <li><a href="layouts-dark-sidebar.html">Dark Sidebar</a></li>
            <li><a href="layouts-small-sidebar.html">Small Sidebar</a></li>
            <li><a href="layouts-sidebar-collapsed.html">Sidebar Collapsed</a></li>
          </ul>
        </li>

        <li>
          <a href="javascript: void(0);">
            <i class="ti-share"></i>
            <span> Multi Level </span>
            <span class="menu-arrow"></span>
          </a>
          <ul class="nav-second-level nav" aria-expanded="false">
            <li>
              <a href="javascript: void(0);">Level 1.1</a>
            </li>
            <li>
              <a href="javascript: void(0);" aria-expanded="false">Level 1.2
                <span class="menu-arrow"></span>
              </a>
              <ul class="nav-third-level nav" aria-expanded="false">
                <li>
                  <a href="javascript: void(0);">Level 2.1</a>
                </li>
                <li>
                  <a href="javascript: void(0);">Level 2.2</a>
                </li>
              </ul>
            </li>
          </ul>
        </li> -->
      </ul>

    </div>
    <!-- End Sidebar -->

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