<?php
  class danhgiaM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function danhgia_insert($table, $data){
      return $this->db->insert($table, $data);
    }
    public function danhgia_list($table){
      $sql = "SELECT * FROM $table ORDER BY ma_dg desc";
      return $this->db->select($sql);
    }
    // public function count_sao($table_dg){
    //   $sql = "SELECT *, count(distinct $table_dg.sosao_dg) as 'sosao' FROM $table_dg ORDER BY $table_dg.sosao_dg ASC";
    //   return $this->db->select($sql);
    // }
    // public function khuyenmai_dieukien($table, $dieukien){
    //   $sql = "SELECT * FROM $table WHERE $dieukien ORDER BY ma_km desc";
    //   return $this->db->select($sql);
    // }
    public function danhgia_ma_sp($table_dg, $dieukien_dg){
      $sql = "SELECT * FROM $table_dg where $dieukien_dg";
      return $this->db->select($sql);
    }
    // public function khuyenmai_update($table, $data, $dieukien){
    //   return $this->db->update($table, $data,$dieukien);
    // }
    // public function khuyenmai_delete($table, $dieukien){
    //   return $this->db->delete($table, $dieukien);
    // }
    // public function khuyenmai_deleteAll($table){
    //   return $this->db->deleteAll($table);
    // }
    // public function khuyenmai_timkiem($table_km, $dieukien){
    //   $sql = "SELECT * FROM $table_km WHERE $dieukien";
    //   return $this->db->select($sql);
    // }
  }
