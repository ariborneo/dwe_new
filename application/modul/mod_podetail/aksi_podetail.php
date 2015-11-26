<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
include "../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];
$tanggal_jual=date('Y-m-d');
// Hapus order detail
if ($module=='podetail' AND $act=='hapus'){
	 mysql_query("DELETE FROM podetail WHERE id_podetail='$_GET[id]'");
	header('location:../../media.php?module='.$module.'&id='.$_GET[id_po]);
 } 

 
}

// Input order detail
if ($module=='podetail' AND $act=='tambahpodetail'){
	
	$caribarang=mysql_query("SELECT * FROM barang where kd_barang='$_POST[kd_barang]' ");
	$r=mysql_fetch_array($caribarang);
	$nama_barang=$r[nama_barang];

	$caristock=mysql_query("SELECT * FROM stock WHERE kd_barang='$_POST[kd_barang]' ");
	$s=mysql_fetch_array($caristock);
	$hpp=$s[hpp];
	$jumstock=$s[jumlah_stock];

	$podetail=mysql_query("SELECT * FROM podetail WHERE kd_barang='$_POST[kd_barang]' ");
	$p=mysql_fetch_array($podetail);
	$hargabeli=$s[harga_beli];
	$qty=$s[qty];

	$totalhpp=$hargabeli*$jumstock;
	$totalhargabeli=$harga_beli*$qty;

	

	
	mysql_query("INSERT INTO podetail( 
																			id_po,
																			kd_barang, 
																			nama_barang, 
																			harga_beli,
																			qty) 
																			values(
																			'$_POST[id_po]',
																			'$_POST[kd_barang]',
																			'$nama_barang',
																			'$_POST[harga_beli]',
																			'$_POST[qty]')");
header('location:../../media.php?module='.$module.'&id='.$_POST[id_po]);
mysql_query("UPDATE stock SET harga_awal='$_POST[harga_beli] WHERE kd_barang = '$_POST[kd_barang]' "); 
mysql_query("UPDATE stock SET jumlah_stock=jumlah_stock-'$_POST[qty]' WHERE kd_barang = '$_POST[kd_barang]' ");
}



// Update servisjasa
elseif ($module=='ordersdetail' AND $act=='update'){
 mysql_query("update ordersdetail set  id_merk='$_POST[id_merk]',
																		 id_model='$_POST[id_model]',
																		 id_varian='$_POST[id_varian]',
																		 transmisi='$_POST[transmisi]',
																		 warna='$_POST[warna]',
																		 tahun='$_POST[tahun]', 
																		harga_sewa='$_POST[harga_sewa]',
																		harga_driver='$_POST[harga_driver]',
																		komisi='$_POST[komisi]',
																		qty='$_POST[qty]' 
							where id_ordersdetail='$_POST[id_ordersdetail]' ");
header('location:../../media.php?module='.$module.'&spb='.$_POST[id_spb]); 
}
?>
