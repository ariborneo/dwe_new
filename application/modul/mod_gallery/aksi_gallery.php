<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
include "../../config/koneksi.php";
include "../../config/fungsi_thumb.php";
include "../../config/fungsi_seo.php";

$module=$_GET['module'];
$act=$_GET['act'];

// Hapus gallery
if ($module=='gallery' AND $act=='hapus'){
  $data=mysql_fetch_array(mysql_query("SELECT gbr_gallery FROM gallery WHERE id_gallery='$_GET[id]'"));
  if ($data['gbr_gallery']!=''){
    mysql_query("DELETE FROM gallery WHERE id_gallery='$_GET[id]'");
  }
  else{
    mysql_query("DELETE FROM gallery WHERE id_gallery='$_GET[id]'");  
  }   
  header('location:../../media.php?module='.$module);
}

// Input gallery
elseif ($module=='gallery' AND $act=='input'){
  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(000000,999999);
  $nama_file_unik = $acak.$nama_file; 
  
  $gallery_seo      = seo_title($_POST['jdl_gallery']);

  // Apabila ada gambar yang diupload
  if (!empty($lokasi_file)){
    if ($tipe_file != "image/jpeg" AND $tipe_file != "image/pjpeg"){
    echo "<script>window.alert('Upload Gagal, Pastikan File yang di Upload bertipe *.JPG');
        window.location=('../../media.php?module=gallery')</script>";
    }
    else{
    UploadGallery($nama_file_unik);
    mysql_query("INSERT INTO gallery(id_album,
                                    jdl_gallery,
                                    gallery_seo,
                                    keterangan,
                                    gbr_gallery) 
                            VALUES('$_POST[album]',
                                   '$_POST[jdl_gallery]',
                                   '$gallery_seo',
                                   '$_POST[keterangan]',
                                   '$nama_file_unik')");
  header('location:../../media.php?module='.$module);
  }
  }
  else{
    mysql_query("INSERT INTO gallery(id_album,
                                    jdl_gallery,
                                    gallery_seo,
                                    keterangan) 
                            VALUES('$_POST[album]',
                                   '$_POST[jdl_gallery]',
                                   '$gallery_seo',
                                   '$_POST[keterangan]')");
  header('location:../../media.php?module='.$module);
  }
}

// Update gallery
elseif ($module=='gallery' AND $act=='update'){
  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(000000,999999);
  $nama_file_unik = $acak.$nama_file; 

  $gallery_seo      = seo_title($_POST['jdl_gallery']);

  // Apabila gambar tidak diganti
  if (empty($lokasi_file)){
    mysql_query("UPDATE gallery SET id_album    = '$_POST[album]',
                                   jdl_gallery  = '$_POST[jdl_gallery]',
                                   gallery_seo  = '$gallery_seo', 
                                   keterangan   = '$_POST[keterangan]'  
                             WHERE id_gallery   = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
  }
  else{
    if ($tipe_file != "image/jpeg" AND $tipe_file != "image/pjpeg"){
    echo "<script>window.alert('Upload Gagal, Pastikan File yang di Upload bertipe *.JPG');
        window.location=('../../media.php?module=gallery')</script>";
    }
    else{
    UploadGallery($nama_file_unik);
    mysql_query("UPDATE gallery SET id_album    = '$_POST[album]',
                                    jdl_gallery = '$_POST[jdl_gallery]',
                                    gallery_seo = '$gallery_seo', 
                                    keterangan  = '$_POST[keterangan]',  
                                    gbr_gallery = '$nama_file_unik'   
                             WHERE id_gallery   = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
  }
  }
}
}
?>
