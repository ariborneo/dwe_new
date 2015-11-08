<?php
include "config/koneksi.php";
// session_start();
// session_destroy();
function antiinjection($data){
  $filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter_sql;
}

$username = $_POST['username'];
$pass     = md5($_POST['password']);

$login=mysql_query("SELECT * FROM users WHERE username='$username' AND password='$pass' AND blokir='N'");
$ketemu=mysql_num_rows($login);
$r=mysql_fetch_array($login);
// Apabila username dan password ditemukan
if ($ketemu > 0){
//	$tampil=mysql_query("select * from level where level_name='$r[level]'");	
//  $level_id=mysql_fetch_array($tampil);
session_start(); 

	$_SESSION['id_user']     	= $r['id_user'];
  $_SESSION['namauser']     = $r['username'];
  $_SESSION['namalengkap']  = $r['nama'];
  $_SESSION['passuser']     = $r['password'];
  $_SESSION['leveluser']    = $r['level'];
  $_SESSION['id_cabang']    = $r['id_cabang'];
  $_SESSION['id_user']      = $r['id_user'];
  $_SESSION['foto']      		= $r['foto'];
  // $_SESSION['level_id']			= $level_id['level_id'];
  
  // session timeout
  include "timeout.php";
  $_SESSION['login'] = 1;
  // timer();

	$sid_lama = session_id();
	
	session_regenerate_id();

	$sid_baru = session_id();

  mysql_query("UPDATE users SET id_session='$sid_baru' WHERE username='$username'");
  //echo "1";
  header("location:media.php?module=home");
}
else{
//echo "0";
 header("location:index.php");
}
?>
