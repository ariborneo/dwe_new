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

  $meteran_akhir=$_POST['meteran_akhir'];
  $meteran_awal=$_POST['meteran_awal'];
  $quantity = $meteran_akhir - $meteran_awal;
  //============================================//
  $cash=$_POST['cash'];
  $kupon=$_POST['kupon'];
  $kredit=$_POST['kredit'];
  $debit=$_POST['debit'];
  //============================================//
  $harga = $_POST['harga_jual'];
  $total = $quantity * $harga;
  // Input penjualan
  if ($module=='penjualan' AND $act=='input'){
    $select = $_POST['kd_barang'];
    $result = explode('|', $select);
    $kdresult = $result[0];
    $hppresult = $result[1];
    $input = mysql_query("INSERT INTO penjualan (
                                              id_penjualan,
                                              kd_dispenser,
                                              id_op,
                                              meteran_awal,
                                              meteran_akhir,
                                              tgl_penjualan,
                                              jam_mulai,
                                              jam_selesai,
                                              kd_barang,
                                              qty,
                                              hpp,
                                              harga_jual,
                                              total,
                                              cash,
                                              kupon,
                                              kredit,
                                              debit
                                              )

                                              VALUES('NULL',
                                              '$_POST[kd_dispenser]',
                                              '$_POST[id_operator]',
  																						'$_POST[meteran_awal]',
                                              '$_POST[meteran_akhir]',
                                              '$_POST[tgl_penjualan]',
                                              '$_POST[jam_mulai]',
                                              '$_POST[jam_selesai]',
                                              '$kdresult',  
                                              '$quantity',
                                              '$hppresult',
                                              '$_POST[harga_jual]',
                                              '$total',
                                              '$_POST[cash]',
                                              '$_POST[kupon]',
                                              '$_POST[kredit]',
                                              '$_POST[debit]')");
    header('location:../../media.php?module='.$module);
  }

  // Update penjualan
  elseif ($module=='penjualan' AND $act=='update'){
    $select = $_POST['kd_barang'];
    $result = explode('|', $select);
    $kdresult = $result[0];
      mysql_query("UPDATE penjualan SET tgl_penjualan='$_POST[tgl_penjualan]',
                                        meteran_awal='$_POST[meteran_awal]',
                                        meteran_akhir='$_POST[meteran_akhir]',
                                        harga_jual='$_POST[harga_jual]',
                                        kd_dispenser='$_POST[kd_dispenser]',
                                        kd_barang='$kdresult'
                             WHERE  id_penjualan  = '$_POST[id]'");
    header('location:../../media.php?module='.$module);
  }

  // Hapus penjualan
  elseif ($module=='penjualan' AND $act=='hapus'){
      mysql_query("DELETE FROM penjualan WHERE  id_penjualan  = '$_GET[id]'");
    header('location:../../media.php?module='.$module);
  }


}
?>
