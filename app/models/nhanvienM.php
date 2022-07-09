<?php
  class nhanvienM extends model{
    public function __construct()
    {
      parent::__construct();
    }
    public function nhanvien_dangnhap($table, $user_nv, $pass_nv){
      $sql = "SELECT * FROM $table WHERE user_nv = ? AND pass_nv = ?";
      return $this->db->affectedRows($sql, $user_nv, $pass_nv);
    }
    public function get_dangnhap($table, $user_nv, $pass_nv){
      $sql = "SELECT * FROM $table WHERE user_nv = ? AND pass_nv = ?";
      return $this->db->selectNV($sql, $user_nv, $pass_nv);
    }
  }

?>