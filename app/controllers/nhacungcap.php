<?php
  class nhacungcap extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
    public function nhacungcap_insert(){
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $ten_ncc = $_POST['ten_ncc'];
      $diachi_ncc = $_POST['diachi_ncc'];
      $sdt_ncc = $_POST['sdt_ncc'];
      $email_ncc = $_POST['email_ncc'];
      $data = array(
        'ten_ncc' => $ten_ncc,
        'diachi_ncc' =>$diachi_ncc ,
        'sdt_ncc' => $sdt_ncc,
        'email_ncc' =>  $email_ncc
      );
      $result = $nhacungcapM->nhacungcap_insert($table, $data);
      header("Location:".BASE_URL."nhacungcap/nhacungcap");
    }
    public function nhacungcap(){
      session::init();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $data ['nhacungcap'] = $nhacungcapM->nhacungcap_list($table);
      $this->load->view_admin("nhacungcap", $data);
    }
    public function nhacungcap_edit($ma_ncc){
      session::init();
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $dieukien = "nhacungcap.ma_ncc='$ma_ncc'" ;
      $data['nhacungcap_ma'] = $nhacungcapM->nhacungcap_ma($table, $dieukien);
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $this->load->view_admin("nhacungcap_edit", $data);
    }
    public function nhacungcap_update($ma_ncc){
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $dieukien = "nhacungcap.ma_ncc='$ma_ncc'" ;
      $ten_ncc = $_POST['ten_ncc'];
      $diachi_ncc = $_POST['diachi_ncc'];
      $sdt_ncc = $_POST['sdt_ncc'];
      $email_ncc = $_POST['email_ncc'];
      $data = array(
        'ten_ncc' => $ten_ncc,
        'diachi_ncc' =>$diachi_ncc ,
        'sdt_ncc' => $sdt_ncc,
        'email_ncc' =>  $email_ncc
      );
      $result = $nhacungcapM->nhacungcap_update($table, $data, $dieukien);
      header("Location:".BASE_URL."nhacungcap/nhacungcap");
    }
    public function nhacungcap_delete($ma_ncc){
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $dieukien = "nhacungcap.ma_ncc='$ma_ncc'" ;
      $result = $nhacungcapM->nhacungcap_delete($table, $dieukien);
      header("Location:".BASE_URL."nhacungcap/nhacungcap");
    }
    public function nhacungcap_timkiem(){
      session::init();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $tukhoa = $_POST['tukhoa'];
      $dieukien = "nhacungcap.ten_ncc LIKE '%$tukhoa%'" ;
      $data ['nhacungcap_timkiem'] = $nhacungcapM->nhacungcap_timkiem($table, $dieukien);
      $this->load->view_admin("nhacungcap_timkiem", $data);
    }
  }
?>