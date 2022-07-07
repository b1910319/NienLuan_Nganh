<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- link file css -->
  <link rel="stylesheet" href="../public/css/style.css">
  <!--  -->
  <!-- link boostrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous">
  </script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"
    id="bootstrap-css">
  <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

  <!-- thông tin sản phẩm trang chi tiết sản phầm -->
  <script>
  $(function() {
    $('#work').on('activate.bs.scrollspy')
  });
  </script>
  <style>
  body {
    position: relative;
  }
  </style>
  <!--  -->

  <!--  -->

  <!-- link icon -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!--  -->
  <!-- link chạy deal ngon mỗi ngày -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"
    id="bootstrap-css">
  <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  <title>Bán thiết bị điện tử</title>



</head>

<body>
  <div class="container-fuild sticky-top">
    <div class="banner">
      <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="app/views/user/img/banner/banner_1.png" class="d-block giua " alt="...">
          </div>
          <div class="carousel-item">
            <img src="app/views/user/img/banner/banner_2.png" class="d-block giua" alt="...">
          </div>
          <div class="carousel-item">
            <img src="app/views/user/img/banner/banner_3.png" class="d-block giua" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
    <div class="header">
      <div class="row">
        <div class="col-2">
          <img src="app/views/user/img/logo/logo.png" class="d-block mt-4 ms-4 " style="width: 70%;">
        </div>
        <div class="col-2">
          <a href="">
            <button type="button" class="btn btn-success mt-3 btn_dathang">
              <i class="fas fa-phone"></i>&ensp;0123456789
            </button>
          </a>
        </div>
        <div class="col-3">
          <nav class="navbar">
            <div style="width: 100%;">
              <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success btn_search" type="submit"><i class="fas fa-search"></i></button>
              </form>
            </div>
          </nav>
        </div>
        <div class="col-2">
          <a href="">
            <button class="btn btn-success btn_tradonhang mt-3" type="submit"><i class="fas fa-history"></i>&ensp;Lịch
              sử đơn
              hàng</button>
          </a>
        </div>
        <div class="col-2">
          <a href="">
            <button class="btn btn-success btn_giohang mt-3" type="submit"><i
                class="fas fa-cart-arrow-down"></i>&ensp;Giỏ
              hàng</button>
          </a>
        </div>
        <div class="col-1">
          <button type="button" class="btn btn-light mt-3">
            <a href="">
              <div class="spinner-grow text-danger" role="status">
                <span class="visually-hidden">Loading...</span>
              </div>
              <span style="font-weight:bold ; color: #0b4619;">Tin tức</span>
            </a>
          </button>

        </div>

      </div>
    </div>
    <div class="nav row">
      <div class="col-2 mb-3 nav_a"><a href="">Điện thoại</a></div>
      <div class="col-2 mb-3 nav_a"><a href="">Laptop</a></div>
      <div class="col-2 mb-3 nav_a"><a href="">Table</a></div>
      <div class="col-2 mb-3 nav_a"><a href="">Smartwatch</a></div>
      <div class="col-2 mb-3 nav_a"><a href="">Đồng hồ</a></div>
      <div class="col-2 mb-3 nav_a"><a href="">Máy tính để bàn</a></div>
    </div>
  </div>

  <?php 
    // require_once "slider.php"
    ?>

  <?php 
    // require_once "./dienthoai/sanpham.php" 
    // require_once "./dienthoai/chitietsanpham.php"
    // require_once "trangchu.php"
    // require_once "./laptop/sanpham.php" 
    // require_once "./laptop/chitietsanpham.php"
    // require_once "./smartwatch/sanpham.php" 
    // require_once "./smartwatch/chitietsanpham.php"
    // require_once "./dongho/sanpham.php" 
    // require_once "./dongho/chitietsanpham.php"
    // require_once "./maytinhban/sanpham.php" 
    // require_once "./maytinhban/chitietsanpham.php"
    // require_once "tintuc.php"
    // require_once "tradonhang.php"
    // require_once "lichsudonhang.php"
    // require_once "lichsudonhang_chitiet.php"
    // require_once "giohang.php"
    // require_once "timkiem.php"
  ?>


  <?php 
  // require_once "footer.php" 
  ?>

</body>

</html>