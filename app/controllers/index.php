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
  public function tra_donhang(){
    //danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    $this->load->view_user("header", $data);
    $this->load->view_user("tradonhang");
    $this->load->view_user("footer");
  }
  public function lichsu_donhang(){
    //danh mục sản phẩm
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table_dm = 'danhmuc_sanpham';
    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table_dm);
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
    $this->load->view_user("header", $data);
    $sdt_k = $_POST['sdt_k'];
    // đơn hàng
    $table_dh = "donhang";
    $donhangM = $this->load->model('donhangM');
    $dieukien = "donhang.sdt_k = '$sdt_k' ";
    $data['donhang_sdt'] = $donhangM->donhang_sdt($table_dh, $dieukien);
    $this->load->view_user("lichsudonhang", $data);
    $this->load->view_user("footer");
  }
  public function huy($ma_dh){
    //đơn hàng
    $table_dh = "donhang";
    $donhangM = $this->load->model('donhangM');
    $dieukien = "donhang.ma_dh = '$ma_dh'";
    $result = $donhangM->donhang_delete($table_dh, $dieukien);
    header("Location:".BASE_URL."index/tra_donhang");
  }
  public function danhan($ma_dh){
    session::init();
    //đơn hàng
    $table_dh = "donhang";
    $donhangM = $this->load->model('donhangM');
    $dieukien = "donhang.ma_dh = '$ma_dh'";
    $data = array(
      'tinhtrang_dh' => '2'
    );
    $result = $donhangM->donhang_update($table_dh, $data, $dieukien);
    header("Location:".BASE_URL."index/tra_donhang");
  }
}
