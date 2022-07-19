<?php
  class chitiet_donhangM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function chitiet_donhang_insert($table, $data){
      return $this->db->insert($table, $data);
    }
    // public function danhmuc_tintuc_list($table){
    //   $sql = "SELECT * FROM $table ORDER BY ma_dmtt desc";
    //   return $this->db->select($sql);
    // }
    public function chitiet_donhang_madh($table_dh, $table_ctdh, $table_sp, $table_m, $dieukien){
      $sql = "SELECT * FROM $table_ctdh join $table_dh on $table_ctdh.ma_dh = $table_dh.ma_dh join $table_sp on $table_ctdh.ma_sp = $table_sp.ma_sp join $table_m on $table_ctdh.ma_m = $table_m.ma_m where $dieukien";
      return $this->db->select($sql);
    }
    // public function danhmuc_tintuc_update($table, $data, $dieukien){
    //   return $this->db->update($table, $data,$dieukien);
    // }
    // public function danhmuc_tintuc_delete($table, $dieukien){
    //   return $this->db->delete($table, $dieukien);
    // }
    // public function danhmuc_tintuc_timkiem($table, $dieukien){
    //   $sql = "SELECT * FROM $table where $dieukien";
    //   return $this->db->select($sql);
    // }
  }
