<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
?>
<script language="javascript">
function validasi(form){
  if (form.nama.value == ""){
    alert("Anda belum mengisikan Nama.");
    form.nama.focus();
    return (false);
  }    
  if (form.alamat.value == ""){
    alert("Anda belum mengisikan Alamat.");
    form.alamat.focus();
    return (false);
  }
  if (form.kota.value == ""){
    alert("Anda belum mengisikan Kota.");
    form.kota.focus();
    return (false);
  }
  if (form.gsm1.value == ""){
    alert("Anda belum mengisikan nomor HP GSM1.");
    form.gsm1.focus();
    return (false);
  }
  if (form.kd_model.value == ""){
    alert("Anda belum memilih model Kendaraan.");
    form.kd_model.focus();
    return (false);
  }
  if (form.nopol.value == ""){
    alert("Anda belum mengisi nomor polisi.");
    form.kd_model.focus();
    return (false);
  }
  if (form.norangka.value == ""){
    alert("Anda belum mengisi nomor rangka.");
    form.kd_model.focus();
    return (false);
  }  
  
}


function harusangka(jumlah){
  var karakter = (jumlah.which) ? jumlah.which : event.keyCode
  if (karakter > 31 && (karakter < 48 || karakter > 57))
    return false;

  return true;
}
</script>
<?php
$aksi="modul/mod_penjualandetail/aksi_penjualandetail.php";
//pemanggilan database
$tampil_model=  mysql_query("select * from model");
switch($_GET[act]){
  // Tampil User
  default:
	echo "<h2>Penjualan Detail</h2>
	<form method=POST action='?module=penjualandetail&act=caripenjualandetail' >
	<table id='example1' class='table table-bordered table-striped'>
		<tr>
			<td>
				<select name='field'>
					<option value='kosong'>-- Pencarian Berdasarkan --</option>
					<option value='id_penjualan'> Kode Pembayaran </option>
				</select>
				<input type='text' name='keyword' size=30 />
				<input type='submit' name='Submit' value='Search' />
			</td>
		</tr>                
	</table>
	</form>"; 
  echo "
	<input class='btn btn-info btn-flat' value='Tambah Penjualan Detail' onclick=\"window.location.href='?module=penjualandetail&act=tambahpenjualandetail';\">";
  echo "<br><br>";  
  echo "
	<table id='example1' class='table table-bordered table-striped'>
		<tr>
			<th>No</th><th>ID Penjualan</th><th>Kode Barang</th><th>Nama Barang</th><th>Kuantiti</th><th>Jumlah</th><th>Harga Pokok Penjualan</th><th>Diskon</th><th>Proses</th>
		</tr>"; 
    $no=1;
		$batas=25;
    $halaman=$_GET['halaman'];
    if(empty($halaman))
      {
	    $posisi=0;
	    $halaman=1;
      }
    else
     {
	  $posisi = ($halaman-1) * $batas;
     }
		$tampil = mysql_query("SELECT * FROM penjualandetail ORDER BY id_penjualan limit $posisi,$batas");
    while ($r=mysql_fetch_array($tampil)){
      echo "
			<tr><td>$no</td>
      <td>$r[id_penjualandetail]</td>
      <td>$r[id_penjualan]</td>
      <td>$r[kd_barang]</td>
      <td>$r[nama_barang]</td>
      <td>$r[qty]</td>
      <td>".number_format($r[jumlah])."</td>
      <td>".number_format($r[hpp])."</td>
      <td>".number_format($r[diskon])."</td>
      <td>
				<center>
					<a href=?module=penjualandetail&act=editpenjualandetail&id=$r[0]><img src='images/edit.png'></a> &nbsp&nbsp
          <a href=\"$aksi?module=penjualan&act=hapus&id=$r[0]\"
				 onclick=\"return confirm('Are you sure want to delete?')\">
				 <img src='images/delete.png'></a>
		      </center>
			</td>
			</tr>";
      $no++;
    }
    echo "</table><br><br>";

    $file="?module=penjualandetail";

    $tampil2="select * from penjualandetail order by id_penjualan";
    $hasil2=mysql_query($tampil2);
    $jmldata=mysql_num_rows($hasil2);

    $jmlhalaman=ceil($jmldata/$batas);


    //link ke halaman sebelumnya (previous)
    if($halaman > 1)
    {
	  $previous=$halaman-1;
	  echo "<A HREF=$file&halaman=1><< First</A> |
        <A HREF=$file&halaman=$previous>< Previous</A> | ";
    } 
    else
    {
	 echo "<< First | < Previous | ";
    }

    $angka=($halaman > 5 ? " ... " : " ");
    for($i=$halaman-2;$i<$halaman;$i++)
    {
      if ($i < 1)
      continue;
      $angka .= "<a href=$file&halaman=$i>$i</A> ";
    }

    $angka .= " <b>$halaman</b> ";
    for($i=$halaman+1;$i<($halaman+5);$i++)
    {
      if ($i > $jmlhalaman)
      break;
      $angka .= "<a href=$file&halaman=$i>$i</A> ";
    }

    $angka .= ($halaman+2<$jmlhalaman ? " ...
          <a href=$file&halaman=$jmlhalaman>$jmlhalaman</A> " : " ");

    echo "$angka";

    //link kehalaman berikutnya (Next)
    if($halaman < $jmlhalaman)
    {
	  $next=$halaman+1;
	  echo " | <A HREF=$file&halaman=$next>Next ></A> | <A HREF=$file&halaman=$jmlhalaman>Last >></A> ";
    }
    else
    {
	 echo " | Next > | Last >>";
    }
    echo "<p>Total Penjualan Detail : <b>$jmldata</b> </p>";	

    break;
  
  case "tambahpenjualandetail":
    echo "
		<h2>Transaksi Penjualan Detail</h2>
		<form name=form action='$aksi?module=penjualandetail&act=input' method=POST onSubmit=\"return validasi(this)\">
				<table id='example1' class='table table-bordered table-striped'>
          <<tr><td>ID Penjualan</td>  <td>  
          <select name='id_penjualan'>
            <option value=0 selected>- Pilih ID Penjualan -</option>";
            $tampil=mysql_query("SELECT * FROM penjualan ORDER BY id_penjualan");
            while($r=mysql_fetch_array($tampil)){
              echo "<option value=$r[id_penjualan]>$r[id_penjualan]</option>";
            }
            echo "</select></td>
        </tr>
					<<tr><td>Kode Barang</td>  <td>  
          <select name='kd_barang'>
            <option value=0 selected>- Pilih Kode Barang -</option>";
            $tampil=mysql_query("SELECT * FROM masterbarang ORDER BY kd_barang");
            while($r=mysql_fetch_array($tampil)){
              echo "<option value=$r[kd_barang]>$r[kd_barang]</option>";
            }
            echo "</select></td>
        </tr>
        <<tr><td>Nama Barang</td>  <td>  
          <select name='nama_barang'>
            <option value=0 selected>- Pilih Nama Barang -</option>";
            $tampil=mysql_query("SELECT * FROM masterbarang ORDER BY nama_barang");
            while($r=mysql_fetch_array($tampil)){
              echo "<option value=$r[nama_barang]>$r[nama_barang]</option>";
            }
            echo "</select></td>
        </tr>
					<tr><td>Kuantiti</td> <td>  <input type=text name='qty' size=40></td></tr>            
					<tr><td>Jumlah</td> <td>  <input type=text name='jumlah' size=40></td></tr> 
          <tr><td>Harga Pokok Penjualan</td> <td> <input type=text name='hpp' size=40></td></tr> 
          <tr><td>Diskon</td><td> <input type=text name='diskon' size=40></td></tr>
						<td colspan=2>
							<input type=submit value=Simpan>
							<input type=button value=Batal onclick=self.history.back()>
						</td>
					</tr>
				</table>
		</form>";
  break;
    
  case "editpenjualandetail":
    $edit=mysql_query("SELECT * FROM penjualandetail WHERE id_penjualandetail='$_GET[id]'");
    $r=mysql_fetch_array($edit);
    echo "
		<h2>Edit Penjualan Detail</h2>
    <form method=POST action=$aksi?module=penjualandetail&act=update>
    <input type=hidden name=id value='$r[0]'>
			<table id='example1' class='table table-bordered table-striped'>
			<tr><td>ID Penjualan</td> <td> <input type=text name='id_penjualan' size=40 value='$r[id_penjualan]'></td></tr>
          <tr><td>Kode barang</td> <td>  <input type=text name='kd_barang' size=40 value='$r[kd_barang]'></td></tr>
          <tr><td>Nama Barang</td> <td>  <input type=text name='nama_barang' size=40 value='$r[nama_barang]'></td></tr>            
          <tr><td>Kuantiti</td> <td>  <input type=text name='qty' size=40 value='$r[qty]'></td></tr> 
          <tr><td>Jumlah</td> <td>  <input type=text name='jumlah' size=40 value='$r[jumlah]'></td></tr>  
          <tr><td>Harga Pokok Penjualan</td> <input type=text name='hpp' size=40 value='$r[hpp]'></td></tr>
          <tr><td>Diskon</td> <input type=text name='diskon' size=40 value='$r[diskon]'></td></tr>
          <tr>
            <td colspan=2>
			       	<input type=submit value=Update>
				      <input type=button value=Batal onclick=self.history.back()></td></tr>
			</table>
		</form>";     
    break;  
	
  case "caripenjualandetail":
    $field=$_POST[field];
    $keyword=$_POST[keyword];
    $tampil4 = mysql_query("SELECT * FROM penjualandetail where $field like '%$keyword' ");
    echo "<h2>Cari Penjualan Detail</h2>
		Field: $field - keyword: $keyword
    <table id='example1' class='table table-bordered table-striped'>
    <tr><th>No</th><th>ID Penjualan</th><th>Kode Barang</th><th>Nama Barang</th><th>Jumlah</th><th>Harga Pokok Penjualan</th><th>Diskon</th><th>Proses</th></tr>"; 
    $no=1;
    while ($r4=mysql_fetch_array($tampil4)){
       echo "
			 <tr>
				<tr><td>$no</td>
      <td>$r[id_penjualan]</td>
      <td>$r[kd_barang]</td>
      <td>$r[nama_barang]</td>
      <td>".number_format($r[jumlah])."</td>
      <td>".number_format($r[hpp])."</td>
      <td>".number_format($r[id_user])."</td>
             <td><center><a href=?module=penjualandetail&act=editpenjualandetail&id=$r[0]><img src='images/edit.png'></a> &nbsp&nbsp
                 <a href=$aksi?module=penjualandetail&act=hapus&id=$r[0]><img src='images/delete.png'></a></center></td></tr>";
      $no++;
    }
    echo "</table>";   
    break;  	
		
}
}
?>
