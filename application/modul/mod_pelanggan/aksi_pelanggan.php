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
  if ($module=='pelanggan' AND $act=='input'){
    $nama = strtoupper($_POST['nama']);
    mysql_query("INSERT INTO pelanggan VALUES('NULL',
                                              '$nama',
                                              '$_POST[alamat]',
                                              '$_POST[kota]',
                                              '$_POST[telp]',
  																						'$_POST[gsm1]',
  																						'$_POST[gsm2]',
  																						'$_POST[cdma]',
                                              '$_POST[email]' )");
    header('location:../../media.php?module='.$module);
  }

  // Update pelanggan
  elseif ($module=='pelanggan' AND $act=='update'){
      mysql_query("UPDATE pelanggan SET nama='$_POST[nama]',
                                        alamat='$_POST[alamat]',
                                        kota='$_POST[kota]',
                                        telp='$_POST[telp]',
  																			gsm1='$_POST[gsm1]',
  																			gsm2='$_POST[gsm2]',
  																			cdma='$_POST[cdma]',
                                        email='$_POST[email]'              									  
                             WHERE  id_pelanggan  = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }

  // Hapus pelanggan
  elseif ($module=='pelanggan' AND $act=='hapus'){
      mysql_query("DELETE FROM pelanggan WHERE  id_pelanggan  = '$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }


}
?>
