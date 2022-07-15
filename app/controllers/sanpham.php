<?php
class sanpham extends controller
{
  public function __construct()
  {
    $data = array();
    $thongbao = array();
    parent::__construct();
  }
  public function sanpham()
  {
    session::init();
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    // danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model("danhmuc_sanphamM");
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    // thương hiệu sản phẩm
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table_th = 'thuonghieu';
    $data['thuonghieu'] = $thuonghieuM->thuonghieu_list($table_th);
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    // loại sản phẩm
    $loai_sanphamM = $this->load->model('loai_sanphamM');
    $table_lsp = 'loai_sanpham';
    $data['loai_sanpham'] = $loai_sanphamM->loai_sanpham_list($table_lsp, $table_dm);
    // nhà cung cấp
    $nhacungcapM = $this->load->model('nhacungcapM');
    $table_ncc = 'nhacungcap';
    $data['nhacungcap'] = $nhacungcapM->nhacungcap_list($table_ncc);
    // nhân viên
    $nhanvienM = $this->load->model('nhanvienM');
    $table_nv = 'nhanvien';
    // sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham'] = $sanphamM->sanpham_list($table_sp, $table_dm, $table_nv, $table_ncc, $table_lsp, $table_th);
    $this->load->view_admin("sanpham/sanpham", $data);
  }
  public function sanpham_insert()
  {
    session::init();
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $ten_sp = $_POST['ten_sp'];
    $gia_sp = $_POST['gia_sp'];
    $soluong_sp = $_POST['soluong_sp'];
    $thongtin_sp = $_POST['thongtin_sp'];
    $tinhtrang_sp = $_POST['tinhtrang_sp'];
    $ma_dm = $_POST['ma_dm'];
    $ma_ncc = $_POST['ma_ncc'];
    $ma_lsp = $_POST['ma_lsp'];
    $ma_th = $_POST['ma_th'];

    $hinh_sp = $_FILES['hinh_sp']['name'];
    $file_temp_hinh = $_FILES['hinh_sp']['tmp_name'];
    $div_hinh = explode(' . ', $hinh_sp);
    $file_ext_hinh = strtolower(end($div_hinh));
    $unique_image_hinh = substr(md5(time()), 0, 10) . ' . ' . $file_ext_hinh;
    $uploaded_image_hinh = "public/uploads/sanpham/" . $unique_image_hinh;
    move_uploaded_file($file_temp_hinh, $uploaded_image_hinh);

    $hinhchitiet_sp = $_FILES['hinhchitiet_sp']['name'];
    $file_temp = $_FILES['hinhchitiet_sp']['tmp_name'];
    $div = explode(' . ', $hinhchitiet_sp);
    $file_ext = strtolower(end($div));
    $unique_image = substr(md5(time()), 0, 10) . ' . ' . $file_ext;
    $uploaded_image = "public/uploads/sanpham/" . $unique_image;
    move_uploaded_file($file_temp, $uploaded_image);
    if ($_SESSION['dangnhap'] == true) {
      $ma_nv = session::get('ma_nv');
    }
    $data = array(
      'ten_sp' => $ten_sp,
      'gia_sp' => $gia_sp,
      'soluong_sp' => $soluong_sp,
      'thongtin_sp' => $thongtin_sp,
      'tinhtrang_sp' => $tinhtrang_sp,
      'ma_dm' => $ma_dm,
      'ma_ncc' => $ma_ncc,
      'ma_lsp' => $ma_lsp,
      'ma_th' => $ma_th,
      'ma_nv' => $ma_nv,
      'hinh_sp' => $unique_image_hinh,
      'hinhchitiet_sp' => $unique_image
    );
    $result = $sanphamM->sanpham_insert($table_sp, $data);
    header("Location:" . BASE_URL . "sanpham/sanpham");
  }
  public function sanpham_edit($ma_sp)
  {
    session::init();
    // danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model("danhmuc_sanphamM");
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    // thương hiệu sản phẩm
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table_th = 'thuonghieu';
    $data['thuonghieu'] = $thuonghieuM->thuonghieu_list($table_th);
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    // loại sản phẩm
    $loai_sanphamM = $this->load->model('loai_sanphamM');
    $table_lsp = 'loai_sanpham';
    $data['loai_sanpham'] = $loai_sanphamM->loai_sanpham_list($table_lsp, $table_dm);
    // nhà cung cấp
    $nhacungcapM = $this->load->model('nhacungcapM');
    $table_ncc = 'nhacungcap';
    $data['nhacungcap'] = $nhacungcapM->nhacungcap_list($table_ncc);
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = "sanpham.ma_sp='$ma_sp'";
    $data['sanpham_ma'] = $sanphamM->sanpham_ma($table_sp, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("sanpham/sanpham_edit", $data);
  }
  public function sanpham_update($ma_sp)
  {
    session::init();
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = "sanpham.ma_sp='$ma_sp'";
    $ten_sp = $_POST['ten_sp'];
    $gia_sp = $_POST['gia_sp'];
    $soluong_sp = $_POST['soluong_sp'];
    $thongtin_sp = $_POST['thongtin_sp'];
    $tinhtrang_sp = $_POST['tinhtrang_sp'];
    $ma_dm = $_POST['ma_dm'];
    $ma_ncc = $_POST['ma_ncc'];
    $ma_lsp = $_POST['ma_lsp'];
    $ma_th = $_POST['ma_th'];
    // Hình sản phầm
    $hinh_sp = $_FILES['hinh_sp']['name'];
    $file_temp_hinh = $_FILES['hinh_sp']['tmp_name'];
    $div_hinh = explode(' . ', $hinh_sp);
    $file_ext_hinh = strtolower(end($div_hinh));
    $unique_image_hinh = substr(md5(time()), 0, 10) . ' . ' . $file_ext_hinh;
    $uploaded_image_hinh = "public/uploads/sanpham/" . $unique_image_hinh;
    move_uploaded_file($file_temp_hinh, $uploaded_image_hinh);
    // Hình chi tiết sản phẩm
    $hinhchitiet_sp = $_FILES['hinhchitiet_sp']['name'];
    $file_temp = $_FILES['hinhchitiet_sp']['tmp_name'];
    $div = explode(' . ', $hinhchitiet_sp);
    $file_ext = strtolower(end($div));
    $unique_image = substr(md5(time()), 0, 10) . ' . ' . $file_ext;
    $uploaded_image = "public/uploads/sanpham/" . $unique_image;
    move_uploaded_file($file_temp, $uploaded_image);
    if ($_SESSION['dangnhap'] == true) {
      $ma_nv = session::get('ma_nv');
    }
    if ($hinh_sp && $hinhchitiet_sp) {
      $data['sanpham_ma'] = $sanphamM->sanpham_ma($table_sp, $dieukien);
      foreach ($data['sanpham_ma'] as $key => $sp) {
        if ($sp['hinh_sp'] && $sp['hinhchitiet_sp']) {
          unlink("public/uploads/sanpham/" . $sp['hinh_sp']);
          unlink("public/uploads/sanpham/" . $sp['hinhchitiet_sp']);
        }
      }
      $data = array(
        'ten_sp' => $ten_sp,
        'gia_sp' => $gia_sp,
        'soluong_sp' => $soluong_sp,
        'thongtin_sp' => $thongtin_sp,
        'tinhtrang_sp' => $tinhtrang_sp,
        'ma_dm' => $ma_dm,
        'ma_ncc' => $ma_ncc,
        'ma_lsp' => $ma_lsp,
        'ma_th' => $ma_th,
        'ma_nv' => $ma_nv,
        'hinh_sp' => $unique_image_hinh,
        'hinhchitiet_sp' => $unique_image
      );
      move_uploaded_file($file_temp_hinh, $uploaded_image_hinh);
      move_uploaded_file($file_temp, $uploaded_image);
    } else if ($hinh_sp) {
      $data['sanpham_ma'] = $sanphamM->sanpham_ma($table_sp, $dieukien);
      foreach ($data['sanpham_ma'] as $key => $sp) {
        if ($sp['hinh_sp']) {
          unlink("public/uploads/sanpham/" . $sp['hinh_sp']);
        }
      }
      $data = array(
        'ten_sp' => $ten_sp,
        'gia_sp' => $gia_sp,
        'soluong_sp' => $soluong_sp,
        'thongtin_sp' => $thongtin_sp,
        'tinhtrang_sp' => $tinhtrang_sp,
        'ma_dm' => $ma_dm,
        'ma_ncc' => $ma_ncc,
        'ma_lsp' => $ma_lsp,
        'ma_th' => $ma_th,
        'ma_nv' => $ma_nv,
        'hinh_sp' => $unique_image_hinh
      );
      move_uploaded_file($file_temp_hinh, $uploaded_image_hinh);
    } else if ($hinhchitiet_sp) {
      $data['sanpham_ma'] = $sanphamM->sanpham_ma($table_sp, $dieukien);
      foreach ($data['sanpham_ma'] as $key => $sp) {
        if ($sp['hinhchitiet_sp']) {
          unlink("public/uploads/sanpham/" . $sp['hinhchitiet_sp']);
        }
      }
      $data = array(
        'ten_sp' => $ten_sp,
        'gia_sp' => $gia_sp,
        'soluong_sp' => $soluong_sp,
        'thongtin_sp' => $thongtin_sp,
        'tinhtrang_sp' => $tinhtrang_sp,
        'ma_dm' => $ma_dm,
        'ma_ncc' => $ma_ncc,
        'ma_lsp' => $ma_lsp,
        'ma_th' => $ma_th,
        'ma_nv' => $ma_nv,
        'hinhchitiet_sp' => $unique_image
      );
      move_uploaded_file($file_temp, $uploaded_image);
    } else {
      $data = array(
        'ten_sp' => $ten_sp,
        'gia_sp' => $gia_sp,
        'soluong_sp' => $soluong_sp,
        'thongtin_sp' => $thongtin_sp,
        'tinhtrang_sp' => $tinhtrang_sp,
        'ma_dm' => $ma_dm,
        'ma_ncc' => $ma_ncc,
        'ma_lsp' => $ma_lsp,
        'ma_th' => $ma_th,
        'ma_nv' => $ma_nv
      );
    }
    $result = $sanphamM->sanpham_update($table_sp, $data, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sanpham");
  }
  public function sanpham_delete($ma_sp)
  {
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = "sanpham.ma_sp='$ma_sp'";
    if ($ma_sp) {
      $data['sanpham_ma'] = $sanphamM->sanpham_ma($table_sp, $dieukien);
      foreach ($data['sanpham_ma'] as $key => $sp) {
        if ($sp['hinh_sp'] && $sp['hinhchitiet_sp']) {
          unlink("public/uploads/sanpham/" . $sp['hinh_sp']);
          unlink("public/uploads/sanpham/" . $sp['hinhchitiet_sp']);
        }
      }
    }
    $result = $sanphamM->sanpham_delete($table_sp, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sanpham");
  }
  public function sanpham_timkiem()
  {
    session::init();
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    // danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model("danhmuc_sanphamM");
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    // thương hiệu sản phẩm
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table_th = 'thuonghieu';
    $data['thuonghieu'] = $thuonghieuM->thuonghieu_list($table_th);
    // loại sản phẩm
    $loai_sanphamM = $this->load->model('loai_sanphamM');
    $table_lsp = 'loai_sanpham';
    $data['loai_sanpham'] = $loai_sanphamM->loai_sanpham_list($table_lsp, $table_dm);
    // nhà cung cấp
    $nhacungcapM = $this->load->model('nhacungcapM');
    $table_ncc = 'nhacungcap';
    $data['nhacungcap'] = $nhacungcapM->nhacungcap_list($table_ncc);
    // nhân viên
    $nhanvienM = $this->load->model('nhanvienM');
    $table_nv = 'nhanvien';
    $data['nhanvien'] = $nhanvienM->nhanvien_list($table_nv);
    // sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "sanpham.ten_sp LIKE '%$tukhoa%'";
    $data['sanpham_timkiem'] = $sanphamM->sanpham_timkiem($table_sp, $dieukien);
    $this->load->view_admin("sanpham/sanpham_timkiem", $data);
  }



  //chi tiết sản phẩm
  public function sp_chitiet()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = 'sanpham.ma_dm = 8 OR sanpham.ma_dm = 10';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien);
    $data['sp_chitiet_list'] = $chitiet_sanphamM->sp_chitiet_list($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet", $data);
  }
  public function sp_chitiet_insert()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $ma_sp = $_POST['ma_sp'];
    $manhinh = $_POST['manhinh'];
    $hedieuhanh = $_POST['hedieuhanh'];
    $camera_truoc = $_POST['camera_truoc'];
    $camera_sau = $_POST['camera_sau'];
    $chip = $_POST['chip'];
    $ram = $_POST['ram'];
    $rom = $_POST['rom'];
    $sim = $_POST['sim'];
    $pin = $_POST['pin'];
    $data = array(
      'ma_sp' => $ma_sp,
      'manhinh' => $manhinh,
      'hedieuhanh' => $hedieuhanh,
      'camera_sau' => $camera_sau,
      'camera_truoc' => $camera_truoc,
      'chip' => $chip,
      'ram' => $ram,
      'rom' => $rom,
      'sim' => $sim,
      'pin' => $pin
    );
    $result = $chitiet_sanphamM->sp_chitiet_insert($table_ctsp, $data);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet");
  }
  public function sp_chitiet_edit($ma_ctsp)
  {
    session::init();
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    // $data['sanpham'] = $sanphamM->sanpham($table_sp);
    $dieukien1 = 'sanpham.ma_dm = 8 OR sanpham.ma_dm = 10';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien1);
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $data['sp_chitiet_ma'] = $chitiet_sanphamM->sp_chitiet_ma($table_ctsp, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("sanpham/sp_chitiet_edit", $data);
  }
  public function sp_chitiet_update($ma_ctsp)
  {
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $ma_sp = $_POST['ma_sp'];
    $manhinh = $_POST['manhinh'];
    $hedieuhanh = $_POST['hedieuhanh'];
    $camera_truoc = $_POST['camera_truoc'];
    $camera_sau = $_POST['camera_sau'];
    $chip = $_POST['chip'];
    $ram = $_POST['ram'];
    $rom = $_POST['rom'];
    $sim = $_POST['sim'];
    $pin = $_POST['pin'];
    $data = array(
      'ma_sp' => $ma_sp,
      'manhinh' => $manhinh,
      'hedieuhanh' => $hedieuhanh,
      'camera_sau' => $camera_sau,
      'camera_truoc' => $camera_truoc,
      'chip' => $chip,
      'ram' => $ram,
      'rom' => $rom,
      'sim' => $sim,
      'pin' => $pin
    );
    $result = $chitiet_sanphamM->sp_chitiet_update($table_ctsp, $data, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet");
  }
  public function sp_chitiet_timkiem()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham'] = $sanphamM->sanpham($table_sp);
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "sanpham.ten_sp LIKE '%$tukhoa%' AND sanpham.ma_dm = 8 OR sanpham.ma_dm = 10";
    $data['sp_chitiet_timkiem'] = $chitiet_sanphamM->sp_chitiet_timkiem($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_timkiem", $data);
  }
  public function sp_chitiet_delete($ma_ctsp)
  {
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $result = $chitiet_sanphamM->sp_chitiet_delete($table_ctsp, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet");
  }


  //chi tiết sản phẩm laptop
  public function sp_chitiet_laptop()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = 'sanpham.ma_dm = 9';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien);
    $data['sp_chitiet_laptop_list'] = $chitiet_sanphamM->sp_chitiet_list($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_laptop", $data);
  }
  public function sp_chitiet_laptop_insert()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $ma_sp = $_POST['ma_sp'];
    $cpu = $_POST['cpu'];
    $ram = $_POST['ram'];
    $rom = $_POST['rom'];
    $manhinh = $_POST['manhinh'];
    $card_manhinh = $_POST['card_manhinh'];
    $cong_ketnoi = $_POST['cong_ketnoi'];
    $hedieuhanh = $_POST['hedieuhanh'];
    $thietke = $_POST['thietke'];
    $kichthuoc = $_POST['kichthuoc'];
    $thoidiem_ramat = $_POST['thoidiem_ramat'];
    $data = array(
      'ma_sp' => $ma_sp,
      'cpu' => $cpu,
      'ram' => $ram,
      'rom' => $rom,
      'hedieuhanh' => $hedieuhanh,
      'manhinh' => $manhinh,
      'card_manhinh' => $card_manhinh,
      'cong_ketnoi' => $cong_ketnoi,
      'thietke' => $thietke,
      'kichthuoc' => $kichthuoc,
      'thoidiem_ramat' => $thoidiem_ramat
    );
    $result = $chitiet_sanphamM->sp_chitiet_insert($table_ctsp, $data);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_laptop");
  }
  public function sp_chitiet_laptop_edit($ma_ctsp)
  {
    session::init();
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    // $data['sanpham'] = $sanphamM->sanpham($table_sp);
    $dieukien1 = 'sanpham.ma_dm = 9';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien1);
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $data['sp_chitiet_ma'] = $chitiet_sanphamM->sp_chitiet_ma($table_ctsp, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("sanpham/sp_chitiet_laptop_edit", $data);
  }
  public function sp_chitiet_laptop_update($ma_ctsp)
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $ma_sp = $_POST['ma_sp'];
    $cpu = $_POST['cpu'];
    $ram = $_POST['ram'];
    $rom = $_POST['rom'];
    $manhinh = $_POST['manhinh'];
    $card_manhinh = $_POST['card_manhinh'];
    $cong_ketnoi = $_POST['cong_ketnoi'];
    $hedieuhanh = $_POST['hedieuhanh'];
    $thietke = $_POST['thietke'];
    $kichthuoc = $_POST['kichthuoc'];
    $thoidiem_ramat = $_POST['thoidiem_ramat'];
    $data = array(
      'ma_sp' => $ma_sp,
      'cpu' => $cpu,
      'ram' => $ram,
      'rom' => $rom,
      'hedieuhanh' => $hedieuhanh,
      'manhinh' => $manhinh,
      'card_manhinh' => $card_manhinh,
      'cong_ketnoi' => $cong_ketnoi,
      'thietke' => $thietke,
      'kichthuoc' => $kichthuoc,
      'thoidiem_ramat' => $thoidiem_ramat
    );
    $result = $chitiet_sanphamM->sp_chitiet_update($table_ctsp, $data, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_laptop");
  }
  public function sp_chitiet_laptop_timkiem()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham'] = $sanphamM->sanpham($table_sp);
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "sanpham.ten_sp LIKE '%$tukhoa%' AND sanpham.ma_dm=9";
    $data['sp_chitiet_timkiem'] = $chitiet_sanphamM->sp_chitiet_timkiem($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_laptop_timkiem", $data);
  }
  public function sp_chitiet_laptop_delete($ma_ctsp)
  {
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $result = $chitiet_sanphamM->sp_chitiet_delete($table_ctsp, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_laptop");
  }

  //chi tiết sản phẩm smartwatch
  public function sp_chitiet_smartwatch()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = 'sanpham.ma_dm = 11';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien);
    $data['sp_chitiet_smartwatch_list'] = $chitiet_sanphamM->sp_chitiet_list($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_smartwatch", $data);
  }
  public function sp_chitiet_smartwatch_insert()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $ma_sp = $_POST['ma_sp'];
    $manhinh = $_POST['manhinh'];
    $thoiluong_pin = $_POST['thoiluong_pin'];
    $hedieuhanh = $_POST['hedieuhanh'];
    $mat = $_POST['mat'];
    $tinhnang_suckhoe = $_POST['tinhnang_suckhoe'];
    $data = array(
      'ma_sp' => $ma_sp,
      'manhinh' => $manhinh,
      'thoiluong_pin' => $thoiluong_pin,
      'hedieuhanh' => $hedieuhanh,
      'mat' => $mat,
      'tinhnang_suckhoe' => $tinhnang_suckhoe
    );
    $result = $chitiet_sanphamM->sp_chitiet_insert($table_ctsp, $data);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_smartwatch");
  }
  public function sp_chitiet_smartwatch_edit($ma_ctsp)
  {
    session::init();
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    // $data['sanpham'] = $sanphamM->sanpham($table_sp);
    $dieukien1 = 'sanpham.ma_dm = 11';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien1);
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $data['sp_chitiet_ma'] = $chitiet_sanphamM->sp_chitiet_ma($table_ctsp, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("sanpham/sp_chitiet_smartwatch_edit", $data);
  }
  public function sp_chitiet_smartwatch_update($ma_ctsp)
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $ma_sp = $_POST['ma_sp'];
    $manhinh = $_POST['manhinh'];
    $thoiluong_pin = $_POST['thoiluong_pin'];
    $hedieuhanh = $_POST['hedieuhanh'];
    $mat = $_POST['mat'];
    $tinhnang_suckhoe = $_POST['tinhnang_suckhoe'];
    $data = array(
      'ma_sp' => $ma_sp,
      'manhinh' => $manhinh,
      'thoiluong_pin' => $thoiluong_pin,
      'hedieuhanh' => $hedieuhanh,
      'mat' => $mat,
      'tinhnang_suckhoe' => $tinhnang_suckhoe
    );
    $result = $chitiet_sanphamM->sp_chitiet_update($table_ctsp, $data, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_smartwatch");
  }
  public function sp_chitiet_smartwatch_timkiem()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham'] = $sanphamM->sanpham($table_sp);
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "sanpham.ten_sp LIKE '%$tukhoa%' AND sanpham.ma_dm=11";
    $data['sp_chitiet_timkiem'] = $chitiet_sanphamM->sp_chitiet_timkiem($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_smartwatch_timkiem", $data);
  }
  public function sp_chitiet_smartwatch_delete($ma_ctsp)
  {
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $result = $chitiet_sanphamM->sp_chitiet_delete($table_ctsp, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_smartwatch");
  }


  //chi tiết sản phẩm đồng hồ
  public function sp_chitiet_dongho()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = 'sanpham.ma_dm = 12';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien);
    $data['sp_chitiet_dongho_list'] = $chitiet_sanphamM->sp_chitiet_list($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_dongho", $data);
  }
  public function sp_chitiet_dongho_insert()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $ma_sp = $_POST['ma_sp'];
    $doituong_sudung = $_POST['doituong_sudung'];
    $duongkinh_mat = $_POST['duongkinh_mat'];
    $chatlieu_kinh = $_POST['chatlieu_kinh'];
    $chatlieu_day = $_POST['chatlieu_day'];
    $chongnuoc = $_POST['chongnuoc'];
    $data = array(
      'ma_sp' => $ma_sp,
      'doituong_sudung' => $doituong_sudung,
      'duongkinh_mat' => $duongkinh_mat,
      'chatlieu_kinh' => $chatlieu_kinh,
      'chatlieu_day' => $chatlieu_day,
      'chongnuoc' => $chongnuoc
    );
    $result = $chitiet_sanphamM->sp_chitiet_insert($table_ctsp, $data);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_dongho");
  }
  public function sp_chitiet_dongho_edit($ma_ctsp)
  {
    session::init();
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien1 = 'sanpham.ma_dm = 12';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien1);
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $data['sp_chitiet_ma'] = $chitiet_sanphamM->sp_chitiet_ma($table_ctsp, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("sanpham/sp_chitiet_dongho_edit", $data);
  }
  public function sp_chitiet_dongho_update($ma_ctsp)
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $ma_sp = $_POST['ma_sp'];
    $doituong_sudung = $_POST['doituong_sudung'];
    $duongkinh_mat = $_POST['duongkinh_mat'];
    $chatlieu_kinh = $_POST['chatlieu_kinh'];
    $chatlieu_day = $_POST['chatlieu_day'];
    $chongnuoc = $_POST['chongnuoc'];
    $data = array(
      'ma_sp' => $ma_sp,
      'doituong_sudung' => $doituong_sudung,
      'duongkinh_mat' => $duongkinh_mat,
      'chatlieu_kinh' => $chatlieu_kinh,
      'chatlieu_day' => $chatlieu_day,
      'chongnuoc' => $chongnuoc
    );
    $result = $chitiet_sanphamM->sp_chitiet_update($table_ctsp, $data, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_dongho");
  }
  public function sp_chitiet_dongho_timkiem()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham'] = $sanphamM->sanpham($table_sp);
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "sanpham.ten_sp LIKE '%$tukhoa%' AND sanpham.ma_dm=12";
    $data['sp_chitiet_timkiem'] = $chitiet_sanphamM->sp_chitiet_timkiem($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_dongho_timkiem", $data);
  }
  public function sp_chitiet_dongho_delete($ma_ctsp)
  {
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $result = $chitiet_sanphamM->sp_chitiet_delete($table_ctsp, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_dongho");
  }

  //chi tiết sản phẩm máy tính để bàn
  public function sp_chitiet_maytinh()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = 'sanpham.ma_dm = 13';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien);
    $data['sp_chitiet_maytinh_list'] = $chitiet_sanphamM->sp_chitiet_list($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_maytinh", $data);
  }
  public function sp_chitiet_maytinh_insert()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $ma_sp = $_POST['ma_sp'];
    $congnghe_cpu = $_POST['congnghe_cpu'];
    $ram = $_POST['ram'];
    $rom = $_POST['rom'];
    $manhinh = $_POST['manhinh'];
    $card_manhinh = $_POST['card_manhinh'];
    $cong_ketnoi = $_POST['cong_ketnoi'];
    $hedieuhanh = $_POST['hedieuhanh'];
    $kichthuoc = $_POST['kichthuoc'];
    $data = array(
      'ma_sp' => $ma_sp,
      'congnghe_cpu' => $congnghe_cpu,
      'ram' => $ram,
      'rom' => $rom,
      'manhinh' => $manhinh,
      'card_manhinh' => $card_manhinh,
      'cong_ketnoi' => $cong_ketnoi,
      'hedieuhanh' => $hedieuhanh,
      'kichthuoc' => $kichthuoc
    );
    $result = $chitiet_sanphamM->sp_chitiet_insert($table_ctsp, $data);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_maytinh");
  }
  public function sp_chitiet_maytinh_edit($ma_ctsp)
  {
    session::init();
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien1 = 'sanpham.ma_dm = 13';
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien1);
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $data['sp_chitiet_ma'] = $chitiet_sanphamM->sp_chitiet_ma($table_ctsp, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("sanpham/sp_chitiet_maytinh_edit", $data);
  }
  public function sp_chitiet_maytinh_update($ma_ctsp)
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $ma_sp = $_POST['ma_sp'];
    $congnghe_cpu = $_POST['congnghe_cpu'];
    $ram = $_POST['ram'];
    $rom = $_POST['rom'];
    $manhinh = $_POST['manhinh'];
    $card_manhinh = $_POST['card_manhinh'];
    $cong_ketnoi = $_POST['cong_ketnoi'];
    $hedieuhanh = $_POST['hedieuhanh'];
    $kichthuoc = $_POST['kichthuoc'];
    $data = array(
      'ma_sp' => $ma_sp,
      'congnghe_cpu' => $congnghe_cpu,
      'ram' => $ram,
      'rom' => $rom,
      'manhinh' => $manhinh,
      'card_manhinh' => $card_manhinh,
      'cong_ketnoi' => $cong_ketnoi,
      'hedieuhanh' => $hedieuhanh,
      'kichthuoc' => $kichthuoc
    );
    $result = $chitiet_sanphamM->sp_chitiet_update($table_ctsp, $data, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_maytinh");
  }
  public function sp_chitiet_maytinh_timkiem()
  {
    session::init();
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham'] = $sanphamM->sanpham($table_sp);
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "sanpham.ten_sp LIKE '%$tukhoa%' AND sanpham.ma_dm=13";
    $data['sp_chitiet_timkiem'] = $chitiet_sanphamM->sp_chitiet_timkiem($table_sp, $table_ctsp, $dieukien);
    $this->load->view_admin("sanpham/sp_chitiet_maytinh_timkiem", $data);
  }
  public function sp_chitiet_maytinh_delete($ma_ctsp)
  {
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    $dieukien = "chitiet_sanpham.ma_ctsp='$ma_ctsp'";
    $result = $chitiet_sanphamM->sp_chitiet_delete($table_ctsp, $dieukien);
    header("Location:" . BASE_URL . "sanpham/sp_chitiet_maytinh");
  }



  //hình sản phẩm
  public function hinh()
  {
    session::init();
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    // sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham'] = $sanphamM->sanpham($table_sp);
    //hình
    $hinhM = $this->load->model('hinhM');
    $table_h = 'hinh';
    $data['hinh'] = $hinhM->hinh_list($table_h, $table_sp);
    $this->load->view_admin("sanpham/hinh", $data);
  }
  public function hinh_insert()
  {
    session::init();
    $hinhM = $this->load->model('hinhM');
    $table_h = 'hinh';
    $ma_sp = $_POST['ma_sp'];
    $hinh = $_FILES['hinh']['name'];
    $file_temp = $_FILES['hinh']['tmp_name'];
    $div = explode(' . ', $hinh);
    $file_ext = strtolower(end($div));
    $unique_image = substr(md5(time()), 0, 10) . ' . ' . $file_ext;
    $uploaded_image = "public/uploads/hinh_chitiet/" . $unique_image;
    move_uploaded_file($file_temp, $uploaded_image);
    $data = array(
      'ma_sp' => $ma_sp,
      'hinh' => $unique_image
    );
    $result = $hinhM->hinh_insert($table_h, $data);
    header("Location:" . BASE_URL . "sanpham/hinh");
  }
  public function hinh_edit($ma_h){
    session::init();
    // sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham'] = $sanphamM->sanpham($table_sp);
    //hình
    $hinhM = $this->load->model('hinhM');
    $table_h = 'hinh';
    $dieukien = "hinh.ma_h='$ma_h'" ;
    $data['hinh_ma'] = $hinhM->hinh_ma($table_h, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("sanpham/hinh_edit", $data);
  }
  public function hinh_update($ma_h){
    session::init();
    $hinhM = $this->load->model('hinhM');
    $table_h = 'hinh';
    $dieukien = "hinh.ma_h='$ma_h'" ;
    $ma_sp = $_POST['ma_sp'];

    $hinh = $_FILES['hinh']['name'];
    $file_temp = $_FILES['hinh']['tmp_name'];
    $div = explode(' . ', $hinh);
    $file_ext = strtolower(end($div));
    $unique_image = substr(md5(time()), 0, 10) . ' . ' . $file_ext;
    $uploaded_image = "public/uploads/hinh_chitiet/" . $unique_image;
    if($hinh){
      $data['hinh_ma'] = $hinhM->hinh_ma($table_h, $dieukien);
      foreach ($data['hinh_ma'] as $key => $h){
        if($h['hinh']){
          unlink("public/uploads/hinh_chitiet/".$h['hinh']);
        }
      }
      $data = array(
        'ma_sp' => $ma_sp,
        'hinh' => $unique_image
      );
      move_uploaded_file($file_temp, $uploaded_image);
    }else{
      $data = array(
        'ma_sp' => $ma_sp
      );
    }
    $result = $hinhM->hinh_update($table_h, $data, $dieukien);
    header("Location:".BASE_URL."sanpham/hinh");
  }
  public function hinh_delete($ma_h){
    $hinhM = $this->load->model('hinhM');
    $table_h = 'hinh';
    $dieukien = "hinh.ma_h='$ma_h'" ;
    if($ma_h){
      $data['hinh_ma'] = $hinhM->hinh_ma($table_h, $dieukien);
      foreach ($data['hinh_ma'] as $key => $h){
        if($h['hinh']){
          unlink("public/uploads/hinh_chitiet/".$h['hinh']);
        }
      }
    }
    $result = $hinhM->hinh_delete($table_h, $dieukien);
    header("Location:" . BASE_URL . "sanpham/hinh");
  }
  public function hinh_timkiem(){
    session::init();
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    // sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    //hinh
    $hinhM = $this->load->model('hinhM');
    $table_h = 'hinh';
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "sanpham.ten_sp LIKE '%$tukhoa%'" ;
    $data ['hinh_timkiem'] = $hinhM->hinh_timkiem($table_sp, $table_h, $dieukien);
    $this->load->view_admin("sanpham/hinh_timkiem", $data);
  }
}
