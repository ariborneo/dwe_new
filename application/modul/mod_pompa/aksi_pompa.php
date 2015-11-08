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

  // Hapus pompa
  if ($module=='pompa' AND $act=='hapus'){
    mysql_query("DELETE FROM pompa WHERE id_pompa='$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }
  // Input pompa
  elseif ($module=='pompa' AND $act=='input'){
    $nama_pompa = seo_title($_POST['nama_pompa']);
    mysql_query("INSERT INTO pompa(nama_pompa) VALUES('$_POST[nama_pompa]')");
    header('location:../../media.php?module='.$module);
  }
  //
  // Update pompa
  elseif ($module=='pompa' AND $act=='update'){
    $nama_pompa = seo_title($_POST['nama_pompa']);
    mysql_query("UPDATE pompa SET nama_pompa='$_POST[nama_pompa]'
                 WHERE id_pompa = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }
}
?>
