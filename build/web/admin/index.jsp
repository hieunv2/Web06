<%-- 
    Document   : index
    Created on : Dec 19, 2019, 8:42:15 PM
    Author     : 84969
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Admin</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap Material Datetime Picker Css -->
    <link href="plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />

    <!-- Bootstrap DatePicker Css -->
    <link href="plugins/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet" />

    <!-- JQuery DataTable Css -->
    <link href="plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Wait Me Css -->
    <link href="plugins/waitme/waitMe.css" rel="stylesheet" />

    <!-- Bootstrap Select Css -->
    <link href="plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />


    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="css/themes/all-themes.css" rel="stylesheet" />
</head>

<body class="theme-red">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <!-- Search Bar -->
    <div class="search-bar">
        <div class="search-icon">
            <i class="material-icons">search</i>
        </div>
        <input type="text" placeholder="START TYPING...">
        <div class="close-search">
            <i class="material-icons">close</i>
        </div>
    </div>
    <!-- #END# Search Bar -->
    <!--Top Bar-->
    <nav class="navbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
            <a href="javascript:void(0);" class="bars"></a>
            <a class="navbar-brand" href="./index.jsp">Shop Online</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <!-- Call Search -->
                <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li>
                <!-- #END# Call Search -->
                <li>
<!--                    @if (SignInManager.IsSignedIn(User))
                    {
                        <form asp-area="Identity" asp-page="/Account/Logout" asp-route-returnUrl="@Url.Action("Index", "Home", new { area = "" })" method="post" id="logoutForm" class="navbar-right">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a asp-area="Identity" asp-page="/Account/Manage/Index" title="Manage">Hello @UserManager.GetUserName(User)!</a>
                                </li>
                                <li>
                                    <button type="submit" class="btn btn-link navbar-btn navbar-link">Logout</button>
                                </li>
                            </ul>
                        </form>
                    }-->
<!--                    else
                    {-->
                        <ul class="nav navbar-nav">
                            <li><a href="" >Register</a></li>
                            <li><a href="">Login</a></li>
                        </ul>
                    <!--}-->
                </li>
                <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="material-icons">more_vert</i></a></li>
            </ul>
        </div>
    </div>
</nav>>
    <!---->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
    <!-- User Info -->
    <div class="user-info">
        <div class="image">
            <img src="../../images/user.png" width="48" height="48" alt="User" />
        </div>
        <div class="info-container">
            <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">John Doe</div>
            <div class="email">john.doe@example.com</div>
            <div class="btn-group user-helper-dropdown">
                <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                <ul class="dropdown-menu pull-right">
                    <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">input</i>Sign Out</a></li>
                    <partial name="_LoginPartial" />
                </ul>
            </div>
        </div>
    </div>
    <!-- #User Info -->
    <!-- Menu -->
    <div class="menu">
        <ul class="list">
            <li class="header">MAIN NAVIGATION</li>
            <li>
                <a href="/">
                    <i class="material-icons">home</i>
                    <span>Home</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">subtitles</i>
                    <span>QUẢN LÝ SẢN PHẨM</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="/Web06/admin/Product/index.jsp">
                            <i class="material-icons">menu</i>
                            <span>Danh sách sản phẩm</span>
                        </a>
                    </li>
                    <li>
                        <a href="/Web06/admin/Product/create.jsp">
                            <i class="material-icons">add</i>
                            <span>Thêm sản phẩm</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">menu</i>
                    <span>QUẢN LÝ DANH MỤC</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="">
                            <i class="material-icons">menu</i>
                            <span>Danh sách danh mục</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="material-icons">add</i>
                            <span>Thêm danh mục</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">local_shipping</i>
                    <span>QUẢN LÝ NHÀ CUNG CẤP</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="">
                            <i class="material-icons">menu</i>
                            <span>Danh sách nhà cung cấp</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="material-icons">add</i>
                            <span>Thêm nhà cung cấp</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">people</i>
                    <span>QUẢN LÝ NGƯỜI DÙNG</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="">
                            <i class="material-icons">menu</i>
                            <span>Danh sách người dùng</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="material-icons">add</i>
                            <span>Thêm người dùng</span>
                        </a>
                    </li>
                </ul>
            </li>

            }
        </ul>
    </div>
    <!-- #Menu -->
    <!-- Footer -->
    <div class="legal">
        <div class="copyright">
            &copy; 2018 - 2019 <a href="javascript:void(0);">Hiếu BoN</a>
        </div>
        <div class="version">
            <b>Shop Online</b>
        </div>
    </div>
    <!-- #Footer -->
</aside>
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        
        <!-- #END# Right Sidebar -->
    </section>
    <section class="content">
        <div class="container-fluid">
     
<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary" style="font-size:14px;color:white;font-weight:500;">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-arrow-alt-circle-up fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge" style="font-size:20px;">10</div>
                        <div>Nhập kho</div>
                    </div>
                </div>
            </div>
            <a asp-area="Admin" asp-controller="Inputs" asp-action="Index" >
                <div class="panel-footer">
                    <span class="pull-left">Xem Chi Tiết</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel"style="font-size:14px;color:white;font-weight:500;">
            <div class="panel-heading" style="background-color:forestgreen;">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-tasks fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge" style="font-size:20px;">30</div>
                        <div>Sản Phẩm</div>
                    </div>
                </div>
            </div>
            <a asp-area="Admin" asp-controller="Products" asp-action="Index">
                <div class="panel-footer">
                    <span class="pull-left">Xem Chi Tiết</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>

    <div class="col-lg-3 col-md-6">
        <div class="panel"style="font-size:14px;color:white;font-weight:500;">
            <div class="panel-heading" style="background-color:orangered;">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-truck-moving fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge"style="font-size:20px;">40</div>
                        <div>Nhà cung cấp</div>
                    </div>
                </div>
            </div>
            <a asp-area="Admin" asp-controller="Suppliers" asp-action="Index">
                <div class="panel-footer">
                    <span class="pull-left">Xem Chi Tiết</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>

    <div class="col-lg-3 col-md-6">
        <div class="panel" style="font-size:14px;color:white;font-weight:500;">
            <div class="panel-heading" style="background-color:darkviolet">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-bars fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge" style="font-size:20px;">25</div>
                        <div>Danh mục sản phẩm</div>
                    </div>
                </div>
            </div>
            <a asp-area="Admin" asp-controller="Categories" asp-action="Index">
                <div class="panel-footer">
                    <span class="pull-left">Xem Chi Tiết</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>

    <div class="col-lg-6 col-md-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-shopping-cart fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">9</div>
                        <div>Đơn Hàng - Sản Phẩm</div>
                    </div>
                </div>
            </div>
            <a href="/admin/don-hang">
                <div class="panel-footer">
                    <span class="pull-left">Xem Chi Tiết</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    
</div>
    

   </div>
    </section>

    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    @*<script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>*@

    <!-- Slimscroll Plugin Js -->
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Autosize Plugin Js -->
    <script src="plugins/autosize/autosize.js"></script>

    <!-- Moment Plugin Js -->
    <script src="plugins/momentjs/moment.js"></script>


    <!-- Bootstrap Material Datetime Picker Plugin Js -->
    <script src="plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>

    <!-- Bootstrap Datepicker Plugin Js -->
    <script src="plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>

    <script src="js/pages/tables/jquery-datatable.js"></script>

    <!-- Demo Js -->
    <script src="js/demo.js"></script>

    <!-- Demo Js -->
    <script src="js/script.js"></script>

</body>

</html>
