<?php
  class main {
    public $url;
    public $controllerName = "index";
    public $methodName = "index";
    public $controllerPATH = "app/controllers/";
    public $controller;
    public function __construct(){
      $this->getURL();
      $this->loadController();
      $this->callMethod();
    }
    public function getURL(){
      $this->url = isset ($_GET['url'])? $_GET['url']:NULL;
      if ($this->url != NULL){
        $this->url = rtrim($this->url, '/');
        $this->url = explode('/', filter_var($this->url, FILTER_SANITIZE_URL));
      }else{
        unset($this->url);
      }
    }
    public function loadController(){
      if (!isset($this->url[0])){
        require_once $this->controllerPATH.$this->controllerName.".php";
        $this->controller = new $this->controllerName;
      }else{
        $this->controllerName = $this->url[0];
        $filename = $this->controllerPATH.$this->controllerName.".php";
        //kiểm tra file có tồn tại hay không
        if(file_exists($filename)){
          require_once $filename;
          //kiểu tra class có tồn tại trong file hay không
          if(class_exists($this->controllerName)){
            $this->controller = new $this->controllerName;
          }else{
            
          }
        }else{

        }
      }
    }
    public function callMethod(){
      if (isset($this->url[4])){
        $this->methodName = $this->url[1];
        if(method_exists($this->controller, $this->methodName)){
          $this->controller->{$this->methodName}($this->url[2], $this->url[3], $this->url[4]);
        }else{
          header("Location:".BASE_URL."/index");
        }
      } else {
        if (isset($this->url[3])){
          $this->methodName = $this->url[1];
          if(method_exists($this->controller, $this->methodName)){
            $this->controller->{$this->methodName}($this->url[2], $this->url[3]);
          }else{
            header("Location:".BASE_URL."/index");
          }
        } else {
          if (isset($this->url[2])){
            $this->methodName = $this->url[1];
            if(method_exists($this->controller, $this->methodName)){
              $this->controller->{$this->methodName}($this->url[2]);
            }else{
              header("Location:".BASE_URL."/index");
            }
          }else{
            if(isset($this->url[1])){
              $this->methodName = $this->url[1];
              if(method_exists($this->controller, $this->methodName)){
                $this->controller->{$this->methodName}();
              }else{
                header("Location:".BASE_URL."/index");
              }
            }else{
              if(method_exists($this->controller, $this->methodName)){
                $this->controller->{$this->methodName}();
              }else{
                header("Location:".BASE_URL."/index");
              }
            }
          }
        }
      }
    }
  }
?>