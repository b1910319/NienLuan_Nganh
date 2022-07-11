<?php
  class danhmuc_sanphamM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function danhmuc_sanpham_insert($table, $data){
      return $this->db->insert($table, $data);
    }
    public function danhmuc_sanpham_list($table){
      $sql = "SELECT * FROM $table ORDER BY ma_dm desc";
      return $this->db->select($sql);
    }
    public function danhmuc_sanpham_limit($table){
      $sql = "SELECT * FROM $table ORDER BY ma_dm ASC LIMIT 6";
      return $this->db->select($sql);
    }
    public function danhmuc_sanpham_ma($table, $dieukien){
      $sql = "SELECT * FROM $table where $dieukien";
      return $this->db->select($sql);
    }
    public function danhmuc_sanpham_update($table, $data, $dieukien){
      return $this->db->update($table, $data,$dieukien);
    }
    public function danhmuc_sanpham_delete($table, $dieukien){
      return $this->db->delete($table, $dieukien);
    }
    public function danhmuc_sanpham_timkiem($table, $dieukien){
      $sql = "SELECT * FROM $table where $dieukien";
      return $this->db->select($sql);
    }
    
  }
