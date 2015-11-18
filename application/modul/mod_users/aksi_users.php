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
  if ($module=='users' AND $act=='hapus'){
    mysql_query("DELETE FROM users WHERE id_user='$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }

  // Input user
  if ($module=='users' AND $act=='input'){
  	$cari=mysql_query("SELECT * FROM users WHERE username='$_POST[username]'");
  	$ketemu=mysql_num_rows($cari);
  	if ($ketemu > 0){
  	 echo "<center><h2>Username sudah dipakai..., ";
  	 echo "<a href='../../media.php?module=users'> Back</a></h2></center>";
       return;	 
  	}
    $pass=md5($_POST['password']);
    mysql_query("INSERT INTO users
  	                       VALUES('NULL',
  													 '$_POST[nama_lengkap]',
                             '$_POST[alamat]',
                             '$_POST[kota]',
                             '$_POST[telp]',
                             '$_POST[dealer]',
                             '$_POST[atasan]',
                             '$_POST[username]',
                             '$pass',
                             '$_POST[level]',
                             '$_POST[email]',
                             'N',
                             '',
                             '')");
    header('location:../../media.php?module='.$module);
  }

  // Update user
  elseif ($module=='users' AND $act=='update'){
    if (empty($_POST['password'])) {															
      mysql_query("UPDATE users SET nama='$_POST[nama_lengkap]',
                                    alamat='$_POST[alamat]',
                                    kota='$_POST[kota]',
                                    telp='$_POST[telp]',
                                    id_cabang='$_POST[dealer]',
                                    email='$_POST[email]'
                             WHERE  id_user  = '$_POST[id]'");
    }
  // Apabila password diubah
  else{
    $pass=md5($_POST['password']);
    mysql_query("UPDATE users SET nama='$_POST[nama_lengkap]',
                                alamat='$_POST[alamat]',
                                kota='$_POST[kota]',
                                telp='$_POST[telp]',
                                id_cabang='$_POST[dealer]',
                                password='$pass',
                                email='$_POST[email]'
                           WHERE id_user     = '$_POST[id]'");
  }
  header('location:../../media.php?module='.$module);
  }
}
?>
