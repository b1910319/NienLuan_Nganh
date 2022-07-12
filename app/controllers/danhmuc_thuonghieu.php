<?php
class danhmuc_thuonghieu extends controller
{
  public function __construct()
  {
    $data = array();
    $thongbao = array();
    parent::__construct();
  }
  public function danhmuc_thuonghieu()
  {
    session::init();
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $danhmuc_sanphamM = $this->load->model("danhmuc_sanphamM");
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table_th = 'thuonghieu';
    $data['thuonghieu'] = $thuonghieuM->thuonghieu_list($table_th);
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    $table_dmth = 'danhmuc_thuonghieu';
    $data['danhmuc_thuongieu'] = $danhmuc_thuonghieuM->danhmuc_thuonghieu_list($table_dm, $table_th, $table_dmth);
    $this->load->view_admin("danhmuc_thuonghieu/danhmuc_thuonghieu", $data);
  }
  public function danhmuc_thuonghieu_insert(){
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    $table = 'danhmuc_thuonghieu';
    $ma_dm = $_POST['ma_dm'];
    $ma_th = $_POST['ma_th'];
    $data = array(
      'ma_dm' => $ma_dm,
      'ma_th' => $ma_th
    );
    $result = $danhmuc_thuonghieuM->danhmuc_thuonghieu_insert($table, $data);
    header("Location:".BASE_URL."danhmuc_thuonghieu/danhmuc_thuonghieu");
  }
  public function danhmuc_thuonghieu_edit($ma_dm, $ma_th){
    session::init();
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    $table = 'danhmuc_thuonghieu';
    $dieukien = "danhmuc_thuonghieu.ma_dm='$ma_dm' AND danhmuc_thuonghieu.ma_th ='$ma_th'" ;
    $danhmuc_sanphamM = $this->load->model("danhmuc_sanphamM");
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table_th = 'thuonghieu';
    $data['thuonghieu'] = $thuonghieuM->thuonghieu_list($table_th);
    $data['danhmuc_thuonghieu_ma'] = $danhmuc_thuonghieuM->danhmuc_thuonghieu_ma($table, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("danhmuc_thuonghieu/danhmuc_thuonghieu_edit", $data);
  }
  public function danhmuc_thuonghieu_update($ma_dm, $ma_th){
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    $table = 'danhmuc_thuonghieu';
    $dieukien = "danhmuc_thuonghieu.ma_dm='$ma_dm' AND danhmuc_thuonghieu.ma_th ='$ma_th'" ;
    $ma_dm = $_POST['ma_dm'];
    $ma_th = $_POST['ma_th'];
    $data = array(
      'ma_dm' => $ma_dm,
      'ma_th' => $ma_th
    );
    $result = $danhmuc_thuonghieuM->danhmuc_thuonghieu_update($table, $data, $dieukien);
    header("Location:".BASE_URL."danhmuc_thuonghieu/danhmuc_thuonghieu");
  }
  public function danhmuc_thuonghieu_delete($ma_dm, $ma_th){
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    $table = 'danhmuc_thuonghieu';
    $dieukien = "danhmuc_thuonghieu.ma_dm='$ma_dm' AND danhmuc_thuonghieu.ma_th ='$ma_th'" ;
    $result = $danhmuc_thuonghieuM->danhmuc_thuonghieu_delete($table, $dieukien);
    header("Location:".BASE_URL."danhmuc_thuonghieu/danhmuc_thuonghieu");
  }
  // public function danhmuc_thuonghieu_timkiem(){
  //   session::init();
  //   $this->load->view_admin("header");
  //   $this->load->view_admin("leftmenu");
  //   $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
  //   $table = 'danhmuc_thuonghieu';
  //   $tukhoa = $_POST['tukhoa'];
  //   $dieukien = "danhmuc_tintuc.ten_dmtt LIKE '%$tukhoa%'" ;
  //   $data ['danhmuc_tintuc_timkiem'] = $danhmuc_thuonghieuM->danhmuc_tintuc_timkiem($table, $dieukien);
  //   $this->load->view_admin("danhmuc_tintuc/danhmuc_tintuc_timkiem", $data);
  // }
}
