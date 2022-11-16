<?php
  class hoi_dapM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function hoi_dap_insert($table, $data){
      return $this->db->insert($table, $data);
    }
    public function hoi_dap_list($table_hd, $table_sp, $table_nv, $dieukien, $order){
      $sql = "SELECT * FROM $table_hd join $table_sp on $table_hd.ma_sp = $table_sp.ma_sp join $table_nv on $table_hd.ma_nv = $table_nv.ma_nv Where $dieukien ORDER BY $order";
      return $this->db->select($sql);
    }
    public function hoi_dap_listAll($table_hd, $table_sp, $table_nv, $order){
      $sql = "SELECT * FROM $table_hd join $table_sp on $table_hd.ma_sp = $table_sp.ma_sp join $table_nv on $table_hd.ma_nv = $table_nv.ma_nv ORDER BY $order ";
      return $this->db->select($sql);
    }

    public function hoi_dap_timkiem($table_hd,$table_sp, $table_nv, $dieukien){
      $sql = "SELECT * FROM $table_hd join $table_sp on $table_hd.ma_sp = $table_sp.ma_sp join $table_nv on $table_hd.ma_nv = $table_nv.ma_nv WHERE $dieukien";
      return $this->db->select($sql);
    }
    // public function hoidap_update($table_hd, $data_update, $dieukien_update){
    //   return $this->db->update($table_hd, $data_update, $dieukien_update);
    // }
    // public function baohanh_delete($table, $dieukien){
    //   return $this->db->delete($table, $dieukien);
    // }
    // public function baohanh_deleteAll($table){
    //   return $this->db->deleteAll($table);
    // }
  }
