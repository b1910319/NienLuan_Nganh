<?php
  class index extends controller{
    public function __construct()
    {
      $data = array();
      parent::__construct();
    }
    public function trangchu(){
      $this->load->view_user("header");
      $this->load->view_user("slider");
      $this->load->view_user("trangchu");
      $this->load->view_user("footer");
    }
  }
?>