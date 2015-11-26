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
if ($module=='orderdetail' AND $act=='hapus'){
  mysql_query("DELETE FROM ordersdetail WHERE id_ordersdetail='$_GET[id]'");
	header('location:../../media.php?module='.$module.'&id='.$_GET[id_orders]); 
}

// Input order detail
if ($module=='orderdetail' AND $act=='tambahorderdetail'){
	$cariorders=mysql_query("SELECT * FROM orders where id_orders='$_POST[id]' ");
	$r=mysql_fetch_array($cariorders);

	$cariproduk=mysql_query("SELECT * FROM produk where id_produk='$_POST[id_produk]' ");
	$r1=mysql_fetch_array($cariproduk);
	$nama_produk=$r1[nama_produk];
	$harga=$r1[harga];
	$diskon=$r1[diskon];
	mysql_query("insert into ordersdetail (
																			id_orders, 
																			id_produk, 
																			nama_produk, 
																			harga, 
																			diskon,
																			qty) 
																			values(
																			'$_POST[id_orders]',
																			'$_POST[id_produk]',
																			'$nama_produk',
																			'$harga',
																			'$diskon',
																			'$_POST[qty]') ");
header('location:../../media.php?module='.$module.'&id='.$_POST[id_orders]); 
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

}
?>
