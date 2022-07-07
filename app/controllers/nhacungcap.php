<?php
  class nhacungcap extends controller{
    public function __construct()
    {
      $data = array();
      parent::__construct();
    }
    public function nhacungcap_insert(){
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $data = array(
        'ten_ncc' => 'trinh',
        'diachi_ncc' => 'aaaaa',
        'sdt_ncc' => '0123145782',
        'email_ncc' => 'frjcd' 
      );
      $nhacungcapM->nhacungcap_insert($table, $data);
    }
    public function nhacungcap_list(){
      $this->load->view_user("header");
      $this->load->view_user("slider");
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $data ['nhacungcap'] = $nhacungcapM->nhacungcap_list($table);
      $this->load->view_user("trangchu", $data);
      $this->load->view_user("footer");
    }
    public function nhacungcap_ma(){
      $this->load->view_user("header");
      $this->load->view_user("slider");
      $nhacungcapM = $this->load->model('nhacungcapM');
      $ma_ncc = '2';
      $table = 'nhacungcap';
      $data ['nhacungcap_ma'] = $nhacungcapM->nhacungcap_ma($table, $ma_ncc);
      $this->load->view_user("demo", $data);
      $this->load->view_user("footer");
    }
  }
?>