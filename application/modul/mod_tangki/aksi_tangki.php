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

  // Hapus tangki
  if ($module=='tangki' AND $act=='hapus'){
    mysql_query("DELETE FROM tangki WHERE id_tangki='$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }
  // Input tangki
  elseif ($module=='tangki' AND $act=='input'){
    $nama_tangki = seo_title($_POST['kd_tangki']);
    mysql_query("INSERT INTO tangki(kd_tangki, 
                                    nama_tangki, 
                                    isi_tangki) 
                      VALUES('$_POST[kd_tangki]',
                             '$_POST[nama_tangki]', 
                             '$_POST[isi_tangki]')");
    header('location:../../media.php?module='.$module);
  }
  //
  // Update tangki
  elseif ($module=='tangki' AND $act=='update'){
    $nama_tangki = seo_title($_POST['kd_tangki']);
    mysql_query("UPDATE tangki SET kd_tangki='$_POST[kd_tangki]', 
                                   nama_tangki='$_POST[nama_tangki]', 
                                   isi_tangki='$_POST[isi_tangki]'
                 WHERE id_tangki = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }
}
?>
