<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 		<center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_penjualandetail/aksi_penjualandetail.php";
$tanggal=date('Y-m-d');
$bulan=date('m');
switch($_GET['act']){
  // Tampil servisjasa
  default:
	$caripenjualan=mysql_query("SELECT * FROM penjualan where id_penjualan='$_GET[id]' ");
	$data=mysql_fetch_array($caripenjualan);

    // $waktu = date('H:i:s');
    // echo "$waktu";
    echo "<div class=\"col-md-12\">
    		<h2>Penjualan Detail</h2>
    	  </div>";
    echo "<div class=\"col-md-12\">
    		<p style='font-size:15px'><span class='label label-primary'>Nomor Order: $_GET[id] </span></p>
    	  </div>";
    // $op = $_GET[id_op];
	$tampill=mysql_query("SELECT * FROM operator where id_operator ='$data[id_op]'");
    $m=mysql_fetch_array($tampill);
    $detail_penjualan=mysql_query("SELECT * FROM penjualan WHERE id_penjualan='$_GET[id]'");
	$det=mysql_fetch_array($detail_penjualan);
		echo " 		 	
			<div class=\"col-md-12\">
				<p style='font-size:15px'><span class='label label-info'>Nama Operator: $m[nama] </span> </p>
				<p style='font-size:15px'><span class='label label-success'>Kode Cabang: $m[id_cabang] </p>
				<p style='font-size:15px'><span class='label label-warning'>Kode Atasan: $m[id_atasan] </p>
			
				<table id='example1' class='table table-bordered table-hover' id='example1'>
					<tr>
						<td>Kode Dispenser	: $det[kd_dispenser]</td>
					</tr>
					<tr>
						<td>ID Operator		: $det[id_op]</td>
					</tr>
					<tr>
						<td>Meteran Awal	: $det[meteran_awal] </td>
					</tr>
					<tr>
						<td>Meteran Akhir	: $det[meteran_akhir] </td>
					</tr>
					<tr>
						<td>Tanggal Penjualan	: $det[tgl_penjualan] </td>
					</tr>
					<tr>
						<td>Jam Mulai		: $det[jam_mulai] </td>
					</tr>
					<tr>
						<td>Jam Selesai		: $det[jam_selesai] </td>
					</tr>
					<tr>
						<td>Kode Barang		: $det[kd_barang] </td>
					</tr>
					<tr>
						<td>Quantity		: $det[qty] </td>
					</tr>
					<tr>
						<td>HPP				: $det[hpp] </td>
					</tr>
					<tr>
						<td>Harga Jual		: $det[harga_jual] </td>
					</tr>
					<tr>
						<td>Debit			: $det[debit] </td>
					</tr>
					<tr>
						<td>Cash			: $det[cash] </td>
					</tr>
					<tr>
						<td>Kupon			: $det[kupon] </td>
					</tr>
					<tr>
						<td>Kredit			: $det[kredit] </td>
					</tr>
					<tr>
						<td>Total			: $det[total] </td>
					</tr>
				</table>
				";
	echo "<a href='modul/mod_penjualandetail/penjualandetailcetak.php?id=$_GET[id]' target=_blank><span class=\"glyphicon glyphicon-print\"></span> Print Faktur</a>
			</div>";

  break;
		 

  // Form Edit spk  
  case "editpenjualandetail":
   $carispb=mysql_query("SELECT * FROM spb where id_spb='$_GET[spb]' ");
		$data=mysql_fetch_array($carispb);
    echo "<h2>EDIT SPB Detail</h2>";
    echo "<form method=POST action='$aksi?module=atkkeluar&act=input'>$_GET[spb] | ";
		$tampill=mysql_query("SELECT * FROM pelanggan where id_pelanggan ='$data[id_pelanggan]'");
		$m=mysql_fetch_array($tampill);
		echo " $m[nama] | EDIT $_GET[id] 
		<br><br>
		</form>";
		$tampildata=mysql_query("select * from penjualandetail where id_penjualandetail='$_GET[id]'");
		$data=mysql_fetch_array($tampildata);
		echo "		 		
		Status spb: $status <br>
		<form method=POST action='$aksi?module=penjualandetail&act=update'>
			<table id='example1' class='table table-bordered table-striped' id='example1' class='table table-bordered table-striped'>
				<input type=hidden name=id_spb value='$_GET[spb]'>
				<input type=hidden name=id_penjualandetail value='$_GET[id]'>
				<tr><td>Merk </td><td><select name='id_merk' >
						<option > ------------------</option>";
						        $tampil=mysql_query("SELECT * from merk");
						        while($r=mysql_fetch_array($tampil)){
						          echo "<option value='$r[id_merk]'";
							if($r[id_merk]==$data[id_merk]) echo "selected";
							echo "> $r[nama_merk]</option>";
						        }
						echo "</select>
						</td></tr>
						<tr><td>Model </td><td><select name='id_model' >
						<option > ------------------</option>";
						        $tampil=mysql_query("SELECT * from model");
						        while($r=mysql_fetch_array($tampil)){
						          echo "<option value='$r[id_model]' ";
							if($r[id_model]==$data[id_model]) echo "selected";
							echo "> $r[nama_model]</option>";
						        }
						echo "</select>
						</td></tr>
						<tr><td>Varian </td><td><select name='id_varian' >
						<option > ------------------</option>";
						        $tampil=mysql_query("SELECT * from varian");
						        while($r=mysql_fetch_array($tampil)){
						          echo "<option value='$r[id_varian]' ";
							if($r[id_varian]==$data[id_varian]) echo "selected";
							echo "> $r[nama_varian]</option>";
						        }
						echo "</select>
						</td></tr>			                        
						<tr><td>Transmisi</td>  
						<td><select name='transmisi'>
							<option> ------------------</option>
							<option value='A/T'";
							if('A/T'==$data[transmisi]) echo "selected";
							echo "> Automatic</option>
							<option value='M/T' ";
							if('M/T'==$data[transmisi]) echo "selected";
							echo "> Manual</option>
						</select>
						</td>
					</tr>		
					<tr><td>Warna</td>
					<td><input type='text' name='warna' size=20 value='$data[warna]'></td>
					</tr>				
					<tr><td>Tahun</td>
					<td><input type='text' name='tahun' size=10 value='$data[tahun]'></td>
					</tr>				
					<tr><td>Harga Sewa per Bulan</td>
					<td><input type='text' name='harga_sewa' min=1 value='$data[harga_sewa]'></td>
					</tr>	
					<tr><td>Jasa Driver per Bulan</td>
					<td><input type='text' name='harga_driver' min=1 value='$data[harga_driver]'></td>
					</tr>						
					<tr><td>Mediator Fee per Bulan</td>
					<td><input type='text' name='komisi' value='$data[komisi]'></td>
					</tr>						
					<tr><td>Qty</td>
					<td><input type='text' name='qty' value='$data[qty]'></td>
					</tr>							
						<td colspan=2>
						  <input type=submit name=submit value=Update>
							<input type=button value=Cancel onclick=self.history.back()>
							<input type=reset value=Clear >
						</td>
					</tr>
			    </table>
					</form>";  
		break;	
}
}
?>
