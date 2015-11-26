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

// Hapus sub menu
if ($module=='po' AND $act=='hapus'){
  mysql_query("DELETE FROM po WHERE id_po='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input sub menu
elseif ($module=='po' AND $act=='input'){
    mysql_query("INSERT INTO po(id_supplier,
                                    tgl_po,
                                    id_cabang,
                                    id_user) 
                            VALUES('$_POST[id_supplier]',
                                   '$_POST[tgl_po]',
                                   '$_SESSION[id_cabang]',
                                   '$_SESSION[id_user]')");
  header('location:../../media.php?module='.$module);
}

// Update sub menu
elseif ($module=='submenu' AND $act=='update'){
    mysql_query("UPDATE submenu SET nama_sub  = '$_POST[nama_sub]',
                                   id_main = '$_POST[menu_utama]',
                                   link_sub  = '$_POST[link_sub]',
																	 urutan  = '$_POST[urutan]',
																	 level  = '$_POST[level]'
                             WHERE id_sub   = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
}
?>
