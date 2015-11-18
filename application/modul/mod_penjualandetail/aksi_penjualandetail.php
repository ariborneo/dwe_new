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
$tgl_penjualan=date('Y-m-d');
// Hapus penjualan detail
if ($module=='penjualandetail' AND $act=='hapus'){
	$penjualandetail=mysql_query("SELECT * FROM penjualandetail WHERE id_penjualandetail='$_GET[id]'");
	while($pd=mysql_fetch_array($penjualandetail)){
		$qty=$pd[qty];
		$kdbarang=$pd[kd_barang];
	}
  mysql_query("DELETE FROM penjualandetail WHERE id_penjualandetail='$_GET[id]'");
  mysql_query("UPDATE stok SET jumlah_stok=jumlah_stok+$qty WHERE kd_barang='$kdbarang'");
	header('location:../../media.php?module='.$module.'&id='.$_GET[id_penjualan]); 
}

// Input penjualan detail
if ($module=='penjualandetail' AND $act=='tambahpenjualandetail'){
	$caripenjualan=mysql_query("SELECT * FROM penjualan where id_penjualan='$_POST[id]' ");
	$r=mysql_fetch_array($caripenjualan);

	$caristok=mysql_query("SELECT * FROM stok where kd_barang='$_POST[kd_barang]'");
	$carimasterbarang=mysql_query("SELECT * FROM masterbarang where kd_barang='$_POST[kd_barang]' ");
	$r1=mysql_fetch_array($carimasterbarang);
	$nama_barang=$r1[nama_barang];
	$harga_jual=$r1[harga_jual];
	$diskon=$r1[diskon];
	$caristok=mysql_query("SELECT * FROM stok where kd_barang='$_POST[kd_barang]'");
	$r2=mysql_fetch_array($caristok);
	$hpp=$r2[hpp];
	$jumstok=$r2[jumlah_stok];
	$qty=$_POST[qty];
	if ($jumstok < $qty){
		echo"<a href=../../media.php?module=penjualandetail&id=$_POST[id_penjualan]><h2> Maaf stok tidak mencukupi, masukan kembali!</h2></a>";
		return;
	}
	mysql_query("insert into penjualandetail (
																			id_penjualan,
																			kd_barang, 
																			nama_barang, 
																			qty, 
																			rph,
																			harga_jual,
																			hpp, 
																			diskon) 
																			values(
																			'$_POST[id_penjualan]',
																			'$_POST[kd_barang]',
																			'$nama_barang',
																			'$_POST[qty]',
																			'$_POST[rph]',
																			'$harga_jual',
																			'$hpp',
																			'$diskon') ");
mysql_query("UPDATE stok SET jumlah_stok=jumlah_stok-'$_POST[qty]' WHERE kd_barang='$_POST[kd_barang]'");
header('location:../../media.php?module='.$module.'&id='.$_POST[id_penjualan]); 
}


// Update servisjasa
/*elseif ($module=='ordersdetail' AND $act=='update'){
) mysql_query("update ordersdetail set  id_merk='$_POST[id_merk]',
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
*/
}
?>