<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 		<center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_cutidetail/aksi_cutidetail.php";
$tanggal=date('Y-m-d');
$bulan=date('m');
switch($_GET['act']){
  // Tampil servisjasa
  default:
	$cariorder=mysql_query("SELECT * FROM cuti where id_cuti='$_GET[id]' ");
	$data=mysql_fetch_array($cariorder);
    echo "<div class=\"col-md-12\" style=\"margin-bottom:10px;\">
    	  <h2>Cuti Detail</h2>";
    echo "<p style='font-size:15px;'><span class='label label-default'>Nomor Cuti: $_GET[id] </span> ";
		$tampill=mysql_query("SELECT * FROM users where id_user ='$data[id_user]'");
    $m=mysql_fetch_array($tampill);
		echo " 
		<p style='font-size:15px;'><span class='label label-primary'>Karyawan: $m[nama] </span> </p>
		<p style='font-size:15px;'><span class='label label-info'>Tanggal cuti: $data[tgl_permohonan] </p>
		<p style='font-size:15px;'><span class='label label-info'>Tujuan Cuti: $data[tujuan_cuti] </p>
		<form method=POST action='$aksi?module=orderdetail&act=tambahorderdetail'>
			<table id='example1' class='table table-bordered table-hover'>
				<input type=hidden name=id_cuti value='$_GET[id]'>	                        					
				<tr>
					<td>Tanggal Cuti</td>
					<td><input class=\"form-control\" type='text' name='tgl_cuti'></td>
				</tr>	
				<tr>	
					<td colspan=2>
							<input class=\"btn btn-primary\" type=submit value=Save>
							<input class=\"btn btn-danger\" type=reset value=Clear>
					</td>
				</tr>
			</table>
		</form>

	    <table id='example1' class='table table-bordered table-hover'>
			<tr>
				<th>No</th>
				<th>ID Cuti</th>
				<th>Tanggal Cuti</th>
				<th><center>Proses</th>
			</tr>"; 
			$tampil=mysql_query("SELECT * FROM cutidetail WHERE id_cuti='$_GET[id]' ORDER BY id_cutidetail DESC ");
			$no=1;
			while ($r=mysql_fetch_array($tampil)){
				$jumlah=$r['harga']-$r['diskon'];
				echo "
				<tr>
					<td>$no</td>
          			<td>$r[id_cuti]</td>
					<td>$r[tgl_cuti]</td>
					<td><center>
						<a href=?module=cutidetail&act=editcutidetail&id=$r[id_cuti]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
						<a href='$aksi?module=cutidetail&act=hapus&id=$r[id_cutidetail]&id_cuti=$_GET[id]'><span class=\"glyphicon glyphicon-remove\"></span></center>
					</td>
			 </tr>";
			 $total=$total+$jumlah;
	      $no++;		
	    }	
  echo "</table>";
  echo "<a href='modul/mod_cutidetail/cutidetailcetak.php?id=$_GET[id]' target=_blank><span class=\"glyphicon glyphicon-print\"></span>&nbsp; Print Cuti</a>
		</div>";

  break;
		 

  // Form Edit spk  
  case "editcutidetail":
    echo "<h2>EDIT Cuti Detail</h2>";
		$tampildata=mysql_query("select * from cutidetail where id_cutidetail='$_GET[id]'");
		$data=mysql_fetch_array($tampildata);
		echo "		 		
		Status spb: $status <br>
		<form method=POST action='$aksi?module=cutidetail&act=update'>
			<table id='example1' class='table table-bordered table-striped' id='example1' class='table table-bordered table-striped'>
				<input type=hidden name=id_cutidetail value='$_GET[id]'>
					<tr><td>ID Cuti</td>
					<td><input type='text' name='warna' size=20 value='$data[id_cuti]'></td>
					</tr>				
					<tr><td>Tanggal Cuti</td>
					<td><input type='text' name='tgl_cuti' size=10 value='$data[tgl_cuti]'></td>
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
