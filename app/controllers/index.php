<?php
class index extends controller
{
  public function __construct()
  {
    $data = array();
    parent::__construct();
  }
  public function index()
  {
    //danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);

    $this->load->view_user("header", $data);
    $this->load->view_user("slider");
    //thương hiệu
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table_th = 'thuonghieu';
    $data['thuonghieu'] = $thuonghieuM->thuonghieu_limit($table_th);

    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $data['sanpham_limit1'] = $sanphamM->sanpham_limit1($table_sp, $table_dm);
    $data['sanpham_limit'] = $sanphamM->sanpham_limit($table_sp,$table_dm);
    $data['sanpham_dt_limit'] = $sanphamM->sanpham_dt_limit($table_sp);
    $this->load->view_user("trangchu", $data);
    $this->load->view_user("footer");
  }
  public function timkiem_sp(){
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    //danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);

    $this->load->view_user("header", $data);
    // $this->load->view_user("slider");
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "sanpham.ten_sp LIKE '%$tukhoa%'" ;
    $data['Usanpham_timkiem'] = $sanphamM->Usanpham_timkiem($table_sp, $table_dm, $dieukien);
    $this->load->view_user("timkiem",$data);
    $this->load->view_user("footer");
  }
}
