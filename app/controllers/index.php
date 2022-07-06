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
      $trangchuModel = $this->load->model('trangchu');
      $data ['danhmuc_sp'] = $trangchuModel->danhmuc_sp();
      $this->load->view_user("trangchu", $data);
      $this->load->view_user("footer");
    }
  }
?>