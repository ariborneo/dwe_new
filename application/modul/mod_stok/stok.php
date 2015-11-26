<?php
// session_start();
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
  $aksi="modul/mod_stok/aksi_stok.php";
  switch($_GET['act']){
    // Tampil User
    default:
  	echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Stok</h2>
          	<form method=POST action='?module=stok&act=caristok' >
            	<table id='example1' class='table table-bordered table-striped'>
            		<tr>
            			<td>
            				<select name='field' class=\"form-control\">
            					<option value='kosong'>-- Pencarian Berdasarkan --</option>
            					<option value='kd_barang'> Kode Barang </option>
            				</select>
                  </td>
                  <td>
            				<input class=\"form-control\" type='text' name='keyword' size=30 />
                  </td>
                  <td>
            				<input class=\"btn btn-info\" type='submit' name='Submit' value='Search' />
            			</td>
            		</tr>                
            	</table>
          	</form>
  	       <input class='btn btn-primary' value='Tambah Stok' onclick=\"window.location.href='?module=stok&act=tambahstok';\">
          </div>";
    echo "
          <div class=\"col-md-12\">
          	<table id='example1' class='table table-bordered table-hover'>
          		<tr>
          			<th>No</th>
                <th>Kode Barang</th>
                <th>Jumlah Stok</th>
                <th>Harga Awal</th>
                <th>Harga Pokok Penjualan</th>
                <th><center>Proses</th>
          		</tr>"; 
              $no=1;
          		
          		$tampil = mysql_query("SELECT * FROM stok ORDER BY id_stok");
              while ($r=mysql_fetch_array($tampil)){
                echo "
          			<tr><td>$no</td>
                <td>$r[kd_barang]</td>
                <td>$r[jumlah_stok]</td>
                <td>".number_format($r['harga_awal'])."</td>
                <td>".number_format($r['hpp'])."</td>
                <td>
          				<center>
          					<a href=?module=stok&act=detailstok&id=$r[id_stok]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                    <a href=?module=stok&act=editstok&id=$r[id_stok]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                    <a href=\"$aksi?module=stok&act=hapus&id=$r[id_stok]\" onclick=\"return confirm('Are you sure want to delete?')\"><span class=\"glyphicon glyphicon-remove\"></span></center>
          			</td>
          			</tr>";
                $no++;
              }
    echo   "</table>
          </div>";

      break;
    
    case "tambahstok":
      echo "
            <div class=\"col-md-12\">  
          		<h2>Tambah Stok</h2>
          		<form name=form action='$aksi?module=stok&act=input' method=POST onSubmit=\"return validasi(this)\">
          				<table id='example1' class='table table-bordered table-striped'>
                    <tr><td>Kode Barang</td><td>
                      <select name='kd_barang' class=\"form-control\">
                        <option value=0 selected>- Pilih Kode Barang -</option>";
                        $tampil=mysql_query("SELECT * FROM masterbarang ORDER BY kd_barang");
                        while($r=mysql_fetch_array($tampil)){
                          echo "<option value=$r[kd_barang]>$r[kd_barang]</option>";
                        }
                        echo "</select></td>
                    </tr>           
            				<tr><td>Jumlah Stok</td><td><input class=\"form-control\" type=text name='jumlah_stok'></td></tr> 
          					<tr><td>Harga Awal</td><td><input class=\"form-control\" type=text name='harga_awal'></td></tr> 
          					<tr><td>Harga Pokok Penjualan</td><td><input class=\"form-control\" type=text name='hpp'></td></tr> 
          					<tr>
          						<td colspan=2>
          							<input class=\"btn btn-primary\" type=submit value=Simpan>
          							<input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()>
          						</td>
          					</tr>
          				</table>
          		</form>
            </div>";
    break;
      
    case "editstok":
      $edit=mysql_query("SELECT * FROM stok WHERE id_stok='$_GET[id]'");
      $r=mysql_fetch_array($edit);
      echo "
            <div class=\"col-md-12\">
          		<h2>Edit Stok</h2>
              <form method=POST action=$aksi?module=stok&act=update>
              <input type=hidden name=id value='$r[id_stok]'>
          			<table id='example1' class='table table-bordered table-striped'>
            			<tr><td>Kode Barang</td><td><input class=\"form-control\" type=text name='kd_barang' value='$r[kd_barang]'></td></tr>         
            			<tr><td>Jumlah Stok</td><td><input class=\"form-control\" type=text name='jumlah_stok' value='$r[jumlah_stok]'></td></tr> 
            			<tr><td>Harga Awal</td><td><input class=\"form-control\" type=text name='harga_awal' value='$r[harga_awal]'></td></tr> 
            			<tr><td>Harga Jual</td><td><input class=\"form-control\" type=text name='hpp' value='$r[hpp]'></td></tr> 
            			<tr><td colspan=2>
            				<input class=\"btn btn-primary\" type=submit value=Update>
            				<input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
          			</table>
          		</form>
            </div>";     
    break;  

    case "detailstok":
      $edit=mysql_query("SELECT * FROM stok WHERE id_stok='$_GET[id]'");
      $r=mysql_fetch_array($edit);
      echo "
            <div class=\"col-md-12\">
              <h2>Detail Stok</h2>
              <input type=hidden name=id value='$r[id_stok]'>
                <table id='example1' class='table table-bordered table-hover'>
                  <tr><td>Kode Barang</td><td>$r[kd_barang]</td></tr>         
                  <tr><td>Jumlah Stok</td><td>$r[jumlah_stok]</td></tr>
                  <tr><td>Harga Awal</td><td>$r[harga_awal]</td></tr> 
                  <tr><td>Harga Jual</td><td>$r[hpp]</td></tr> 
                  <tr><td colspan=2>
                    <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
            </div>";     
      break;  
  	
    case "caristok":
      $field=$_POST['field'];
      $keyword=$_POST['keyword'];
      $tampil4 = mysql_query("SELECT * FROM stok WHERE $field LIKE '%$keyword' ");
      echo "
            <div class=\"col-md-12\">
              <h2>Cari Stok</h2>
          		Field: $field - keyword: $keyword
              <table id='example1' class='table table-bordered table-hover'>
                <tr>
                  <th>No</th>
                  <th>Kode Barang</th>
                  <th>Jumlah Stok</th>
                  <th>Kode Cabang</th>
                  <th>Harga Awal</th>
                  <th>Harga Pokok Penjualan</th>
                  <th><center>Proses</th>
                </tr>"; 
              $no=1;
              while ($r4=mysql_fetch_array($tampil4)){
                 echo "
          			 <tr>
          				<td>$no</td>
                  <td>$r4[kd_barang]</td>
                  <td>$r4[jumlah_stok]</td>
                  <td>$r4[kd_cabang]</td>
                  <td>".number_format($r4['harga_awal'])."</td>
                  <td>".number_format($r4['hpp'])."</td>
                       <td><center>
                            <a href=?module=stok&act=detailstok&id=$r4[id_stok]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                            <a href=?module=stok&act=editstok&id=$r4[id_stok]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                            <a href=\"$aksi?module=stok&act=hapus&id=$r4[id_stok]\" onclick=\"return confirm('Are you sure want to delete?')\"><span class=\"glyphicon glyphicon-remove\"></span></center>";
                $no++;
              }
        echo "</table>
            </div>";
      break; 
  }
}
?>
