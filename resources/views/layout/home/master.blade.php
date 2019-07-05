
<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="description" content="Name of your web site">
<meta name="author" content="Marketify">

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>@yield('title')</title>
<!-- STYLES -->
<script src="/assets/js/jquery.js"></script>

<link href="http://fonts.googleapis.com/css?family=Montserrat:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/plugins.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/style.css" />
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<!--[if lt IE 9]> <script type="text/javascript" src="js/modernizr.custom.js"></script> <![endif]-->
<!-- /STYLES -->

</head>

<body>

<!-- WRAPPER ALL -->
<div class="arlo_tm_wrapper_all">

  <div id="arlo_tm_popup_blog">
    <div class="container">
      <div class="inner_popup scrollable"></div>
    </div>
    <span class="close"><a href="#"></a></span>
  </div>
  
  <!-- PRELOADER -->
  <div class="arlo_tm_preloader">
    <div class="spinner_wrap">
      <div class="spinner"></div>
    </div>
  </div>
  <!-- /PRELOADER -->
  
  <!-- MOBILE MENU -->
  <div class="arlo_tm_mobile_header_wrap">
    <div class="main_wrap">
      <div class="logo">
        <img src="/assets/images/logo.png" alt=""  style="height: 20px"/>
      </div>
      <div class="arlo_tm_trigger">
        <div class="hamburger hamburger--collapse-r">
          <div class="hamburger-box">
            <div class="hamburger-inner"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="arlo_tm_mobile_menu_wrap">
        <div class="mob_menu">
        <ul class="anchor_nav">
          <li><a href="/#home">Home</a></li>
          <li><a href="/#about">About</a></li>
          <li><a href="/#portofolio">Project</a></li>
          <!-- <li><a href="/#news">Blog</a></li> -->
          <li><a href="/#contact">Contact</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- /MOBILE MENU -->
  
    <!-- CONTENT -->
  <div class="arlo_tm_content">
    
    <!-- LEFTPART -->
    <div class="arlo_tm_leftpart_wrap">
      <div class="leftpart_inner">
        <div class="logo_wrap">
          <a href="#"><img src="/assets/images/logo.png" alt="" style="height: 120px" /></a>
        @guest
        @else
        <div class="menu_list_wrap">
          <ul class="anchor_nav" style="text-align:left; margin-left:-20px; margin-top: 30px; margin-bottom:-50px">
            <li >
                <a href="/admin/blog">
                    Dashboard
                    <!-- {{ Auth::user()->name }} -->
                </a>
            </li>
                
            <li >
              <a href="{{ route('logout') }}"
                 onclick="event.preventDefault();
                               document.getElementById('logout-form').submit();">
                  {{ __('Logout') }}
              </a>
              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                  @csrf
              </form>
            </li>
          </ul>
        </div>
        @endguest
        </div>
        <div class="menu_list_wrap">
          <ul class="anchor_nav">

            <li><a href="/#home">Homes  </a></li>
            <li><a href="/#about">About</a></li>
            <li><a href="/#portofolio">Project</a></li>
            <!-- <li><a href="/#news">Blog</a></li> -->
            <li><a href="/#contact">Contact</a></li>
          </ul>
        </div>
        <a class="arlo_tm_resize" href="#"><i class="fa fa-angle-double-left"></i></a>
      </div>
    </div>
    <!-- /LEFTPART -->  


	@yield('content')

<!-- CONTACT & FOOTER -->

            <div class="arlo_tm_footer_wrap">
              <div class="container">
                <p>&copy; Copyright 2019. All Rights are Reserved.</p>
              </div>
            </div>
          </div>
        </div>
        <!-- /CONTACT & FOOTER -->
        
      </div>
    </div>
    <!-- /RIGHTPART -->
    
    <a class="arlo_tm_totop" href="#"></a> 
    
  </div>
</div>
<!-- / WRAPPER ALL -->
  
<!-- SCRIPTS -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/js/fontawesome.js"></script>
<!--[if lt IE 10]> <script type="text/javascript" src="js/ie8.js"></script> <![endif]-->  
<script src="/assets/js/plugins.js"></script>
<script src="/assets/js/init.js"></script>
<!-- /SCRIPTS -->

</body>
</html>