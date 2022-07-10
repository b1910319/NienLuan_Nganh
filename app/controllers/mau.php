<?php
  class mau extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
    public function mau(){
      session::init();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $mauM = $this->load->model('mauM');
      $table = 'mau';
      $data ['mau'] = $mauM->mau_list($table);
      $this->load->view_admin("mau/mau", $data); 
    }
    public function mau_insert(){
      $mauM = $this->load->model('mauM');
      $table = 'mau';
      $ten_m = $_POST['ten_m'];
      $data = array(
        'ten_m' => $ten_m
      );
      $result = $mauM->mau_insert($table, $data);
      header("Location:".BASE_URL."mau/mau");
    }
    public function mau_edit($ma_m){
      session::init();
      $mauM = $this->load->model('mauM');
      $table = 'mau';
      $dieukien = "mau.ma_m='$ma_m'" ;
      $data['mau_ma'] = $mauM->mau_ma($table, $dieukien);
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $this->load->view_admin("mau/mau_edit", $data);
    }
    public function mau_update($ma_m){
      $mauM = $this->load->model('mauM');
      $table = 'mau';
      $dieukien = "mau.ma_m='$ma_m'" ;
      $ten_m = $_POST['ten_m'];
      $data = array(
        'ten_m' => $ten_m
      );
      $result = $mauM->mau_update($table, $data, $dieukien);
      header("Location:".BASE_URL."mau/mau");
    }
    public function mau_delete($ma_m){
      $mauM = $this->load->model('mauM');
      $table = 'mau';
      $dieukien = "mau.ma_m='$ma_m'" ;
      $result = $mauM->mau_delete($table, $dieukien);
      header("Location:".BASE_URL."mau/mau");
    }
    public function mau_timkiem(){
      session::init();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $mauM = $this->load->model('mauM');
      $table = 'mau';
      $tukhoa = $_POST['tukhoa'];
      $dieukien = "mau.ten_m LIKE '%$tukhoa%'" ;
      $data ['mau_timkiem'] = $mauM->mau_timkiem($table, $dieukien);
      $this->load->view_admin("mau/mau_timkiem", $data);
    }
  }
?>