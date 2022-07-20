<?php
  class admin extends controller{
    public function __construct()
    {
      $data = array();
      parent::__construct();
    }
    public function index(){
      $this->trangchu();
    }
    public function trangchu(){
      session::checksession();
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
      //tổng số đơn hàng
      $data['donhang'] = $donhangM ->donhang_list($table_dh);
      //doanh thu hôm nay
      $ngay = date("d/m/Y");
      $data['doanhthu_homnay'] = $donhangM->doanhthu_homnay ($table_dh, $ngay);
      $this->load->view_admin("trangchu", $data);
    }
  }
?>