<?php
  class nhacungcapM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function nhacungcap_insert($table, $data){
      return $this->db->insert($table, $data);
    }
    public function nhacungcap_list($table){
      $sql = "SELECT * FROM $table";
      return $this->db->select($sql);
    }
    public function nhacungcap_ma($table, $ma_ncc){
      $sql = "SELECT * FROM $table where ma_ncc = :ma_ncc";
      $data = array(':ma_ncc' => $ma_ncc);
      return $this->db->select($sql,$data);
    }
    public function nhacungcap_update($table, $data, $dieukien){
      return $this->db->update($table, $data,$dieukien);
    }
    public function nhacungcap_delete($table, $dieukien){
      return $this->db->delete($table, $dieukien);
    }
  }

?>