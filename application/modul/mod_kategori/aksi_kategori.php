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

  // Hapus kategori
  if ($module=='kategori' AND $act=='hapus'){
    mysql_query("DELETE FROM kategori WHERE id_kategori='$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }
  // Input kategori
  elseif ($module=='kategori' AND $act=='input'){
    $nama_kategori = seo_title($_POST['kd_kategori']);
    mysql_query("INSERT INTO kategori(kd_kategori,
                                    nama_kategori) 
                              VALUES('$_POST[kd_kategori]',
                                     '$_POST[nama_kategori]')");
    header('location:../../media.php?module='.$module);
  }
  //
  // Update kategori
  elseif ($module=='kategori' AND $act=='update'){
    $nama_kategori = seo_title($_POST['kd_kategori']);
    mysql_query("UPDATE kategori SET kd_kategori  ='$_POST[kd_kategori]', 
                                     nama_kategori='$_POST[nama_kategori]'
                 WHERE id_kategori = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }
}
?>
