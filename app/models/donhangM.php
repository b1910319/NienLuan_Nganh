<?php
use Carbon\Carbon;
  class donhangM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function donhang_insert($table, $data){
      return $this->db->insert($table, $data);
    }
    public function donhang_list($table){
      $sql = "SELECT * FROM $table ORDER BY ngaylap_dh desc, giolap_dh desc";
      return $this->db->select($sql);
    }
    public function donhang_ma($table, $dieukien){
      $sql = "SELECT * FROM $table where $dieukien";
      return $this->db->select($sql);
    }
    public function donhang_sdt($table_dh, $dieukien){
      $sql = "SELECT * FROM $table_dh WHERE $dieukien ORDER BY ngaylap_dh desc, giolap_dh desc ";
      return $this->db->select($sql);
    }
    public function donhang_update($table, $data, $dieukien){
      return $this->db->update($table, $data,$dieukien);
    }
    public function donhang_delete($table, $dieukien){
      return $this->db->delete($table, $dieukien);
    }
    public function donhang_moi($table_dh, $dieukien){
      $sql = "SELECT * FROM $table_dh WHERE $dieukien ORDER BY ngaylap_dh desc, giolap_dh desc ";
      return $this->db->select($sql);
    }
    public function doanhthu_homnay ($table_dh, $ngay){
      $sql = "SELECT ngaylap_dh, tonggia_dh , SUM(tonggia_dh) AS tong FROM $table_dh WHERE $table_dh.ngaylap_dh = '$ngay'";
      return $this->db->select($sql);
    }
    public function soluong_ngay($table_dh, $table_sp, $table_ctdh){
      $sql = "SELECT * , SUM(soluong_dat) AS tongban_ngay FROM $table_ctdh join $table_dh on $table_dh.ma_dh = $table_ctdh.ma_dh join $table_sp on $table_ctdh.ma_sp = $table_sp.ma_sp   GROUP BY ngaylap_dh ";
      return $this->db->select($sql);
    }
    public function soluong_thang($table_dh, $table_sp, $table_ctdh){
      $sql = "SELECT * , SUM(soluong_dat) AS tongban_thang FROM $table_ctdh join $table_dh on $table_dh.ma_dh = $table_ctdh.ma_dh join $table_sp on $table_ctdh.ma_sp = $table_sp.ma_sp  GROUP BY thanglap_dh ";
      return $this->db->select($sql);
    }
    public function soluong_nam($table_dh, $table_sp, $table_ctdh){
      $sql = "SELECT * , SUM(soluong_dat) AS tongban_nam FROM $table_ctdh join $table_dh on $table_dh.ma_dh = $table_ctdh.ma_dh join $table_sp on $table_ctdh.ma_sp = $table_sp.ma_sp  GROUP BY namlap_dh ";
      return $this->db->select($sql);
    }
    public function tongtien_ngay($table_dh){
      $sql = "SELECT * , SUM($table_dh.tonggia_dh) AS tongtien_ngay FROM $table_dh GROUP BY ngaylap_dh";
      return $this->db->select($sql);
    }

    public function tongtien_thang($table_dh){
      $sql = "SELECT * , SUM($table_dh.tonggia_dh) AS tongtien_thang FROM $table_dh GROUP BY thanglap_dh";
      return $this->db->select($sql);
    }
    public function tongtien_nam($table_dh){
      $sql = "SELECT * , SUM($table_dh.tonggia_dh) AS tongtien_nam FROM $table_dh GROUP BY namlap_dh";
      return $this->db->select($sql);
    }
    public function count_sp_ngay($table_dh, $table_ctdh, $table_sp){
      $sql = "SELECT *, SUM($table_ctdh.soluong_dat) as soluong FROM $table_dh join $table_ctdh on $table_dh.ma_dh = $table_ctdh.ma_dh join $table_sp on $table_ctdh.ma_sp = $table_sp.ma_sp  GROUP BY $table_ctdh.ma_sp, $table_dh.ngaylap_dh ORDER BY $table_dh.ngaylap_dh desc , soluong desc ";
      return $this->db->select($sql);
    }
    public function sanphamban_timkiem($table_dh, $table_ctdh, $table_sp, $dieukien){
      $sql = "SELECT *, SUM($table_ctdh.soluong_dat) as soluong FROM $table_dh join $table_ctdh on $table_dh.ma_dh = $table_ctdh.ma_dh join $table_sp on $table_ctdh.ma_sp = $table_sp.ma_sp WHERE $dieukien  GROUP BY $table_ctdh.ma_sp, $table_dh.ngaylap_dh ORDER BY $table_dh.ngaylap_dh desc , soluong desc ";
      return $this->db->select($sql);
    }


  }
