<?php
  class nhacungcap extends controller{
    public function __construct()
    {
      $data = array();
      $thongbao = array();
      parent::__construct();
    }
    public function nhacungcap(){
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $this->load->view_admin("nhacungcap");
    }
    public function nhacungcap_insert(){
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $ten_ncc = $_POST['ten_ncc'];
      $diachi_ncc = $_POST['diachi_ncc'];
      $sdt_ncc = $_POST['sdt_ncc'];
      $email_ncc = $_POST['email_ncc'];
      $data = array(
        'ten_ncc' => $ten_ncc,
        'diachi_ncc' =>$diachi_ncc ,
        'sdt_ncc' => $sdt_ncc,
        'email_ncc' =>  $email_ncc
      );
      
      $result = $nhacungcapM->nhacungcap_insert($table, $data);
      $this->load->view_admin("header");
      $this->load->view_admin("leftmenu");
      $this->load->view_admin("nhacungcap");
    }
    public function nhacungcap_update(){
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      // $ten_ncc = $_POST['ten_ncc'];
      // $diachi_ncc = $_POST['diachi_ncc'];
      // $sdt_ncc = $_POST['sdt_ncc'];
      // $email_ncc = $_POST['email_ncc'];
      $ma_ncc = 7;
      $dieukien = "nhacungcap.ma_ncc='$ma_ncc'" ;
      $data = array(
        'ten_ncc' => 'le diem trinh',
        'diachi_ncc' =>'cantho' ,
        'sdt_ncc' => '0000011111',
        'email_ncc' =>  '@mail'
      );
      $result = $nhacungcapM->nhacungcap_update($table, $data, $dieukien);
      // $this->load->view_admin("header");
      // $this->load->view_admin("leftmenu");
      // $this->load->view_admin("nhacungcap");
      if ($result ==1){
        echo "Cập nhật thành công";
      }else{
        echo "Cập nhật thất bại";
      }
    }
    public function nhacungcap_delete(){
      $nhacungcapM = $this->load->model('nhacungcapM');
      $table = 'nhacungcap';
      $ma_ncc = 62;
      $dieukien = "nhacungcap.ma_ncc='$ma_ncc'" ;
      $result = $nhacungcapM->nhacungcap_delete($table, $dieukien);
      if ($result ==1){
        echo "Xoá thành công";
      }else{
        echo "Xoá thất bại";
      }
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