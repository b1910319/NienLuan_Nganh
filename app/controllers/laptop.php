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
    $dieukien5 = "sanpham.ma_lsp = '16' and sanpham.ma_dm = '$ma_dm'";
    $data['sanpham_dohoa'] = $sanphamM -> sanpham_deal($table_sp, $table_dm, $dieukien5);
    $dieukien6 = "sanpham.ma_lsp = '17' and sanpham.ma_dm = '$ma_dm'";
    $data['sanpham_nhe'] = $sanphamM -> sanpham_deal($table_sp, $table_dm, $dieukien6);
    $dieukien7 = "sanpham.ma_lsp = '18' and sanpham.ma_dm = '$ma_dm'";
    $data['sanpham_sangtrong'] = $sanphamM -> sanpham_deal($table_sp, $table_dm, $dieukien7);
    $this->load->view_user("laptop/header_laptop", $data);
    $this->load->view_user("laptop/sanpham", $data);
    $this->load->view_user("footer");
  }
  public function chitiet_sanpham($ma_sp, $ma_th, $ma_dm)
  {
    //danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    //chi tiết sản phẩm
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';
    //màu sản phẩm
    $mau_sanphamM = $this->load->model("mau_sanphamM");
    $table_msp = 'mau_sanpham';
    //loại sản phẩm
    $loai_sanphamM = $this->load->model('loai_sanphamM');
    $table_lsp = 'loai_sanpham';
    //thương hiệu
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table_th = 'thuonghieu';
    //hình
    $hinhM = $this->load->model('hinhM');
    $table_hsp = 'hinh';
    $this->load->view_user("header", $data);
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    //màu
    $mauM = $this->load->model('mauM');
    $table_m = 'mau';

    $dieukien = "sanpham.ma_sp = '$ma_sp'";
    $data['sanpham_ma'] = $sanphamM->Usanpham_ma($table_sp, $table_dm, $table_ctsp, $table_msp, $table_th, $table_lsp, $table_hsp, $dieukien);
    //sản phẩm tương tự
    $dieukien_sp_tuongtu = "sanpham.ma_th = '$ma_th' AND sanpham.ma_dm = '$ma_dm'";
    $data['sanpham_tuongtu'] = $sanphamM->Usanpham_tuongtu($table_sp, $dieukien_sp_tuongtu);
    
    $dieukien1 = "hinh.ma_sp = '$ma_sp'";

    $data['hinh_limit1'] = $hinhM->hinh_limit1($table_hsp, $dieukien1);

    $data['hinh_ma'] = $hinhM->hinh_ma($table_hsp, $dieukien1);

    $dieukien2 = "mau_sanpham.ma_sp = '$ma_sp'";
    $data['mau_sanpham_ma'] = $mau_sanphamM->Umau_sanpham_ma($table_msp, $table_m, $dieukien2);

    $this->load->view_user("laptop/chitietsanpham", $data);
    $this->load->view_user("footer");
  }
  public function timkiem_thuonghieu($ma_dm, $ma_th)
  {
    //danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    $this->load->view_user("header", $data);

    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    $this->load->view_user("header", $data);

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
    $dieukien = "sanpham.ma_dm = '$ma_dm' && sanpham.ma_th = '$ma_th'";
    $data['sanpham_ma_dm_th'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien);

    $this->load->view_user("laptop/header_laptop", $data);
    $this->load->view_user("laptop/timkiem_thuonghieu", $data);
    $this->load->view_user("footer");
  }
  // public function timkiem_gia($start, $end){
  //   //danh mục sản phẩm
  //   $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
  //   $table_dm = 'danhmuc_sanpham';
  //   $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
  //   $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
  //   $this->load->view_user("header", $data);

  //   $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
  //   $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
  //   $this->load->view_user("header", $data);

  //   //thương hiệu
  //   $thuonghieuM = $this->load->model('thuonghieuM');
  //   $table_th = 'thuonghieu';
  //   //danh mục - thương hiệu
  //   $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
  //   $table_dmth = 'danhmuc_thuonghieu';
  //   $ma_dm = '8';
  //   $dieukien = "danhmuc_thuonghieu.ma_dm = '$ma_dm'";
  //   $data['thuonghieu_ma_dm'] = $danhmuc_thuonghieuM->thuonghieu_ma_dm($table_th, $table_dm, $table_dmth, $dieukien);
  //   // 
  //   //sản phẩm
  //   $sanphamM = $this->load->model('sanphamM');
  //   $table_sp = 'sanpham';
  //   $start = $start.'000000';
  //   $end = $end.'000000';
  //   $dieukien1 = "sanpham.gia_sp BETWEEN '$start' AND '$end' AND sanpham.ma_dm = '$ma_dm'";
  //   $data['sanpham_ma_dm_gia'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien1);
  //   $this->load->view_user("dienthoai/header_dienthoai", $data);
  //   $this->load->view_user("dienthoai/timkiem_gia", $data);
  //   $this->load->view_user("footer");
  // }
  // public function timkiem_docquyen(){
  //   //danh mục sản phẩm
  //   $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
  //   $table_dm = 'danhmuc_sanpham';
  //   $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
  //   $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
  //   $this->load->view_user("header", $data);

  //   $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
  //   $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
  //   $this->load->view_user("header", $data);

  //   //thương hiệu
  //   $thuonghieuM = $this->load->model('thuonghieuM');
  //   $table_th = 'thuonghieu';
  //   //danh mục - thương hiệu
  //   $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
  //   $table_dmth = 'danhmuc_thuonghieu';
  //   $ma_dm = '8';
  //   $dieukien = "danhmuc_thuonghieu.ma_dm = '$ma_dm'";
  //   $data['thuonghieu_ma_dm'] = $danhmuc_thuonghieuM->thuonghieu_ma_dm($table_th, $table_dm, $table_dmth, $dieukien);
  //   // 
  //   //sản phẩm
  //   $sanphamM = $this->load->model('sanphamM');
  //   $table_sp = 'sanpham';
  //   $dieukien1 = "sanpham.ma_dm = '$ma_dm' AND sanpham.tinhtrang_sp = 2";
  //   $data['sanpham_ma_dm_docquyen'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien1);
  //   $this->load->view_user("dienthoai/header_dienthoai", $data);
  //   $this->load->view_user("dienthoai/timkiem_docquyen", $data);
  //   $this->load->view_user("footer");
  // }
  // public function timkiem_ram($ram){
  //   //danh mục sản phẩm
  //   $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
  //   $table_dm = 'danhmuc_sanpham';
  //   $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
  //   $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
  //   $this->load->view_user("header", $data);

  //   $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
  //   $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
  //   $this->load->view_user("header", $data);

  //   //thương hiệu
  //   $thuonghieuM = $this->load->model('thuonghieuM');
  //   $table_th = 'thuonghieu';
  //   //danh mục - thương hiệu
  //   $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
  //   $table_dmth = 'danhmuc_thuonghieu';
  //   $ma_dm = '8';
  //   $dieukien = "danhmuc_thuonghieu.ma_dm = '$ma_dm'";
  //   $data['thuonghieu_ma_dm'] = $danhmuc_thuonghieuM->thuonghieu_ma_dm($table_th, $table_dm, $table_dmth, $dieukien);
  //   // 
  //   //sản phẩm
  //   $sanphamM = $this->load->model('sanphamM');
  //   $table_sp = 'sanpham';
  //   //chi tiết sản phẩm
  //   $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
  //   $table_ctsp = 'chitiet_sanpham';

  //   $dieukien1 = "sanpham.ma_dm = '$ma_dm' AND chitiet_sanpham.ram = '$ram'";
  //   $data['sanpham_ma_dm_ram'] = $sanphamM->sanpham_ma_dm_GB($table_sp, $table_ctsp, $dieukien1);
  //   $this->load->view_user("dienthoai/header_dienthoai", $data);
  //   $this->load->view_user("dienthoai/timkiem_ram", $data);
  //   $this->load->view_user("footer");
  // }
  // public function timkiem_rom($rom){
  //   //danh mục sản phẩm
  //   $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
  //   $table_dm = 'danhmuc_sanpham';
  //   $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
  //   $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
  //   $this->load->view_user("header", $data);

  //   $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
  //   $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
  //   $this->load->view_user("header", $data);

  //   //thương hiệu
  //   $thuonghieuM = $this->load->model('thuonghieuM');
  //   $table_th = 'thuonghieu';
  //   //danh mục - thương hiệu
  //   $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
  //   $table_dmth = 'danhmuc_thuonghieu';
  //   $ma_dm = '8';
  //   $dieukien = "danhmuc_thuonghieu.ma_dm = '$ma_dm'";
  //   $data['thuonghieu_ma_dm'] = $danhmuc_thuonghieuM->thuonghieu_ma_dm($table_th, $table_dm, $table_dmth, $dieukien);
  //   // 
  //   //sản phẩm
  //   $sanphamM = $this->load->model('sanphamM');
  //   $table_sp = 'sanpham';
  //   //chi tiết sản phẩm
  //   $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
  //   $table_ctsp = 'chitiet_sanpham';

  //   $dieukien1 = "sanpham.ma_dm = '$ma_dm' AND chitiet_sanpham.rom = '$rom'";
  //   $data['sanpham_ma_dm_rom'] = $sanphamM->sanpham_ma_dm_GB($table_sp, $table_ctsp, $dieukien1);
  //   $this->load->view_user("dienthoai/header_dienthoai", $data);
  //   $this->load->view_user("dienthoai/timkiem_rom", $data);
  //   $this->load->view_user("footer");
  // }
}
