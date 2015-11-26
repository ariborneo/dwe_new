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
if ($module=='cuti' AND $act=='hapus'){
  mysql_query("DELETE FROM cuti WHERE id_cuti='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}

// Input sub menu
elseif ($module=='cuti' AND $act=='input'){
    mysql_query("INSERT INTO cuti(id_user,
                                  tgl_permohonan,
                                  tujuan_cuti,
                                  hp,
                                  jumlah_cuti) 
                            VALUES('$_POST[id_user]',
                                   '$_POST[tgl_permohonan]',
                                   '$_POST[tujuan_cuti]',
                                   '$_POST[hp]',
                                   '$_POST[jumlah_cuti]')");
  header('location:../../media.php?module='.$module);
}

// Update sub menu
elseif ($module=='cuti' AND $act=='update'){
    mysql_query("UPDATE cuti SET   id_user        = '$_POST[id_user]',
                                   tgl_permohonan = '$_POST[tgl_permohonan]',
                                   tujuan_cuti    = '$_POST[tujuan_cuti]',
																	 hp             = '$_POST[hp]',
																	 jumlah_cuti    = '$_POST[jumlah_cuti]'
                             WHERE id_cuti        = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
}
?>
