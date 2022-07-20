<?php
  class nhanvien extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
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
?>