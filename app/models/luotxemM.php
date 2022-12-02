<?php
  class luotxemM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function luotxem_insert($table, $data){
      return $this->db->insert($table, $data);
    }
    public function luotxem_list($table_lx, $table_sp){
      $sql = "SELECT * FROM $table_lx join $table_sp on $table_lx.ma_sp = $table_sp.ma_sp ORDER BY so_lx DESC";
      return $this->db->select($sql);
    }
    public function luotxem_list_sort($table_lx, $table_sp, $oderby){
      $sql = "SELECT * FROM $table_lx join $table_sp on $table_lx.ma_sp = $table_sp.ma_sp ORDER BY so_lx $oderby";
      return $this->db->select($sql);
    }
    public function luotxem_dieukien($table_lx, $table_sp, $dieukien){
      $sql = "SELECT * FROM $table_lx join $table_sp on $table_lx.ma_sp = $table_sp.ma_sp where $dieukien ORDER BY so_lx desc";
      return $this->db->select($sql);
    }
    // public function khuyenmai_ma($table, $dieukien){
    //   $sql = "SELECT * FROM $table where $dieukien";
    //   return $this->db->select($sql);
    // }
    public function luotxem_update($table, $data, $dieukien){
      return $this->db->update($table, $data,$dieukien);
    }
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
