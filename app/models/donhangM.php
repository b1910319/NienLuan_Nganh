<?php
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
    // public function danhmuc_tintuc_timkiem($table, $dieukien){
    //   $sql = "SELECT * FROM $table where $dieukien";
    //   return $this->db->select($sql);
    // }
  }
