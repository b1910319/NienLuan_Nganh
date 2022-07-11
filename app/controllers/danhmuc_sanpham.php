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
  public function danhmuc_sanpham_edit($ma_dm){
    session::init();
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table = 'danhmuc_sanpham';
    $dieukien = "danhmuc_sanpham.ma_dm='$ma_dm'" ;
    $data['danhmuc_sanpham_ma'] = $danhmuc_sanphamM->danhmuc_sanpham_ma($table, $dieukien);
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $this->load->view_admin("danhmuc_sanpham/danhmuc_sanpham_edit", $data);
  }
  public function danhmuc_sanpham_update($ma_dm){
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table = 'danhmuc_sanpham';
    $dieukien = "danhmuc_sanpham.ma_dm='$ma_dm'" ;
    $ten_dm = $_POST['ten_dm'];
    $mamau_dm = $_POST['mamau_dm'];

    $hinh_dm = $_FILES['hinh_dm']['name'];
    $file_temp = $_FILES['hinh_dm']['tmp_name'];
    $div = explode(' . ', $hinh_dm);
    $file_ext = strtolower(end($div));
    $unique_image = substr(md5(time()), 0, 10) . ' . ' . $file_ext;
    $uploaded_image = "public/uploads/danhmuc/" . $unique_image;
    if($hinh_dm){
      $data['danhmuc_sanpham_ma'] = $danhmuc_sanphamM->danhmuc_sanpham_ma($table, $dieukien);
      foreach ($data['danhmuc_sanpham_ma'] as $key => $dm){
        if($dm['hinh_dm']){
          unlink("public/uploads/danhmuc/".$dm['hinh_dm']);
        }
      }
      $data = array(
        'ten_dm' => $ten_dm,
        'mamau_dm' => $mamau_dm,
        'hinh_dm' => $unique_image
      );
      move_uploaded_file($file_temp, $uploaded_image);
    }else{
      $data = array(
        'ten_dm' => $ten_dm,
        'mamau_dm' => $mamau_dm
      );
    }
    $result = $danhmuc_sanphamM->danhmuc_sanpham_update($table, $data, $dieukien);
    header("Location:".BASE_URL."danhmuc_sanpham/danhmuc_sanpham");
  }
  public function danhmuc_sanpham_delete($ma_dm){
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table = 'danhmuc_sanpham';
    $dieukien = "danhmuc_sanpham.ma_dm='$ma_dm'" ;
    if($ma_dm){
      $data['danhmuc_sanpham_ma'] = $danhmuc_sanphamM->danhmuc_sanpham_ma($table, $dieukien);
      foreach ($data['danhmuc_sanpham_ma'] as $key => $dm){
        if($dm['hinh_dm']){
          unlink("public/uploads/danhmuc/".$dm['hinh_dm']);
        }
      }
    }
    $result = $danhmuc_sanphamM->danhmuc_sanpham_delete($table, $dieukien);
    header("Location:" . BASE_URL . "danhmuc_sanpham/danhmuc_sanpham");
  }
  public function danhmuc_sanpham_timkiem(){
    session::init();
    $this->load->view_admin("header");
    $this->load->view_admin("leftmenu");
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table = 'danhmuc_sanpham';
    $tukhoa = $_POST['tukhoa'];
    $dieukien = "danhmuc_sanpham.ten_dm LIKE '%$tukhoa%'" ;
    $data ['danhmuc_sanpham_timkiem'] = $danhmuc_sanphamM->danhmuc_sanpham_timkiem($table, $dieukien);
    $this->load->view_admin("danhmuc_sanpham/danhmuc_sanpham_timkiem", $data);
  }
}
