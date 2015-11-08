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

  // Hapus modul
  if ($module=='modul' AND $act=='hapus'){
    mysql_query("DELETE FROM modul WHERE id_modul='$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }

  // Input modul
  elseif ($module=='modul' AND $act=='input'){
    // Cari angka urutan terakhir
    $u=mysql_query("SELECT urutan FROM modul ORDER by urutan DESC");
    $d=mysql_fetch_array($u);
    $urutan=$d['urutan']+1;
    
    // Input data modul
    mysql_query("INSERT INTO modul(nama_modul,
                                   link,
                                   static_content,
                                   gambar,
                                   publish,
                                   status,
                                   aktif,
                                   urutan,
                                   link_seo) 
  	                       VALUES('$_POST[nama_modul]',
                                  '$_POST[link]',
                                  '',
                                  '',
                                  '$_POST[publish]',
                                  '$_POST[status]',
                                  '$_POST[aktif]',
                                  '$urutan',
                                  '')");
    header('location:../../media.php?module='.$module);
  }

  // Update modul
  elseif ($module=='modul' AND $act=='update'){
    mysql_query("UPDATE modul SET nama_modul      = '$_POST[nama_modul]',
                                  link            = '$_POST[link]',
                                  static_content  = '',
                                  gambar          = '',
                                  publish         = '$_POST[publish]',
                                  status          = '$_POST[status]',
                                  aktif           = '$_POST[aktif]',
                                  urutan          = '$_POST[urutan]',
                                  link_seo        = ''
                            WHERE id_modul   = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }
}
?>
