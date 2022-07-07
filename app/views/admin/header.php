<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Dashboard | Simple - Responsive Bootstrap 4 Admin Dashboard</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="Responsive bootstrap 4 admin template" name="description">
  <meta content="Coderthemes" name="author">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- App favicon -->
  <link rel="shortcut icon" href="../public/assets\images\favicon.ico">
  <!-- App css -->
  <link href="../public/assets\css\bootstrap.min.css" rel="stylesheet" type="text/css"
    id="bootstrap-stylesheet">
  <link href="../public/assets\css\icons.min.css" rel="stylesheet" type="text/css">
  <link href="../public/assets\css\app.min.css" rel="stylesheet" type="text/css"
    id="app-stylesheet">
<!-- link biểu đồ -->
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<!--  -->
</head>

<body>

  <!-- Begin page -->
  <div id="wrapper">
    <!-- Topbar Start -->
    <div class="navbar-custom">
      <ul class="list-unstyled topnav-menu float-right mb-0">
        <li class="dropdown notification-list">
          <a href="javascript:void(0);" class="nav-link right-bar-toggle">
            <i class="mdi mdi-settings-outline noti-icon"></i>
          </a>
        </li>
      </ul>
      <!-- LOGO -->
      <div class="logo-box">
        <a href="index.html" class="logo text-center logo-dark">
          <span class="logo-lg">
            <img src="assets\images\logo-dark.png" alt="" height="26">
            <!-- <span class="logo-lg-text-dark">Simple</span> -->
          </span>
          <span class="logo-sm">
            <!-- <span class="logo-lg-text-dark">S</span> -->
            <img src="assets\images\logo-sm.png" alt="" height="22">
          </span>
        </a>

        <a href="index.html" class="logo text-center logo-light">
          <span class="logo-lg">
            <img src="assets\images\logo-light.png" alt="" height="26">
            <!-- <span class="logo-lg-text-light">Simple</span> -->
          </span>
          <span class="logo-sm">
            <!-- <span class="logo-lg-text-light">S</span> -->
            <img src="assets\images\logo-sm.png" alt="" height="22">
          </span>
        </a>
      </div>

      <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
        <li>
          <button class="button-menu-mobile">
            <i class="mdi mdi-menu"></i>
          </button>
        </li>

        <li class="d-none d-sm-block">
          <form class="app-search">
            <div class="app-search-box">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <button class="btn" type="submit">
                    <i class="fas fa-search"></i>
                  </button>
                </div>
              </div>
            </div>
          </form>
        </li>
      </ul>
    </div>

  </div>
  <!-- Vendor js -->
  <script src="../public/assets\js\vendor.min.js"></script>

  <script src="../public/assets\libs\morris-js\morris.min.js"></script>
  <script src="../public/assets\libs\raphael\raphael.min.js"></script>

  <script src="../public/assets\js\pages\dashboard.init.js"></script>

  <!-- App js -->
  <script src="../public/assets\js\app.min.js"></script>

</body>

</html>