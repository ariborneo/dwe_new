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

$module=$_GET[module];
$act=$_GET[act];

// Hapus dispenser
if ($module=='dispenser' AND $act=='hapus'){
  mysql_query("DELETE FROM dispenser WHERE id_dispenser='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}
// Input dispenser
elseif ($module=='dispenser' AND $act=='input'){
  $nama_dispenser = seo_title($_POST['nama_dispenser']);
  mysql_query("INSERT INTO dispenser(id_pompa,id_tangki,kd_dispenser,nama_dispenser) VALUES
                                    ('$_POST[id_pompa]',
                                    '$_POST[id_tangki]',
                                    '$_POST[kd_dispenser]',
                                    '$_POST[nama_dispenser]')");
  header('location:../../media.php?module='.$module);
}
//
// Update dispenser
elseif ($module=='dispenser' AND $act=='update'){
  $nama_dispenser = seo_title($_POST['nama_dispenser']);
  mysql_query("UPDATE dispenser SET id_pompa='$_POST[id_pompa]',
                                  id_tangki='$_POST[id_tangki]',
                                  kd_dispenser='$_POST[kd_dispenser]', 
                                  nama_dispenser='$_POST[nama_dispenser]'
               WHERE id_dispenser = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
}
?>
