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

// Input dealer
if ($module=='dealer' AND $act=='input'){
  $urut=  mysql_query("SELECT * FROM dealer ORDER BY id_dealer DESC LIMIT 1");
  $u=  mysql_fetch_array($urut);
  $urut3=$u[0]+1;
  mysql_query("INSERT INTO dealer
	                       VALUES('$urut3',
                                '$_POST[nama_dealer]',
                                '$_POST[alamat]',
                                '$_POST[kota]',
                                '$_POST[telp]',
                                '$_POST[fax]',
                                '$_POST[seles]',
                                '$_POST[service]',
                                '$_POST[npwp]'
                                )");
  header('location:../../media.php?module='.$module);
}

// Update dealer
elseif ($module=='dealer' AND $act=='update'){
    mysql_query("UPDATE dealer SET nama='$_POST[nama_dealer]',
                                   alamat='$_POST[alamat]',
                                   kota='$_POST[kota]',
                                   telp='$_POST[telp]',
                                   fax='$_POST[fax]',
                                   salesmanager='$_POST[seles]',
                                   servicemanager='$_POST[service]',
                                   npwp='$_POST[npwp]'
                           WHERE  id_dealer     = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}

// Hapus dealer
elseif ($module=='dealer' AND $act=='hapus'){
    mysql_query("DELETE FROM dealer WHERE id_dealer = '$_GET[id]'");
  header('location:../../media.php?module='.$module);
}


}
?>
