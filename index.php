<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <?php
    require_once "./system/lib/main.php";
    require_once "./system/lib/controller.php";
    require_once "./system/lib/database.php";
    require_once "./system/lib/model.php";
    require_once "./system/lib/load.php";
    $url = isset ($_GET['url'])? $_GET['url']:NULL;
    
    if ($url != NULL){
      $url = rtrim($url, '/');
      $url = explode('/', filter_var($url, FILTER_SANITIZE_URL));
    }else{
      unset($url);
    }
    if (isset($url[0])){
      require_once "app/controllers/".$url[0].".php";
      $controller = new $url[0]();
      if(isset($url[2])){
        $controller->{$url[1]}($url[2]);
      }else{
        if(isset($url[1])){
          $controller->{$url[1]}();
        }else{
          
        }
      }
      
    }
    // else{
    //   require_once "app/controllers/index.php";
    //   $index = new index();
    //   $index->trangchu();
    // }
  ?>
  <?php
    
    
  ?>
</body>

</html>