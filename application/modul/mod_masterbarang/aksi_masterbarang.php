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

  // Input pelanggan
  if ($module=='masterbarang' AND $act=='input'){
    mysql_query("INSERT INTO masterbarang VALUES('NULL',
                                              '$_POST[kd_barang]',
                                              '$_POST[nama_barang]',
                                              '$_POST[satuan]',
  																						'$_POST[harga_jual]',
                                              '$_POST[kd_kategori]')");
    header('location:../../media.php?module='.$module);
  }

  // Update pelanggan
  elseif ($module=='masterbarang' AND $act=='update'){
      mysql_query("UPDATE masterbarang SET kd_barang   ='$_POST[kd_barang]',
                                           nama_barang ='$_POST[nama_barang]',
                                           satuan      ='$_POST[satuan]',
                                           harga_jual  ='$_POST[harga_jual]',
                                           kd_kategori ='$_POST[kd_kategori]'              									  
                             WHERE  id_barang  = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }

  // Hapus pelanggan
  elseif ($module=='masterbarang' AND $act=='hapus'){
      mysql_query("DELETE FROM masterbarang WHERE id_barang = '$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }
}
?>
