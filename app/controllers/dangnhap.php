<?php
  class dangnhap extends controller{
    public function __construct()
    {
      $thongbao = array();
      $data = array();
      parent::__construct();
    }
    public function index(){
      $this->dangnhap();
    }
    public function dangnhap(){
      $this->load->view_admin("dangnhap");
    }
    public function nhanvien_dangnhap(){
      $nhanvienM = $this->load->model('nhanvienM');
      $user_nv = $_POST['user_nv'];
      $pass_nv = md5($_POST['pass_nv']);
      $table = 'nhanvien';
      $conut = $nhanvienM->nhanvien_dangnhap($table, $user_nv, $pass_nv);
      if($conut == 0 ){
        header("Location:".BASE_URL."dangnhap");
      }else{
        header("Location:".BASE_URL."admin/trangchu");
      }
    }
  }
?>