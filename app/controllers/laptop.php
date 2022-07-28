<?php
class laptop extends controller
{
  public function __construct()
  {
    $data = array();
    parent::__construct();
  }
  public function sanpham($ma_dm)
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
    //danh mục - thương hiệu
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    $table_dmth = 'danhmuc_thuonghieu';
    $dieukien = "danhmuc_thuonghieu.ma_dm = '$ma_dm'";
    $data['thuonghieu_ma_dm'] = $danhmuc_thuonghieuM->thuonghieu_ma_dm($table_th, $table_dm, $table_dmth, $dieukien);
    //loại sản phẩm
    $loai_sanphamM = $this->load->model('loai_sanphamM');
    $table_lsp = 'loai_sanpham';
    $dieukien1 = "loai_sanpham.ma_dm = '$ma_dm'";
    $data['loai_sanpham_ma'] = $loai_sanphamM->loai_sanpham_ma($table_lsp, $dieukien1);
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien2 = "sanpham.ma_lsp = '11' and sanpham.ma_dm = '$ma_dm'";
    $data['sanpham_deal1'] = $sanphamM->sanpham_deal1($table_sp,$table_dm, $dieukien2);
    $data['sanpham_deal'] = $sanphamM->sanpham_deal($table_sp, $table_dm, $dieukien2);
    $dieukien3 = "sanpham.ma_lsp = '12' and sanpham.ma_dm = '$ma_dm'";
    $data['sanpham_gaming'] = $sanphamM -> sanpham_deal($table_sp, $table_dm, $dieukien3);
    $dieukien4 = "sanpham.ma_lsp = '15' and sanpham.ma_dm = '$ma_dm'";
    $data['sanpham_hoctap'] = $sanphamM -> sanpham_deal($table_sp, $table_dm, $dieukien4);
    $this->load->view_user("laptop/header_laptop", $data);
    $this->load->view_user("laptop/sanpham", $data);
    $this->load->view_user("footer");
  }
}
