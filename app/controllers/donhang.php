<?php
use Carbon\Carbon;
  class donhang extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
    public function dathang(){
      session::init();
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      //chi tiết đơn hàng
      $table_ctdh = 'chitiet_donhang';
      $chitiet_donhangM = $this->load->model('chitiet_donhangM');
      $ten_k = $_POST['ten_k'];
      $sdt_k = $_POST['sdt_k'];
      $gioitinh_k = $_POST['gioitinh_k'];
      $diachi_k = $_POST['diachi_k'];
      $ma_dh = rand(0,999999);
      $tonggia_dh = $_POST['tonggia_dh'];

      date_default_timezone_set('Asia/Ho_Chi_Minh');
      $ngaylap_dh = date("d/m/Y");
      $giolap_dh = date("h:i:sa");
      $thoigian_bh = Carbon::now('Asia/Ho_Chi_Minh');
      $thoigian_bh = $thoigian_bh->addYears(1);
      $data_dh = array(
        'ma_dh' => $ma_dh,
        'ten_k' => $ten_k,
        'sdt_k' => $sdt_k,
        'gioitinh_k' => $gioitinh_k,
        'diachi_k' => $diachi_k,
        'tonggia_dh' => $tonggia_dh,
        'ngaylap_dh' => $ngaylap_dh,
        'giolap_dh' => $giolap_dh
      );
      $result_dh = $donhangM->donhang_insert($table_dh, $data_dh);
      if(session::get("giohang") == true){
        foreach (session::get("giohang") as $key => $gh){
          $data_ctdh = array(
            'ma_dh' => $ma_dh,
            'ma_sp' => $gh['ma_sp'],
            'soluong_dat' => $gh['soluong_dat'],
            'thoigian_bh' => $thoigian_bh,
            'ma_m' => $gh['ma_m']
          );
          $result_ctdh = $chitiet_donhangM->chitiet_donhang_insert($table_ctdh, $data_ctdh);
        }
        unset($_SESSION['giohang']);
      }
      header("Location:".BASE_URL."giohang/giohang");
    }
    
  }
?>