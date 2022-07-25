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
      $dieukien_m = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien_m);
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
      //tổng số sản phẩm
      //sản phẩm
      $sanphamM = $this->load->model('sanphamM');
      $table_sp = 'sanpham';
      $data['sanpham'] = $sanphamM->sanpham($table_sp);
      //thống kê ngày
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      //chi tiết đơn hàng
      $table_ctdh = 'chitiet_donhang';
      $chitiet_donhangM = $this->load->model('chitiet_donhangM');
      $data['soluong_ngay'] = $donhangM->soluong_ngay($table_dh, $table_sp, $table_ctdh);
      $data['tongtien_ngay'] = $donhangM->tongtien_ngay($table_dh);
      $data['count_sp_ngay'] = $donhangM->count_sp_ngay($table_dh, $table_ctdh, $table_sp);
      //thống kê tháng
      $data['soluong_thang'] = $donhangM->soluong_thang($table_dh, $table_sp, $table_ctdh);
      $data['tongtien_thang'] = $donhangM->tongtien_thang($table_dh);
      //thống kê nam
      $data['soluong_nam'] = $donhangM->soluong_nam($table_dh, $table_sp, $table_ctdh);
      $data['tongtien_nam'] = $donhangM->tongtien_nam($table_dh);
      $this->load->view_admin("trangchu", $data);
    }
    public function sanpham_banngay_timkiem(){
      session::checksession();
      $this->load->view_admin("header");
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      $dieukien_m = 'donhang.tinhtrang_dh = 0';
      $data['donhang_moi'] = $donhangM->donhang_moi($table_dh, $dieukien_m);
      $dieukien_vc = 'donhang.tinhtrang_dh = 1';
      $data['donhang_dangvanchuyen'] = $donhangM->donhang_moi($table_dh, $dieukien_vc);
      $dieukien_dg = 'donhang.tinhtrang_dh = 2';
      $data['donhang_dagiao'] = $donhangM->donhang_moi($table_dh, $dieukien_dg);
      $this->load->view_admin("leftmenu", $data);
      $ngaylap_dh = $_POST['tukhoa'];
      //đơn hàng
      $table_dh = "donhang";
      $donhangM = $this->load->model('donhangM');
      //chi tiết đơn hàng
      $table_ctdh = 'chitiet_donhang';
      $chitiet_donhangM = $this->load->model('chitiet_donhangM');
      //sản phẩm
      $sanphamM = $this->load->model('sanphamM');
      $table_sp = 'sanpham';
      $dieukien_tkn = "donhang.ngaylap_dh = '$ngaylap_dh'";
      $data['sanpham_banngay_timkiem'] = $donhangM->sanphamban_timkiem($table_dh, $table_ctdh, $table_sp, $dieukien_tkn);

      $this->load->view_admin("trangchu/sanpham_banngay_timkiem", $data);
    }
  }
?>