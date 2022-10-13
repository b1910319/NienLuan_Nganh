<?php
  class nhanvien extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
    //giao diện của nhân viên có level 2 khi đăng nhập vào
    public function index(){
      $this->trangchu();
    }
    public function trangchu(){
      session::checksession();
      $this->load->view_admin("header");
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien_m = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien_m);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $this->load->view_admin("leftmenu_nhanvien", $data);
      //tổng số đơn hàng của nhân viên
      $ma_nv = session::get('ma_nv');
      $dieukien = "donhang.ma_nv = '$ma_nv' ";
      $data['donhang'] = $donhangM ->donhang_nv($table_dh, $dieukien);

      //doanh thu hôm nay của nhân viên
      $ngay = date("d/m/Y");
      $data['doanhthu_homnay'] = $donhangM->doanhthu_homnay_nv ($table_dh, $ngay, $dieukien);
      //doanh thu của nhân viên
      $data['doanhthu_nv'] = $donhangM->doanhthu_nv ($table_dh, $dieukien);
      //sản phẩm
      $sanphamM = $this->load->model('sanphamM');
      $table_sp = 'sanpham';
      $data['sanpham'] = $sanphamM->sanpham($table_sp);
      //thống kê ngày
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      //chi tiết đơn hàng
      $table_ctdh = 'chitiet_donhang';
      $chitiet_donhangM = $this->load->model('chitiet_donhangM');

      $data['soluong_ngay'] = $donhangM->soluong_ngay_nv($table_dh, $table_sp, $table_ctdh, $dieukien);
      $data['tongtien_ngay'] = $donhangM->tongtien_ngay_nv($table_dh, $dieukien);
      $data['count_sp_ngay'] = $donhangM->count_sp_ngay_nv($table_dh, $table_ctdh, $table_sp, $dieukien);
      //thống kê tháng
      $data['soluong_thang'] = $donhangM->soluong_thang_nv($table_dh, $table_sp, $table_ctdh, $dieukien); 
      $data['tongtien_thang'] = $donhangM->tongtien_thang_nv($table_dh, $dieukien);
      $data['count_sp_thang'] = $donhangM->count_sp_thang_nv($table_dh, $table_ctdh, $table_sp, $dieukien);
      //thống kê nam
      $data['soluong_nam'] = $donhangM->soluong_nam_nv($table_dh, $table_sp, $table_ctdh, $dieukien);
      $data['tongtien_nam'] = $donhangM->tongtien_nam_nv($table_dh, $dieukien);
      $data['count_sp_nam'] = $donhangM->count_sp_nam_nv($table_dh, $table_ctdh, $table_sp, $dieukien);
      $this->load->view_admin("trangchu_nhanvien", $data);
    }
    // 
    public function nhanvien(){
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
      $nhanvienM = $this->load->model('nhanvienM');
      $table = 'nhanvien';
      $data ['nhanvien'] = $nhanvienM->nhanvien_list($table);
      $this->load->view_admin("nhanvien/nhanvien", $data); 
    }
    public function nhanvien_insert(){
      $nhanvienM = $this->load->model('nhanvienM');
      $table_nv = 'nhanvien';
      $ten_nv = $_POST['ten_nv'];
      $user_nv = $_POST['user_nv'];
      $pass_nv = md5($_POST['pass_nv']);
      $sdt_nv = $_POST['sdt_nv'];
      $diachi_nv = $_POST['diachi_nv'];
      $data = array(
        'ten_nv' => $ten_nv,
        'user_nv' => $user_nv ,
        'pass_nv' => $pass_nv ,
        'sdt_nv' => $sdt_nv ,
        'diachi_nv' => $diachi_nv 
      );
      $result = $nhanvienM->nhanvien_insert($table_nv, $data);
      header("Location:".BASE_URL."nhanvien/nhanvien");
    }
    public function nhanvien_edit($ma_nv){
      session::init();
      $nhanvienM = $this->load->model('nhanvienM');
      $table_nv = 'nhanvien';
      $dieukien = "nhanvien.ma_nv='$ma_nv'" ;
      $data['nhanvien_ma'] = $nhanvienM->nhanvien_ma($table_nv, $dieukien);
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
      $this->load->view_admin("nhanvien/nhanvien_edit", $data);
    }
    public function nhanvien_update($ma_nv){
      $nhanvienM = $this->load->model('nhanvienM');
      $table_nv = 'nhanvien';
      $dieukien = "nhanvien.ma_nv='$ma_nv'" ;
      $ten_nv = $_POST['ten_nv'];
      $sdt_nv = $_POST['sdt_nv'];
      $diachi_nv = $_POST['diachi_nv'];
      $data = array(
        'ten_nv' => $ten_nv,
        'sdt_nv' => $sdt_nv ,
        'diachi_nv' => $diachi_nv 
      );
      $result = $nhanvienM->nhanvien_update($table_nv, $data, $dieukien);
      header("Location:".BASE_URL."nhanvien/nhanvien");
    }
    public function nhanvien_delete($ma_nv){
      $nhanvienM = $this->load->model('nhanvienM');
      $table_nv = 'nhanvien';
      $dieukien = "nhanvien.ma_nv='$ma_nv'" ;
      $result = $nhanvienM->nhanvien_delete($table_nv, $dieukien);
      header("Location:".BASE_URL."nhanvien/nhanvien");
    }
    public function nhanvien_timkiem(){
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
      $nhanvienM = $this->load->model('nhanvienM');
      $table_nv = 'nhanvien';
      $tukhoa = $_POST['tukhoa'];
      $dieukien = "nhanvien.ten_nv LIKE '%$tukhoa%'" ;
      $data ['nhanvien_timkiem'] = $nhanvienM->nhanvien_timkiem($table_nv, $dieukien);
      $this->load->view_admin("nhanvien/nhanvien_timkiem", $data);
    }
  }
