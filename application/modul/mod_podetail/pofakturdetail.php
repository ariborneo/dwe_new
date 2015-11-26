<?php
session_start(); 
include "../../config/koneksi.php";
$tanggal=date('Y-m-d');
$bulan=date('m');

  // Tampil 

	$cariorder=mysql_query("SELECT * FROM penjualan where id_penjualan='$_GET[id]' ");
	$data=mysql_fetch_array($cariorder);
		echo "<img src=../../images/logo_kopkar.jpg height=60><br><br>";
		echo "Koperasi Karyawan Indocement<br>JL. Raya Mayor Oking, Citeureup, Cibinong, 16810<br>Telp. 8889998888<br>";
    echo "<h2>Faktur Penjualan</h2>	";
    echo "<table border=1 width=30%>
    <tr>
    <td> Nomor Order :</td> <td>$_GET[id]</td>
    </tr>";

		$tampill=mysql_query("SELECT * FROM pelanggan where id_pelanggan ='$data[id_pelanggan]'");
    $m=mysql_fetch_array($tampill);
		echo " 		
		<tr>
		<td>Tanggal Orders:</td><td> $data[tanggal_orders] </td>
		</tr>		
		<tr><td>Customer:</td><td>$m[nama]</td></tr>		
		<tr><td>Alamat:</td><td> $m[alamat]</td></tr>
		</table> <br>

    <table border=1 width=100%>
			<tr>
				<th>No</th><th>ID Produk</th><th>Nama Produk</th><th>Harga</th>
				<th>Diskon</th><th>QTY</th><th>Jumlah</th>
			</tr>"; 
			$tampil=mysql_query("SELECT * from penjualandetail where id_penjualan='$_GET[id]' order by id_penjualandetail desc ");
			$no=1;
			while ($r=mysql_fetch_array($tampil)){
				$jumlah=($r[harga_satuan]-$r[diskon])*$r[qty];
				echo "
				<tr>
					<td>$no</td>
          			<td>$r[kd_barang]</td>
					<td>$r[nama_barang]</td>
					<td align=right>".number_format($r[harga_satuan])."</td>
					<td align=right>".number_format($r[qty])."</td>
					<td align=right>".number_format($r[diskon])."</td>
					<td align=right>".number_format($jumlah)."</td>
			 </tr>";
			 $total=$total+$jumlah;
				$no++;		
			}	
		echo "<tr><td td colspan=6>Total</td><td align=right>".number_format($total)."</td></tr>";
		echo "
	</table>";
	echo "<br><br>";
	echo "Terimakasih atas kunjungan anda, semoga datang kembali ";
	echo "<br><br><br><br><br><br>";
	echo "Hormat Kami,";
	echo "<br><br><br><br><br><br>";
	echo "$_SESSION[namalengkap]";
	mysql_query("UPDATE penjualan SET s1='Y' WHERE id_penjualan = '$_GET[id]'");
?>
