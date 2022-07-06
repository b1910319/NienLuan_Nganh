<?php
  class load{
    public function __construct()
    {
      
    }
    public function view_user($filename, $data = false){
      // if ($data == true){
      //   extract($data);
      // }
      require_once "app/views/user/".$filename.".php";
    }

    public function model($filename){
      require_once "app/models/".$filename.".php";
      return new $filename;
    }
  }
?>