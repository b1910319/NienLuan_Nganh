<?php
  class loai_sanpham extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
    public function loai_sanpham(){
      session::init();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $loai_sanphamM = $this->load->model('loai_sanphamM');
      $table_lsp = 'loai_sanpham';
      $danhmuc_sanphamM = $this->load->model("danhmuc_sanphamM");
      $table_dm = 'danhmuc_sanpham';
      $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
      $data ['loai_sanpham'] = $loai_sanphamM->loai_sanpham_list($table_lsp, $table_dm);
      $this->load->view_admin("loai_sanpham/loai_sanpham", $data); 
    }
    public function loai_sanpham_insert(){
      $loai_sanphamM = $this->load->model('loai_sanphamM');
      $table = 'loai_sanpham';
      $ten_lsp = $_POST['ten_lsp'];
      $ma_dm = $_POST['ma_dm'];
      $icon_lsp = $_POST['icon_lsp'];
      $data = array(
        'ma_dm' => $ma_dm,
        'ten_lsp' => $ten_lsp,
        'icon_lsp' => $icon_lsp
      );
      $result = $loai_sanphamM->loai_sanpham_insert($table, $data);
      header("Location:".BASE_URL."loai_sanpham/loai_sanpham");
    }
    public function loai_sanpham_edit($ma_lsp){
      session::init();
      $loai_sanphamM = $this->load->model('loai_sanphamM');
      $table_lsp = 'loai_sanpham';
      $danhmuc_sanphamM = $this->load->model("danhmuc_sanphamM");
      $table_dm = 'danhmuc_sanpham';
      $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
      $dieukien = "loai_sanpham.ma_lsp='$ma_lsp'" ;
      $data['loai_sanpham_ma'] = $loai_sanphamM->loai_sanpham_ma($table_lsp, $dieukien);
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $this->load->view_admin("loai_sanpham/loai_sanpham_edit", $data);
    }
    public function loai_sanpham_update($ma_lsp){
      $loai_sanphamM = $this->load->model('loai_sanphamM');
      $table = 'loai_sanpham';
      $dieukien = "loai_sanpham.ma_lsp='$ma_lsp'" ;
      $ten_lsp = $_POST['ten_lsp'];
      $ma_dm = $_POST['ma_dm'];
      $data = array(
        'ma_dm' => $ma_dm,
        'ten_lsp' => $ten_lsp
      );
      $result = $loai_sanphamM->loai_sanpham_update($table, $data, $dieukien);
      header("Location:".BASE_URL."loai_sanpham/loai_sanpham");
    }
    public function loai_sanpham_delete($ma_lsp){
      $loai_sanphamM = $this->load->model('loai_sanphamM');
      $table = 'loai_sanpham';
      $dieukien = "loai_sanpham.ma_lsp='$ma_lsp'" ;
      $result = $loai_sanphamM->loai_sanpham_delete($table, $dieukien);
      header("Location:".BASE_URL."loai_sanpham/loai_sanpham");
    }
    public function loai_sanpham_timkiem(){
      session::init();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $loai_sanphamM = $this->load->model('loai_sanphamM');
      $table_lsp = 'loai_sanpham';
      $danhmuc_sanphamM = $this->load->model("danhmuc_sanphamM");
      $table_dm = 'danhmuc_sanpham';
      $data['danhmuc_sanpham'] = $danhmuc_sanphamM->danhmuc_sanpham_list($table_dm);
      $tukhoa = $_POST['tukhoa'];
      $dieukien = "loai_sanpham.ten_lsp LIKE '%$tukhoa%'" ;
      $data ['loai_sanpham_timkiem'] = $loai_sanphamM->loai_sanpham_timkiem($table_lsp,$table_dm, $dieukien);
      $this->load->view_admin("loai_sanpham/loai_sanpham_timkiem", $data); 
    }
  }
?>