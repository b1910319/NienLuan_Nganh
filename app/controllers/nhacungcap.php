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
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $this->load->view_admin("leftmenu", $data);
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table_ncc = 'nhacungcap';
      $data ['nhacungcap'] = $nhacungcapM->nhacungcap_list($table_ncc);
      $this->load->view_admin("nhacungcap/nhacungcap", $data); 
    }
    public function nhacungcap_edit($ma_ncc){
      session::init();
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $dieukien = "nhacungcap.ma_ncc='$ma_ncc'" ;
      $data['nhacungcap_ma'] = $nhacungcapM->nhacungcap_ma($table, $dieukien);
      $this->load->view_admin("header");
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $this->load->view_admin("leftmenu", $data);
      $this->load->view_admin("nhacungcap/nhacungcap_edit", $data);
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
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $this->load->view_admin("leftmenu", $data);
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $tukhoa = $_POST['tukhoa'];
      $dieukien = "nhacungcap.ten_ncc LIKE '%$tukhoa%'" ;
      $data ['nhacungcap_timkiem'] = $nhacungcapM->nhacungcap_timkiem($table, $dieukien);
      $this->load->view_admin("nhacungcap/nhacungcap_timkiem", $data);
    }


    //ví dụ thống kê
    // public function tong (){
    //   $nhacungcapM = $this->load->model('nhacungcapM');
    //   $data ['tong1'] = $nhacungcapM->tong();
    //   $this->load->view_admin("test", $data); 
    // }
  }
?>