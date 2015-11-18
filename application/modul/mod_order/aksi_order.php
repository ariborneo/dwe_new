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

  // Hapus sub menu
  if ($module=='order' AND $act=='hapus'){
    mysql_query("DELETE FROM orders WHERE id_orders='$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }

  // Input sub menu
  elseif ($module=='order' AND $act=='input'){
      mysql_query("INSERT INTO orders(id_pelanggan,
                                      tanggal_orders,
                                      status) 
                              VALUES('$_POST[id_pelanggan]',
                                     '$_POST[tanggal_orders]',
                                     '$_POST[status]')");
    header('location:../../media.php?module='.$module);
  }

  // Update sub menu
  elseif ($module=='order' AND $act=='update'){
      mysql_query("UPDATE orders SET id_pelanggan   = '$_POST[id_pelanggan]',
                                     tanggal_orders = '$_POST[tanggal_orders]',
                                     status         = '$_POST[status]'
                               WHERE id_orders      = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }
}
?>
