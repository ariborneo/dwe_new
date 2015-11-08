<?php
    $tanggal = date("Y-m-d"); // tanggal sekarang
    $bulan   = date("m")+1; // tanggal sekarang
	$tahun   = date("Y"); // tahun

	$besok = mktime (0,0,0, date("m"), date("d")+1,date("Y"));
	$bulanlalu = mktime (0,0,0, date("m")-1, date("d"), date("Y"));
	$tahundepan = mktime (0,0,0, date("m"), date("d"), date("Y")+1);
?>

	<div class="col-md-6 col-lg-3">
        <div class="panel panel-default clearfix dashboard-stats rounded">
            <span id="dashboard-stats-sparkline1" class="sparkline transit"></span>
            <i class="fa fa-shopping-cart bg-danger transit stats-icon"></i>
            <h3 class="transit">2048<small class="text-green"><i class="fa fa-caret-up"></i> 8%</small></h3>
            <p class="text-muted transit">Penjualan Terakhir</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="panel panel-default clearfix dashboard-stats rounded">
            <span id="dashboard-stats-sparkline2" class="sparkline transit"></span>
            <i class="fa fa-tags bg-info transit stats-icon"></i>
            <h3 class="transit">91% <small class="text-red"><i class="fa fa-caret-down"></i> 6%</small></h3>
            <p class="text-muted transit">Transaksi</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="panel panel-default clearfix dashboard-stats rounded">
            <span id="dashboard-stats-sparkline3" class="sparkline transit"></span>
            <i class="fa fa-user bg-success transit stats-icon"></i>
            <h3 class="transit">127<small class="text-green"><i class="fa fa-caret-up"></i> 9%</small></h3>
            <p class="text-muted transit">Total Pelanggan</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="panel panel-default clearfix dashboard-stats rounded">
            <span id="dashboard-stats-sparkline4" class="sparkline transit"></span>
            <i class="fa fa-warning bg-warning transit stats-icon"></i>
            <h3 class="transit">-12 <small class="text-red"><i class="fa fa-caret-down"></i> 20%</small></h3>
            <p class="text-muted transit">Stok Rusak</p>
        </div>
    </div>

    <div class=\"col-md-12\">
      <center><h2 style="font-family:Segoe UI Light;"><span class="label label-primary">Selamat Datang di Sistem Informasi Koperasi Karyawan Indocement</span></h2></center>
    </div>