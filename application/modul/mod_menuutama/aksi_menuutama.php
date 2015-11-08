<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	include "../../config/koneksi.php";

	$module=$_GET['module'];
	$act=$_GET['act'];

	// hapus menu utama
	if ($module=='menuutama' AND $act=='hapus'){
	  mysql_query("DELETE FROM mainmenu WHERE id_main='$_GET[id]'");
	  header('location:../../media.php?module='.$module);
	}

	elseif ($module=='menuutama' AND $act=='input'){
	  mysql_query("INSERT INTO mainmenu(nama_menu,
											link,
											aktif,
											urutan,
											level) 
								VALUES('$_POST[nama_menu]',
										'$_POST[link]',
										'Y',
										'$_POST[urutan]',
										'$_POST[level]')");
	  header('location:../../media.php?module='.$module);
	}

	// Update menu utama
	elseif ($module=='menuutama' AND $act=='update'){
	  mysql_query("UPDATE mainmenu SET nama_menu='$_POST[nama_menu]', 
										link='$_POST[link]', 
										aktif='$_POST[aktif]',
										urutan='$_POST[urutan]',
										level='$_POST[level]'								
	               WHERE id_main = '$_POST[id]'");
	  header('location:../../media.php?module='.$module);
	}
}
?>
