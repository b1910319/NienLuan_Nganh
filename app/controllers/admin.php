<?php
  class admin extends controller{
    public function __construct()
    {
      $data = array();
      parent::__construct();
    }
    public function index(){
      $this->trangchu();
    }
    public function trangchu(){
      session::checksession();
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $this->load->view_admin("trangchu");
    }
  }
?>