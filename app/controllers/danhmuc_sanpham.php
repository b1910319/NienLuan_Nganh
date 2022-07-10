<?php
class danhmuc_sanpham extends controller
{
  public function __construct()
  {
    $data = array();
    $thongbao = array();
    parent::__construct();
  }
  public function danhmuc_sanpham()
  {
    session::init();
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table = 'danhmuc_sanpham';
    $data ['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table);
    $this->load->view_admin("danhmuc_sanpham/danhmuc_sanpham",$data);
  }
  public function danhmuc_sanpham_insert()
  {
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table = 'danhmuc_sanpham';
    $ten_dm = $_POST['ten_dm'];
    $mamau_dm = $_POST['mamau_dm'];
    $hinh_dm = $_FILES['hinh_dm']['name'];
    $file_temp = $_FILES['hinh_dm']['tmp_name'];
    $div = explode(' . ', $hinh_dm);
    $file_ext = strtolower(end($div));
    $unique_image = substr(md5(time()), 0, 10) . ' . ' . $file_ext;
    $uploaded_image = "public/uploads/danhmuc/" . $unique_image;
    move_uploaded_file($file_temp, $uploaded_image);
    $data = array(
      'ten_dm' => $ten_dm,
      'mamau_dm' => $mamau_dm,
      'hinh_dm' => $unique_image
    );
    $result = $danhmuc_sanphamM->danhmuc_sanpham_insert($table, $data);
    header("Location:" . BASE_URL . "danhmuc_sanpham/danhmuc_sanpham");
  }
  // public function nhacungcap_edit($ma_ncc){
  //   session::init();
  //   $nhacungcapM = $this->load->model('nhacungcapM');
  //   $table = 'nhacungcap';
  //   $dieukien = "nhacungcap.ma_ncc='$ma_ncc'" ;
  //   $data['nhacungcap_ma'] = $nhacungcapM->nhacungcap_ma($table, $dieukien);
  //   $this->load->view_admin("header");
  //   $this->load->view_admin("leftmenu");
  //   $this->load->view_admin("nhacungcap/nhacungcap_edit", $data);
  // }
  // public function nhacungcap_update($ma_ncc){
  //   $nhacungcapM = $this->load->model('nhacungcapM');
  //   $table = 'nhacungcap';
  //   $dieukien = "nhacungcap.ma_ncc='$ma_ncc'" ;
  //   $ten_ncc = $_POST['ten_ncc'];
  //   $diachi_ncc = $_POST['diachi_ncc'];
  //   $sdt_ncc = $_POST['sdt_ncc'];
  //   $email_ncc = $_POST['email_ncc'];
  //   $data = array(
  //     'ten_ncc' => $ten_ncc,
  //     'diachi_ncc' =>$diachi_ncc ,
  //     'sdt_ncc' => $sdt_ncc,
  //     'email_ncc' =>  $email_ncc
  //   );
  //   $result = $nhacungcapM->nhacungcap_update($table, $data, $dieukien);
  //   header("Location:".BASE_URL."nhacungcap/nhacungcap");
  // }
  public function danhmuc_sanpham_delete($ma_dm){
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table = 'danhmuc_sanpham';
    $dieukien = "danhmuc_sanpham.ma_dm='$ma_dm'" ;
    $result = $danhmuc_sanphamM->danhmuc_sanpham_delete($table, $dieukien);
    header("Location:" . BASE_URL . "danhmuc_sanpham/danhmuc_sanpham");
  }
  // public function nhacungcap_timkiem(){
  //   session::init();
  //   $this->load->view_admin("header");
  //   $this->load->view_admin("leftmenu");
  //   $nhacungcapM = $this->load->model('nhacungcapM');
  //   $table = 'nhacungcap';
  //   $tukhoa = $_POST['tukhoa'];
  //   $dieukien = "nhacungcap.ten_ncc LIKE '%$tukhoa%'" ;
  //   $data ['nhacungcap_timkiem'] = $nhacungcapM->nhacungcap_timkiem($table, $dieukien);
  //   $this->load->view_admin("nhacungcap/nhacungcap_timkiem", $data);
  // }
}
