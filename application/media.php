<?php
session_start(); 
error_reporting(0);
include "config/koneksi.php";
	if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
	header ("location:index.php");
}
else{
?>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sistem Informasi Koperasi Karyawan</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css" /> 

  <!-- Calendar Styling  -->
    <link rel="stylesheet" href="assets/css/plugins/calendar/calendar.css" />
    
    <!-- Fonts  -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,300' rel='stylesheet' type='text/css'>
    
    <!-- Base Styling  -->
    <link rel="stylesheet" href="assets/css/app/app.v1.css" />

    <!-- Switch Button Styling -->
    <!-- <link rel="stylesheet" href="../assets/css/plugins/switch-buttons/switch-buttons.css" /> -->

    <!-- Font Awesome Styling -->
    <!-- <link rel="stylesheet" href="../assets/css/fontawesome/font-awesome.css" /> -->

    <!-- <link rel="stylesheet" href="../assets/css/app/email.css" />
    <link rel="stylesheet" href="../assets/css/app/timeline.css" /> -->

    <!-- Plugin Styling  -->
    <!-- <link rel="stylesheet" href="../assets/css/plugins/bootstrap-chosen/chosen.css" />
    <link rel="stylesheet" href="../assets/css/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css" />
    <link rel="stylesheet" href="../assets/css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" /> -->
   	<!-- <link rel="stylesheet" href="../assets/css/plugins/cropper/cropper.css" />
    <link rel="stylesheet" href="../assets/css/plugins/datatables/jquery.dataTables.css" />
    <link rel="stylesheet" href="../assets/css/plugins/elfinder/elfinder.min.css" />
    <link rel="stylesheet" href="../assets/css/plugins/elfinder/theme.css" />
    <link rel="stylesheet" href="../assets/css/plugins/filebrowser/filebrowser.css" />
    <link rel="stylesheet" href="../assets/css/plugins/file-upload/jquery.fileupload.css" />
    <link rel="stylesheet" href="../assets/css/plugins/file-upload/jquery.fileupload-noscript.css" />
    <link rel="stylesheet" href="../assets/css/plugins/file-upload/jquery.fileupload-ui.css" />
    <link rel="stylesheet" href="../assets/css/plugins/file-upload/jquery.fileupload-ui-noscript.css" />
    <link rel="stylesheet" href="../assets/css/plugins/typeahead/typeahead.css" /> -->
    <style type="text/css">
    h1{
      font-family: Segoe UI Light;
    }
    h2{
      font-family: Segoe UI Light;
    }
    h3{
      font-family: Segoe UI Light;
    }
    h4{
      font-family: Segoe UI Light;
    }
    p{
      font-family: Segoe UI Light;
    }
    .btn{
      font-family: Segoe UI Light;
    }
    .table{
      font-family: Calibri Light;
    }
    li{
      font-family: Segoe UI Light;
    }
    </style>

</head>
<!-- END HEAD -->
<body>

    <!-- Preloader -->
    <div class="loading-container">
      <div class="loading">
        <div class="l1">
          <div></div>
        </div>
        <div class="l2">
          <div></div>
        </div>
        <div class="l3">
          <div></div>
        </div>
        <div class="l4">
          <div></div>
        </div>
      </div>
    </div>
    <!-- Preloader -->
	<aside class="left-panel">
    		
            <div class="user text-center">
              <img alt="" src="foto/<?php echo "$_SESSION[foto]"; ?>" class="img-circle" height="60"/>
              <h4 class="user-name"><?php echo strtoupper("$_SESSION[namalengkap]"); ?></h4>
                  
                  <div class="dropdown user-login">
                  <button class="btn btn-xs dropdown-toggle btn-rounded" type="button" data-toggle="dropdown" aria-expanded="true">
                    <i class="fa fa-circle status-icon available"></i>&nbsp;<?php echo strtoupper("$_SESSION[leveluser]"); ?>&nbsp;<i class="fa fa-angle-down"></i>
                  </button>
                  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                    <li role="presentation"><a role="menuitem" href="#"><i class="fa fa-circle status-icon busy"></i>&nbsp;<?php echo strtoupper("$_SESSION[id_cabang]"); ?>&nbsp;</a></li>
                    <li role="presentation"><a role="menuitem" href="logout.php"><i class="fa fa-circle status-icon signout"></i> KELUAR</a></li>
                  </ul>
                  </div>	 
            </div>
            
            <nav class="navigation">
            	<ul class="list-unstyled">
                	<li class="active"><a href="media.php?module=home"><i class="fa fa-bookmark-o"></i><span class="nav-label">Dashboard</span></a>
                  </li>
                    
                      <?php
                      $sql=mysql_query("SELECT * FROM mainmenu ORDER BY urutan"); 
                      while ($m=mysql_fetch_array($sql)){ 
                        echo "<li class=\"has-submenu\"><a href='$m[link]'><i class='fa fa-chevron-right'></i><span class='nav-label'>$m[nama_menu]</span></a>";
                        $menuutama=$m['id_main'];
                        $sql2=mysql_query("SELECT * FROM submenu WHERE id_main='$menuutama' AND level='$_SESSION[leveluser]' ");
                        echo "<ul class='list-unstyled'>";
                        while ($m2=mysql_fetch_array($sql2)){  
                          echo "<li><a href='$m2[link_sub]'><i class='fa fa-check-square'></i>$m2[nama_sub]</a></li>";
                        }
                        echo "</ul>"; 
                      }
                      echo "</li>";       
                      ?>        
              </ul>
            </nav>
            
    </aside>
    <!-- Aside Ends-->	

    <section class="content">
    	
        <header class="top-head container-fluid">
            <button type="button" class="navbar-toggle pull-left">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <form role="search" class="navbar-left app-search pull-left hidden-xs">
              <input type="text" placeholder="Enter keywords..." class="form-control form-control-circle">
          	</form>
            
            <ul class="nav-toolbar">
            	<li class="dropdown"><a href="#" data-toggle="dropdown"><i class="fa fa-comments-o"></i><span class="badge bg-warning"></span></a>
                	<div class="dropdown-menu md arrow pull-right panel panel-default arrow-top-right messages-dropdown">
                        <div class="panel-heading">
                      	Messages
                        </div>
                        
                        <div class="list-group">
                            
                            <a href="#" class="btn btn-info btn-flat btn-block">View All Messages</a>

                        </div>
                        
                    </div>
                </li>
                <li class="dropdown"><a href="#" data-toggle="dropdown"><i class="fa fa-bell-o"></i><span class="badge"></span></a>
                	<div class="dropdown-menu arrow pull-right md panel panel-default arrow-top-right notifications">
                        <div class="panel-heading">
                      	Notification
                        </div>
                        
                        <div class="list-group">
                        
                        </div>
                        
                    </div>
                </li>
                <li class="dropdown"><a href="#" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
                	<div class="dropdown-menu lg pull-right arrow panel panel-default arrow-top-right">
                    	<div class="panel-heading">
                        	More Apps
                        </div>
                        <div class="panel-body text-center">
                        	<div class="row">
                            	<div class="col-xs-6 col-sm-4"><a href="#" class="text-green"><span class="h2"><i class="fa fa-envelope-o"></i></span><p class="text-gray no-margn">Messages</p></a></div>
                                <div class="col-xs-6 col-sm-4"><a href="#" class="text-purple"><span class="h2"><i class="fa fa-calendar-o"></i></span><p class="text-gray no-margn">Events</p></a></div>
                                
                                <div class="col-xs-12 visible-xs-block"><hr></div>
                                
                                <div class="col-xs-6 col-sm-4"><a href="#" class="text-red"><span class="h2"><i class="fa fa-comments-o"></i></span><p class="text-gray no-margn">Chatting</p></a></div>
                                
                                <div class="col-lg-12 col-md-12 col-sm-12  hidden-xs"><hr></div>
                            
                            	<div class="col-xs-6 col-sm-4"><a href="#" class="text-yellow"><span class="h2"><i class="fa fa-folder-open-o"></i></span><p class="text-gray">Folders</p></a></div>
                                
                                <div class="col-xs-12 visible-xs-block"><hr></div>
                                
                                <div class="col-xs-6 col-sm-4"><a href="#" class="text-primary"><span class="h2"><i class="fa fa-flag-o"></i></span><p class="text-gray">Task</p></a></div>
                                <div class="col-xs-6 col-sm-4"><a href="#" class="text-info"><span class="h2"><i class="fa fa-star-o"></i></span><p class="text-gray">Favorites</p></a></div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </header>
        <!-- Header Ends -->
        
        
        <div class="warper container-fluid">
            <ol class="breadcrumb">
              <li><a href="#"><?php echo strtoupper("$_SESSION[leveluser]"); ?></a></li>
              <li><a href="#"><?php echo "$_SESSION[id_cabang]"; ?></a></li>
              <li class="active"><?php echo strtoupper("$_SESSION[namalengkap]"); ?></a></li>
            </ol>
            

            <div class="page-header">
              <h1>Dashboard <i><small>Koperasi Karyawan Indocement</small></i></h1>
              <div class="alert alert-success" role="alert" style="font-family:Segoe UI;">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;
                Selamat Datang, <?php echo strtoupper("$_SESSION[namalengkap]"); ?>!
              </div>
            </div>
            <div class="row">      
              <!-- Konten disini -->
              <?php include "content.php"; ?>
            </div>
        </div>
        <!-- Warper Ends Here (working area) -->


        <footer class="container-fluid footer">
        	Copyright &copy; 2015 <a href="#" target="_blank">Dani Ibrahim</a>
            <a href="#" class="pull-right scrollToTop"><i class="fa fa-chevron-up"></i></a>
        </footer>
        
    
    </section>
    <!-- Content Block Ends Here (right box)-->

    <!-- JQuery v1.9.1 -->
    <script src="assets/js/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
    
    <!-- Bootstrap -->
    <script src="assets/js/bootstrap/bootstrap.min.js"></script>
    
    <!-- Globalize -->
    <script src="assets/js/globalize/globalize.min.js"></script>
    
    <!-- Angular JS -->
    <script src="../../../ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.14/angular.min.js"></script>
    <!-- ToDo List Plugin -->
    <script src="assets/js/angular/todo.js"></script>
    
    <!-- Calendar JS -->
    <script src="assets/js/plugins/calendar/calendar.js"></script>
    <!-- Calendar Conf -->
    <script src="assets/js/plugins/calendar/calendar-conf.js"></script>
  
    <!-- Custom JQuery -->
    <script src="assets/js/app/custom.js" type="text/javascript"></script>

    <!-- Plugin JS -->
    <script src="assets/js/plugins/underscore/underscore-min.js"></script>
    <script src="assets/js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
    <script src="assets/js/plugins/DevExpressChartJS/dx.chartjs.js"></script>
    <script src="assets/js/plugins/DevExpressChartJS/world.js"></script>
    <script src="assets/js/plugins/DevExpressChartJS/demo-charts.js"></script>
    <script src="assets/js/plugins/DevExpressChartJS/demo-vectorMap.js"></script>
    <script src="assets/js/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="assets/js/plugins/sparkline/jquery.sparkline.demo.js"></script>

    <!-- Moment -->
    <!-- <script src="../assets/js/moment/moment.js" type="text/javascript"></script> -->
    
    <!-- Plugin JS -->
    <!-- <script src="../assets/js/plugins/bootstrap-chosen/chosen.jquery.js"></script>
    <script src="../assets/js/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="../assets/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
    <script src="../assets/js/plugins/bootstrap-validator/bootstrapValidator.min.js"></script>
    <script src="../assets/js/plugins/bootstrap-validator/bootstrapValidator-conf.js"></script>
    <script src="../assets/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.js"></script>
    <script src="../assets/js/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.min.js"></script> -->
    <!-- <script src="../assets/js/plugins/ckeditor/ckeditor.js"></script>
    <script src="../assets/js/plugins/ckeditor/adapters/jquery.js"></script>
    <script src="../assets/js/plugins/cropper/adapters/cropper.min.js"></script>
    <script src="../assets/js/plugins/cropper/cropper-conf.js"></script>
    <script src="../assets/js/plugins/datatables/jquery.dataTables.js"></script>
    <script src="../assets/js/plugins/datatables/jquery.dataTables-conf.js"></script> -->
    <!-- <script src="../assets/js/plugins/DevExpressChartJS/demo-gauges.js"></script>
    <script src="../assets/js/plugins/DevExpressChartJS/demo-rangeselector.js"></script> -->
    <!-- <script src="../assets/js/plugins/elfinder/elfinder.min.js"></script>
    <script src="../assets/js/plugins/filebrowser/filebrowser.js"></script>
    <script src="../assets/js/plugins/file-upload/fileupload-conf.js"></script>
    <script src="../assets/js/plugins/file-upload/jquery.fileupload.js"></script>
    <script src="../assets/js/plugins/file-upload/jquery.fileupload-audio.js"></script>
    <script src="../assets/js/plugins/file-upload/jquery.fileupload-image.js"></script>
    <script src="../assets/js/plugins/file-upload/jquery.fileupload-process.js"></script>
    <script src="../assets/js/plugins/file-upload/jquery.fileupload-ui.js"></script>
    <script src="../assets/js/plugins/file-upload/jquery.fileupload-validate.js"></script>
    <script src="../assets/js/plugins/file-upload/jquery.fileupload-video.js"></script>
    <script src="../assets/js/plugins/file-upload/jquery.iframe-transport.js"></script>
    <script src="../assets/js/plugins/file-upload/vendor/jquery.ui.widget.js"></script>
    <script src="../assets/js/plugins/inputmask/jquery.inputmask.bundle.js"></script> -->
    <!-- <script src="../assets/js/plugins/typehead/typeahead.bundle.js"></script>
    <script src="../assets/js/plugins/typehead/typeahead.bundle-conf.js"></script> -->

	<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../assets/js/analytics.js','ga');
    
    ga('create', 'UA-56821827-1', 'auto');
    ga('send', 'pageview');
    
    </script>

</body>
<!-- END BODY -->
<?php
}
?>