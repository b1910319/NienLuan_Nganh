<?php
class maytinhdeban extends controller
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

    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = "sanpham.ma_dm = '$ma_dm'";
    $data['sanpham_ma_dm'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien);

    $this->load->view_user("maytinh_deban/header_maytinh_deban", $data);
    $this->load->view_user("maytinh_deban/sanpham", $data);
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

    //tin tức
    $tintucM = $this->load->model('tintucM');
    $table_tt = 'tintuc';
    //danh mục tin tức
    $danhmuc_tintucM = $this->load->model('danhmuc_tintucM');
    $table_dmtt = 'danhmuc_tintuc';
    $limit = 4;
    $data['tintuc'] = $tintucM->tintuc_limit($table_tt, $table_th, $table_dmtt, $limit);

    $this->load->view_user("maytinh_deban/chitietsanpham", $data);
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
    $data['thuonghieu'] = $thuonghieuM->thuonghieu_list($table_th);
    //danh mục - thương hiệu
    $danhmuc_thuonghieuM = $this->load->model('danhmuc_thuonghieuM');
    $table_dmth = 'danhmuc_thuonghieu';
    $dieukien = "danhmuc_thuonghieu.ma_dm = '$ma_dm'";
    $data['thuonghieu_ma_dm'] = $danhmuc_thuonghieuM->thuonghieu_ma_dm($table_th, $table_dm, $table_dmth, $dieukien);

    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    $dieukien = "sanpham.ma_dm = '$ma_dm' && sanpham.ma_th = '$ma_th'";
    $data['sanpham_ma_dm_th'] = $sanphamM->sanpham_ma_dm($table_sp, $dieukien);

    $this->load->view_user("maytinh_deban/header_maytinh_deban", $data);
    $this->load->view_user("maytinh_deban/timkiem_thuonghieu", $data);
    $this->load->view_user("footer");
  }
  public function timkiem_ram($ram){
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
    $ma_dm = '13';
    $dieukien = "danhmuc_thuonghieu.ma_dm = '$ma_dm'";
    $data['thuonghieu_ma_dm'] = $danhmuc_thuonghieuM->thuonghieu_ma_dm($table_th, $table_dm, $table_dmth, $dieukien);
    // 
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    //chi tiết sản phẩm
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';

    $dieukien1 = "sanpham.ma_dm = '$ma_dm' AND chitiet_sanpham.ram = '$ram'";
    $data['sanpham_ma_dm_ram'] = $sanphamM->sanpham_ma_dm_GB($table_sp, $table_ctsp, $dieukien1);
    $this->load->view_user("maytinh_deban/header_maytinh_deban", $data);
    $this->load->view_user("maytinh_deban/timkiem_ram", $data);
    $this->load->view_user("footer");
  }
  public function timkiem_rom($rom){
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
    $ma_dm = '13';
    $dieukien = "danhmuc_thuonghieu.ma_dm = '$ma_dm'";
    $data['thuonghieu_ma_dm'] = $danhmuc_thuonghieuM->thuonghieu_ma_dm($table_th, $table_dm, $table_dmth, $dieukien);
    // 
    //sản phẩm
    $sanphamM = $this->load->model('sanphamM');
    $table_sp = 'sanpham';
    //chi tiết sản phẩm
    $chitiet_sanphamM = $this->load->model('chitiet_sanphamM');
    $table_ctsp = 'chitiet_sanpham';

    $dieukien1 = "sanpham.ma_dm = '$ma_dm' AND chitiet_sanpham.rom = '$rom'";
    $data['sanpham_ma_dm_rom'] = $sanphamM->sanpham_ma_dm_GB($table_sp, $table_ctsp, $dieukien1);
    $this->load->view_user("maytinh_deban/header_maytinh_deban", $data);
    $this->load->view_user("maytinh_deban/timkiem_rom", $data);
    $this->load->view_user("footer");
  }
}
