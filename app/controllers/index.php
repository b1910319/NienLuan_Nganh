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
    $this->trangchu();
  }
  public function trangchu()
  {
    $danhmuc_sanphamM = $this->load->model('danhmuc_sanphamM');
    $table = 'danhmuc_sanpham';
    $data['danhmuc_sanpham_limit'] = $danhmuc_sanphamM->danhmuc_sanpham_limit($table);
    $this->load->view_user("header", $data);
    $this->load->view_user("slider");
    $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table);
    $thuonghieuM = $this->load->model('thuonghieuM');
    $table = 'thuonghieu';
    $data['thuonghieu'] = $thuonghieuM->thuonghieu_limit($table);
    $this->load->view_user("trangchu", $data);
    $this->load->view_user("footer");
  }
}
