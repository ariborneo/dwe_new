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
  if ($module=='operator' AND $act=='hapus'){
    mysql_query("DELETE FROM operator WHERE id_operator='$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }

  // Input Operator
  if ($module=='operator' AND $act=='input'){
  	$cari=mysql_query("SELECT * FROM operator where username='$_POST[username]'");
  	$ketemu=mysql_num_rows($cari);
  	if ($ketemu > 0){
  	 echo "<center><h2>Username sudah dipakai..., ";
  	 echo "<a href='../../media.php?module=operator'> Back</a></h2></center>";
       return;	 
  	}
    // $id_atasan = ($_POST[id_atasan]);
    $pass=md5($_POST['password']);
    mysql_query("INSERT INTO operator
  	                       VALUES('NULL',
                             '$_POST[nama]',
                             '$_POST[alamat]',
                             '$_POST[kota]',
                             '$_POST[telp]',
                             '$_POST[cabang]',
                             '$_POST[atasan]',
                             '$_POST[username]',
                             '$pass',
                             '$_POST[level]',
                             '$_POST[email]',
                             'N',
                             '')");
    header('location:../../media.php?module='.$module);
  }

  // Update user
  elseif ($module=='operator' AND $act=='update'){
    if (empty($_POST['password'])) {															
      mysql_query("UPDATE operator SET nama='$_POST[nama]',
                                    alamat='$_POST[alamat]',
                                    kota='$_POST[kota]',
                                    telp='$_POST[telp]',
                                    email='$_POST[email]'
                             WHERE  id_operator  = '$_POST[id]'");
    }
    // Apabila password diubah
    else{
      $pass=md5($_POST['password']);
      mysql_query("UPDATE operator SET nama='$_POST[nama]',
                                  alamat='$_POST[alamat]',
                                  kota='$_POST[kota]',
                                  telp='$_POST[telp]',
                                  password='$pass',
                                  email='$_POST[email]'
                             WHERE id_operator     = '$_POST[id]'");
    }
    header('location:../../media.php?module='.$module);
  }
}
?>
