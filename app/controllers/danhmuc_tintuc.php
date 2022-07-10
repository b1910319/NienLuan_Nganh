<?php
  class danhmuc_tintuc extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
    public function danhmuc_tintuc(){
      session::init();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $danhmuc_tintucM = $this->load->model('danhmuc_tintucM');
      $table = 'danhmuc_tintuc';
      $data ['danhmuc_tintuc'] = $danhmuc_tintucM->danhmuc_tintuc_list($table);
      $this->load->view_admin("danhmuc_tintuc/danhmuc_tintuc", $data); 
    }
    public function danhmuc_tintuc_insert(){
      $danhmuc_tintucM = $this->load->model('danhmuc_tintucM');
      $table = 'danhmuc_tintuc';
      $ten_dmtt = $_POST['ten_dmtt'];
      $data = array(
        'ten_dmtt' => $ten_dmtt
      );
      $result = $danhmuc_tintucM->danhmuc_tintuc_insert($table, $data);
      header("Location:".BASE_URL."danhmuc_tintuc/danhmuc_tintuc");
    }
    public function danhmuc_tintuc_edit($ma_dmtt){
      session::init();
      $danhmuc_tintucM = $this->load->model('danhmuc_tintucM');
      $table = 'danhmuc_tintuc';
      $dieukien = "danhmuc_tintuc.ma_dmtt='$ma_dmtt'" ;
      $data['danhmuc_tintuc_ma'] = $danhmuc_tintucM->danhmuc_tintuc_ma($table, $dieukien);
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $this->load->view_admin("danhmuc_tintuc/danhmuc_tintuc_edit", $data);
    }
    public function danhmuc_tintuc_update($ma_dmtt){
      $danhmuc_tintucM = $this->load->model('danhmuc_tintucM');
      $table = 'danhmuc_tintuc';
      $dieukien = "danhmuc_tintuc.ma_dmtt='$ma_dmtt'" ;
      $ten_dmtt = $_POST['ten_dmtt'];
      $data = array(
        'ten_dmtt' => $ten_dmtt
      );
      $result = $danhmuc_tintucM->danhmuc_tintuc_update($table, $data, $dieukien);
      header("Location:".BASE_URL."danhmuc_tintuc/danhmuc_tintuc");
    }
    public function danhmuc_tintuc_delete($ma_dmtt){
      $danhmuc_tintucM = $this->load->model('danhmuc_tintucM');
      $table = 'danhmuc_tintuc';
      $dieukien = "danhmuc_tintuc.ma_dmtt='$ma_dmtt'" ;
      $result = $danhmuc_tintucM->danhmuc_tintuc_delete($table, $dieukien);
      header("Location:".BASE_URL."danhmuc_tintuc/danhmuc_tintuc");
    }
    public function danhmuc_tintuc_timkiem(){
      session::init();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $danhmuc_tintucM = $this->load->model('danhmuc_tintucM');
      $table = 'danhmuc_tintuc';
      $tukhoa = $_POST['tukhoa'];
      $dieukien = "danhmuc_tintuc.ten_dmtt LIKE '%$tukhoa%'" ;
      $data ['danhmuc_tintuc_timkiem'] = $danhmuc_tintucM->danhmuc_tintuc_timkiem($table, $dieukien);
      $this->load->view_admin("danhmuc_tintuc/danhmuc_tintuc_timkiem", $data);
    }
  }
?>