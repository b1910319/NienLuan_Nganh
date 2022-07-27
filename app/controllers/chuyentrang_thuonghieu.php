<?php
class chuyentrang_thuonghieu extends controller
{
  public function __construct()
  {
    $data = array();
    parent::__construct();
  }
  public function samsung($ma_th){
    //danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    //danh mục thương hiệu
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    $table_dmth = 'danhmuc_thuonghieu';
    //thuơng hiệu
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table_th = 'thuonghieu';
    // sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    //hiển thị danh mục theo thương hiệu
    $dieukien1 = "danhmuc_thuonghieu.ma_th = '$ma_th'";
    $data['danhmuc_ma_thuonghieu'] = $danhmuc_thuonghieuM->danhmuc_ma_thuonghieu($table_dmth, $table_dm, $table_th, $dieukien1);
    //màu
    $mauM = $this->load->model('mauM');
    $table_m = 'mau';
    //màu sản phẩm
    $mau_sanphamM = $this->load->model("mau_sanphamM");
    $table_msp = 'mau_sanpham';
    //hiển thị điện thoại
    $dieukien2 = "sanpham.ma_dm = 8 AND sanpham.ma_th = '$ma_th'";
    $data['sanpham_ctth'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien2);
    $this->load->view_user("header", $data);
    $this->load->view_user("chuyentrang_thuonghieu/samsung", $data);
  }
}
