<?php
session_start(); 
include "../../config/koneksi.php";
$tanggal=date('Y-m-d');
$bulan=date('m');

  // Tampil servisjasa

	$caripenjualan=mysql_query("SELECT * FROM penjualan where id_penjualan='$_GET[id]' ");
	$data=mysql_fetch_array($caripenjualan);
		echo "<img src=../../images/logo.jpg height=60><br><br>";
		echo "PT. Kalang Kabut<br>JL. Guntur 2 No. 123 Bekasi Selatan<br>Telp. 8889998888<br>";
    echo "<h2>Kwitansi Penjualan</h2>	";
    echo "Nomor Order: $_GET[id] ";
		$tampill=mysql_query("SELECT * FROM pelanggan where id_pelanggan ='$data[id_pelanggan]'");
    $m=mysql_fetch_array($tampill);
		echo " 
		<br><br>		
		Tanggal Orders: $data[tgl_penjualan] <br>		
		Customer: $m[nama] <br>		
		Alamat: $m[alamat] <br><br>

    <table border=1 width=100%>
			<tr>
				<th>No</th><th>Kode Barang</th><th>Nama Produk</th><th>Harga</th>
				<th>Diskon</th><th>QTY</th><th>Jumlah</th>
			</tr>"; 
			$tampil=mysql_query("SELECT * from penjualandetail where id_penjualan='$_GET[id]' order by id_penjualandetail desc ");
			$no=1;
			while ($r=mysql_fetch_array($tampil)){
				$jumlah=($r[harga_jual]*$r[qty])-$r[diskon];
				echo "
				<tr>
					<td>$no</td>
          <td>$r[kd_barang]</td>
					<td>$r[nama_barang]</td>
					<td align=right>".number_format($r[harga_jual])."</td>
					<td align=right>".number_format($r[diskon])."</td>
					<td align=right>".number_format($r[qty])."</td>
					<td align=right>".number_format($jumlah)."</td>
			 </tr>";
			 $total=$total+$jumlah;
				$no++;		
			}
			$simpan_jumtot=mysql_query("UPDATE penjualan SET jumlah_total=jumlah_total + $total WHERE id_penjualan='$_GET[id]' ");
		echo "<tr><td td colspan=6>Total</td><td align=right>".number_format($total)."</td></tr>";
		echo "
	</table>";
	echo "<br><br>";
	echo "Keterangan:<br>";
	echo "Barang yang sudah dibeli tidak dapat dikembalikan, pembayaran dapat ditransfer ke rekening BCA Norek. 1234567890 A/N Kecap Bango ";
	echo "<br><br><br><br><br><br>";
	echo "Hormat Kami,";
	echo "<br><br><br><br><br><br>";
	echo "$_SESSION[namalengkap]";
	mysql_query("UPDATE penjualan SET s1='Y' WHERE id_penjualan='$_GET[id]'");
?>
