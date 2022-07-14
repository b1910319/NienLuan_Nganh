<?php
  class sanphamM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function sanpham_insert($table_sp, $data){
      return $this->db->insert($table_sp, $data);
    }
    public function sanpham_list($table_sp, $table_dm, $table_nv, $table_ncc, $table_lsp, $table_th){
      $sql = "SELECT * FROM $table_sp join $table_dm on $table_sp.ma_dm = $table_dm.ma_dm join $table_nv on $table_sp.ma_nv = $table_nv.ma_nv join $table_ncc on $table_sp.ma_ncc = $table_ncc.ma_ncc join $table_lsp on $table_sp.ma_lsp = $table_lsp.ma_lsp join $table_th on $table_sp.ma_th = $table_th.ma_th ORDER BY ma_sp desc";
      return $this->db->select($sql);
    }
    public function sanpham($table_sp){
      $sql = "SELECT * FROM $table_sp ORDER BY ma_sp desc";
      return $this->db->select($sql);
    }
    public function sanpham_ma_dm($table, $dieukien){
      $sql = "SELECT * FROM $table  WHERE $dieukien";
      return $this->db->select($sql);
    }
    public function sanpham_ma($table, $dieukien){
      $sql = "SELECT * FROM $table where $dieukien";
      return $this->db->select($sql);
    }
    public function sanpham_update($table, $data, $dieukien){
      return $this->db->update($table, $data,$dieukien);
    }
    public function sanpham_delete($table, $dieukien){
      return $this->db->delete($table, $dieukien);
    }
    public function sanpham_timkiem($table, $dieukien){
      $sql = "SELECT * FROM $table where $dieukien";
      return $this->db->select($sql);
    }
    
  }
