<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  include "../../config/koneksi.php";
  include "../../config/fungsi_seo.php";

  $module=$_GET['module'];
  $act=$_GET['act'];

  // Hapus cabang
  if ($module=='cabang' AND $act=='hapus'){
    mysql_query("DELETE FROM cabang WHERE id_cabang='$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }
  // Input cabang
  elseif ($module=='cabang' AND $act=='input'){
    $nama_cabang = seo_title($_POST['kd_cabang']);
    mysql_query("INSERT INTO cabang VALUES('NULL',
                                           '$_POST[kd_cabang]',
                                           '$_POST[nama_cabang]',
                                           '$_POST[alamat]',
                                           '$_POST[telp]',
                                           '$_POST[pic]')");
    header('location:../../media.php?module='.$module);
  }
  //
  // Update cabang
  elseif ($module=='cabang' AND $act=='update'){
    $nama_cabang = seo_title($_POST['kd_cabang']);
    mysql_query("UPDATE cabang SET kd_cabang='$_POST[kd_cabang]', 
                                   nama_cabang='$_POST[nama_cabang]', 
                                   alamat='$_POST[alamat]', 
                                   telp='$_POST[telp]', 
                                   pic='$_POST[pic]'
                 WHERE id_cabang = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }
}
?>
