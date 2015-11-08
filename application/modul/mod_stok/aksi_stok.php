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

  // Input stok
  if ($module=='stok' AND $act=='input'){
    
    if('$_POST[kd_cabang]' == '001'){
      mysql_query("INSERT INTO stok VALUES('NULL',
                                            '$_POST[kd_barang]',
                                            '$_POST[jumlah_stok]',
                                            '$_POST[kd_cabang]',
                                            '$_POST[harga_awal]',
                                            '$_POST[hpp]' 
                                      WHERE 'kd_barang' = '001')");
    }
    else{ 
      mysql_query("INSERT INTO stok VALUES('NULL',
                                              '$_POST[kd_barang]',
                                              '$_POST[jumlah_stok]',
                                              '$_POST[kd_cabang]',
                                              '$_POST[harga_awal]',
                                              '$_POST[hpp]')");
    }                                          
    header('location:../../media.php?module='.$module);
  }

  // Update stok
  elseif ($module=='stok' AND $act=='update'){
      mysql_query("UPDATE stok SET kd_barang='$_POST[kd_barang]',
                                    jumlah_stok='$_POST[jumlah_stok]',
                                    kd_cabang='$_POST[kd_cabang]',
                                    harga_awal='$_POST[harga_awal]',
  																	hpp='$_POST[hpp]'            									  
                             WHERE  id_stok  = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }

  // Hapus stok
  elseif ($module=='stok' AND $act=='hapus'){
      mysql_query("DELETE FROM stok WHERE id_stok  = '$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }

}
?>
