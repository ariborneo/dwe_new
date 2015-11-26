<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_podetail/aksi_podetail.php";
$tanggal=date('Y-m-d');
$bulan=date('m');
switch($_GET[act]){
  // Tampil podetail
  default:
	$caripo=mysql_query("SELECT * FROM po where id_po='$_GET[id]' ");
	$data=mysql_fetch_array($caripo);
    echo "<h2>PO Detail</h2>	";
    echo "Nomor PO: $_GET[id] ";
		$tampill=mysql_query("SELECT * FROM supplier where id_supplier ='$data[id_supplier]'");
    $m=mysql_fetch_array($tampill);
		echo " 
		<br><br>		 	
		Supplier: $m[nama] <br>		
		Tanggal PO: $data[tgl_po] <br>
		<form method=POST action='$aksi?module=podetail&act=tambahpodetail'>
		<table id='example1' class='table table-bordered table-striped' id='example1' class='table table-bordered table-striped'>
			<input type=hidden name=id_po value='$_GET[id]'>
			<tr>
				<td width=300>Nama Barang </td><td>
				<select name='kd_barang' id='kd_barang'>
					<option > -- Nama Barang -- </option>";
						        $tampil=mysql_query("SELECT * from barang");
						        while($r=mysql_fetch_array($tampil)){
						          echo "<option value='$r[kd_barang]'> $r[nama_barang]</option>";
						        }
						echo "</select>
				</td>
			</tr>
			<tr>
				<td>Harga Beli</td>
				<td><input type='text' name='harga_beli' size=10></td>
			</tr>		                        					
			<tr>
				<td>Qty</td>
				<td><input type='text' name='qty' size=10></td>
			</tr>	
				<td colspan=2>
						<input type=submit value=Save>
						<input type=reset value=Clear>
				</td>
			</tr>
			</table>
		</form>

    <table id='example1' class='table table-bordered table-striped' id='example1' class='table table-bordered table-striped'>
			<tr>
				<th>No</th><th>ID Barang</th><th>Nama Barang</th><th>Harga Beli</th><th>QTY</th><th>Jumlah</th><th>Proses</th>
			</tr>"; 
			$tampil=mysql_query("SELECT * from podetail where id_po='$_GET[id]' order by id_podetail desc ");
			$no=1;
			while ($r=mysql_fetch_array($tampil)){
				$jumlah=$r[harga_beli]*$r[qty];
				echo "
				<tr>
					<td>$no</td>
          			<td>$r[kd_barang]</td>
					<td>$r[nama_barang]</td>
					<td align=right>".number_format($r[harga_beli])."</td>
					<td align=right>".number_format($r[qty])."</td>
					<td align=right>".number_format($jumlah)."</td>
					<td align=center>
					<a href='$aksi?module=podetail&act=hapus&id=$r[id_podetail]&id_po=$_GET[id]'>
					<img src=images/delete.png border=0> </a>
					</td>
			 </tr>";
			 $total=$total+$jumlah;
      $no++;		
    }	
	echo "<tr><td td colspan=5>Total</td><td align=center>".number_format($total)."</td><td>--</td></tr>";
  echo "</table>";
	
	echo "<br><br>";
	echo "<a href='modul/mod_podetail/pofakturdetail.php?id=$_GET[id]' target=_blank> Print Faktur</a>	";

  break;
}
}
?>
