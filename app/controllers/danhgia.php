<?php
  class danhgia extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
    public function danhgia(){
      session::init();
      $this->load->view_admin("header");
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $level=session::get('level');
      if($level == 1){
        $this->load->view_admin("leftmenu", $data);
      }else if($level == 2){
        $this->load->view_admin("leftmenu_nhanvien", $data);
      }
      $danhgiaM = $this->load->model('danhgiaM');
      $table_dg = 'danhgia';
      $table_sp = "sanpham";
      $table_dm = "danhmuc_sanpham";
      $table_th = "thuonghieu";
      $data ['danhgia'] = $danhgiaM->danhgia_list($table_dg, $table_sp, $table_dm, $table_th);
      $this->load->view_admin("danhgia/danhgia", $data); 
    }
    public function thongke(){
      session::init();
      $this->load->view_admin("header");
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $level=session::get('level');
      if($level == 1){
        $this->load->view_admin("leftmenu", $data);
      }else if($level == 2){
        $this->load->view_admin("leftmenu_nhanvien", $data);
      }
      $danhgiaM = $this->load->model('danhgiaM');
      $table_dg = 'danhgia';
      $table_sp = "sanpham";
      // $table_dm = "danhmuc_sanpham";
      // $table_th = "thuonghieu";
      $data ['count_sao'] = $danhgiaM->count_sao($table_sp,$table_dg);
      $data['count_sao_chitiet'] = $danhgiaM->count_sao_chitiet($table_sp,$table_dg);
      $this->load->view_admin("danhgia/danhgia_thongke", $data); 
    }
    public function danhgia_insert(){
      session::init();
      $danhgiaM = $this->load->model('danhgiaM');
      $table = 'danhgia';
      $ten_k = $_POST['ten_k'];
      $noidung_dg = $_POST['noidung_dg'];
      $sosao_dg = $_POST['sosao_dg'];
      $ma_sp = $_POST['ma_sp'];
      $data = array(
        'ten_k' => $ten_k,
        'noidung_dg' => $noidung_dg,
        'sosao_dg' => $sosao_dg,
        'ma_sp' => $ma_sp
      );
      $result = $danhgiaM->danhgia_insert($table, $data);
      $sanphamM = $this->load->model('sanphamM');
      $table_sp = 'sanpham';
      $dieukien = "sanpham.ma_sp = '$ma_sp'";
      $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
      $table_dm = 'danhmuc_sanpham';
      $data['sanpham_ma'] = $sanphamM->sanpham_ma($table_sp, $dieukien);
      if($data['sanpham_ma']){
        foreach($data['sanpham_ma'] as $sp_m){
          $ma_dm = $sp_m['ma_dm'];
          $dieukien1 = "danhmuc_sanpham.ma_dm = '$ma_dm'";
          $data['danhmuc_ma'] = $danhmuc_sanphamM->danhmuc_sanpham_ma($table_dm, $dieukien1);
          if($data['danhmuc_ma']){
            foreach($data['danhmuc_ma'] as $dm_m){
              header("Location:".BASE_URL.'/'.$dm_m['ghichu_dm'].'/chitiet_sanpham'.'/'.$sp_m['ma_sp'].'/'.$sp_m['ma_th'].'/'.$ma_dm);
            }
          }
        }
      }
    }
    // public function khuyenmai_edit($ma_km){
    //   session::init();
    //   $this->load->view_admin("header");
    //   //đơn hàng
    //   $table_dh = "donhang";
    //   $donhangM = $this->load->model('donhangM');
    //   $dieukien = 'donhang.tinhtrang_dh = 0';
    //   $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien);
    //   $dieukien_vc = 'donhang.tinhtrang_dh = 1';
    //   $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
    //   $dieukien_dg = 'donhang.tinhtrang_dh = 2';
    //   $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
    //   $level=session::get('level');
    //   if($level == 1){
    //     $this->load->view_admin("leftmenu", $data);
    //   }else if($level == 2){
    //     $this->load->view_admin("leftmenu_nhanvien", $data);
    //   }

    //   $khuyenmaiM = $this->load->model('khuyenmaiM');
    //   $table_km = 'khuyenmai';
    //   $dieukien_km = "khuyenmai.ma_km = '$ma_km'";
    //   $data['khuyenmai_ma'] = $khuyenmaiM->khuyenmai_ma($table_km, $dieukien_km);
    //   $this->load->view_admin("khuyenmai/khuyenmai_edit", $data);
    // }
    // public function khuyenmai_update($ma_km){
    //   session::init();
    //   $khuyenmaiM = $this->load->model('khuyenmaiM');
    //   $table_km = 'khuyenmai';
    //   $dieukien = "khuyenmai.ma_km='$ma_km'" ;
    //   $ten_km = $_POST['ten_km'];
    //   $phantram_km = $_POST['phantram_km'];
    //   $dieukien_km = $_POST['dieukien_km'];
    //   $batdau_km = $_POST['batdau_km'];
    //   $ketthuc_km = $_POST['ketthuc_km'];
    //   $soluong_km = $_POST['soluong_km'];
    //   $loai_km = $_POST['loai_km'];
    //   $data = array(
    //     'ten_km' => $ten_km,
    //     'phantram_km' => $phantram_km,
    //     'dieukien_km' => $dieukien_km,
    //     'batdau_km' => $batdau_km,
    //     'ketthuc_km' => $ketthuc_km,
    //     'soluong_km' => $soluong_km,
    //     'loai_km' => $loai_km
    //   );
    //   $result = $khuyenmaiM->khuyenmai_update($table_km, $data, $dieukien);
    //   header("Location:".BASE_URL."khuyenmai/khuyenmai");
    // }
    // public function khuyenmai_an($ma_km){
    //   session::init();
    //   $khuyenmaiM = $this->load->model('khuyenmaiM');
    //   $table_km = 'khuyenmai';
    //   $dieukien = "khuyenmai.ma_km='$ma_km'" ;
    //   $data = array(
    //     'tinhtrang_km' => 1
    //   );
    //   $result = $khuyenmaiM->khuyenmai_update($table_km, $data, $dieukien);
    //   header("Location:".BASE_URL."khuyenmai/khuyenmai");
    // }
    // public function khuyenmai_hien($ma_km){
    //   session::init();
    //   $khuyenmaiM = $this->load->model('khuyenmaiM');
    //   $table_km = 'khuyenmai';
    //   $dieukien = "khuyenmai.ma_km='$ma_km'" ;
    //   $data = array(
    //     'tinhtrang_km' => 0
    //   );
    //   $result = $khuyenmaiM->khuyenmai_update($table_km, $data, $dieukien);
    //   header("Location:".BASE_URL."khuyenmai/khuyenmai");
    // }
    // public function khuyenmai_delete($ma_km){
    //   session::init();
    //   $khuyenmaiM = $this->load->model('khuyenmaiM');
    //   $table_km = 'khuyenmai';
    //   $dieukien_km = "khuyenmai.ma_km = '$ma_km'";
    //   $result = $khuyenmaiM->khuyenmai_delete($table_km, $dieukien_km);
    //   header("Location:".BASE_URL."khuyenmai/khuyenmai");
    // }
    public function danhgia_deleteAll()
    {
      session::init();
      $level=session::get('level');
      if($level == 1){
        $danhgiaM = $this->load->model('danhgiaM');
        $table = 'danhgia';
        $result = $danhgiaM->danhgia_deleteAll($table);
        header("Location:" . BASE_URL . "danhgia/danhgia");
      }else if($level == 2){
        header("Location:".BASE_URL."nhanvien/index");
      }
    }
    public function danhgia_timkiem(){
      session::init();
      $this->load->view_admin("header");
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $this->load->view_admin("leftmenu", $data);
      $danhgiaM = $this->load->model('danhgiaM');
      $table_dg = 'danhgia';
      $table_sp = "sanpham";
      $table_dm = "danhmuc_sanpham";
      $table_th = "thuonghieu";
      $tukhoa = $_POST['tukhoa'];
      $dieukien_dg = "sanpham.ten_sp LIKE '%$tukhoa%'" ;
      $data ['danhgia'] = $danhgiaM->danhgia_timkiem($table_dg, $table_sp, $table_dm, $table_th, $dieukien_dg);
      $this->load->view_admin("danhgia/danhgia_timkiem", $data); 
    }
    public function thongke_timkiem(){
      session::init();
      $this->load->view_admin("header");
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $this->load->view_admin("leftmenu", $data);
      $danhgiaM = $this->load->model('danhgiaM');
      $table_dg = 'danhgia';
      $table_sp = "sanpham";
      $tukhoa = $_POST['tukhoa'];
      $dieukien_tk = "sanpham.ten_sp LIKE '%$tukhoa%'" ;
      $data ['danhgia_thongke_timkiem'] = $danhgiaM->danhgia_thongke_timkiem($table_dg, $table_sp, $dieukien_tk);
      $data['count_sao_chitiet'] = $danhgiaM->count_sao_chitiet($table_sp,$table_dg);
      $this->load->view_admin("danhgia/danhgia_thongke_timkiem", $data); 
    }
  }
?>