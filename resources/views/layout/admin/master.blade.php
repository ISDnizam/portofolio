<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>@yield('title')</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="/assets/admin/vendors/iconfonts/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="/assets/admin/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="/assets/admin/vendors/css/vendor.bundle.addons.css">
  <script src="/assets/admin/vendors/js/vendor.bundle.base.js"></script>
  
  <link rel="stylesheet" href="/assets/admin/css/vertical-layout-light/style.css">
  <link rel="stylesheet" href="/assets/admin/css/vertical-layout-light/custom.css">
  <link rel="stylesheet" href="/assets/admin/vendors/summernote/dist/summernote-bs4.css">
</head>
<body class="sidebar-dark">
  <div class="container-scroller">
    


	<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="#"><img src="/assets/playon/logo-light.png" class="mr-2" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="#"><img src="/assets/playon/logo-light.png" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-layout-grid2"></span>
        </button>

        <ul class="navbar-nav navbar-nav-right">
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-layout-grid2"></span>
        </button>
           <li class="nav-item">
            <a style="color:white;padding:10px;" class="btn btn-sm btn-danger nav-link" href="/agent/dashboard/logout" >
            Logout</a>
          </li>
      </div>
    </nav>


    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/agent/dashboard">
              <i class="ti-home menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
         
        <li class="nav-item">
            <a class="nav-link" href="/admin/blog">
              <i class="ti-clipboard menu-icon"></i>
              <span class="menu-title">Blog</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/admin/project">
              <i class="ti-clipboard menu-icon"></i>
              <span class="menu-title">Project</span>
            </a>
        </li>
         

        </ul>
      </nav>

      
         <div class="main-panel">    


	@yield('content')


  		<footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2019 <a href="https://ideaperumnas.com/" target="_blank">pl4y-on.com</a>. All rights reserved.</span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="/assets/admin/vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="/assets/admin/js/off-canvas.js"></script>
  <script src="/assets/admin/js/hoverable-collapse.js"></script>
  <script src="/assets/admin/js/template.js"></script>
  <script src="/assets/admin/js/settings.js"></script>
  <script src="/assets/admin/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="/assets/admin/js/dashboard.js"></script>
  <script src="/assets/admin/vendors/summernote/dist/summernote-bs4.min.js"></script>
  <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.urbanui.com/justdo/template/demo/vertical-dark-sidebar/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 23 Mar 2019 10:57:59 GMT -->
</html>