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
$aksi="modul/mod_masterbarang/aksi_masterbarang.php";
//pemanggilan database
$tampil_model=  mysql_query("select * from model");
switch($_GET['act']){
  // Tampil User
  default:
  echo "
        <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
          <h2>Barang</h2>
        	<form method=POST action='?module=masterbarang&act=carimasterbarang' >
          	<table id='example1' class='table table-bordered table-striped'>
          		<tr>
          			<td>
          				<select name='field' class=\"form-control\">
          					<option value='kosong'>-- Pencarian Berdasarkan --</option>
          					<option value='kd_barang'> Kode Barang </option>
          					<option value='nama_barang'> Nama Barang </option>
          				</select>
                </td>
                <td>
          				<input class=\"form-control\" type='text' name='keyword'/>
                </td>
                <td>
          				<input class=\"btn btn-info\" type='submit' name='Submit' value='Search' />
          			</td>
          		</tr>                
          	</table>
        	</form>
        </div>"; 
  echo "
        <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
        	<input class='btn btn-primary' value='Tambah Barang' onclick=\"window.location.href='?module=masterbarang&act=tambahmasterbarang'\">";
          echo "<br><br>";  
          echo "
        	<table id='example1' class='table table-bordered table-hover'>
        		<tr>
        			<th>No</th>
              <th>Kode Barang</th>
              <th>Nama Barang</th>
              <th>Harga Jual</th>
              <th><center>Proses</th>
        		</tr>"; 
            $no=1;
        		$tampil = mysql_query("SELECT * FROM masterbarang ORDER BY nama_barang");
            while ($r=mysql_fetch_array($tampil)){
              echo "
        			<tr>
                <td>$no</td>
                <td>$r[kd_barang]</td>
                <td>$r[nama_barang]</td>
                <td>".number_format($r['harga_jual'])."</td>
                <td>
          				<center>
                    <a href=?module=masterbarang&act=detailmasterbarang&id=$r[id_barang]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
          					<a href=?module=masterbarang&act=editmasterbarang&id=$r[id_barang]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                    <a href=\"$aksi?module=masterbarang&act=hapus&id=$r[id_barang]\" onclick=\"return confirm('Are you sure want to delete?')\"><span class=\"glyphicon glyphicon-remove\"></span></center>
        			  </td>
        			</tr>";
              $no++;
            }
      echo "</table>
            </div>";

    break;

  case "tambahmasterbarang":
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
        		<h2>Tambah Barang</h2>
        		<form name=form action='$aksi?module=masterbarang&act=input' method=POST onSubmit=\"return validasi(this)\">
        				<table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Kode Barang</td><td><input class=\"form-control\" type=text name='kd_barang'></td></tr>
        					<tr><td>Nama Barang</td><td><input class=\"form-control\" type=text name='nama_barang'></td></tr>
        					<tr><td>Satuan</td> <td><input class=\"form-control\" type=text name='satuan'></td></tr>            
        					<tr><td>Harga Jual</td><td><input class=\"form-control\" type=text name='harga_jual'></td></tr> 
                  <tr><td>Kode Kategori</td><td>  
                  <select name='kd_kategori' class=\"form-control\">
                    <option value=0 selected>- Pilih Nama Kategori -</option>";
                    $tampil=mysql_query("SELECT * FROM kategori ORDER BY kd_kategori");
                    while($r=mysql_fetch_array($tampil)){
                      echo "<option value=$r[id_kategori]>$r[nama_kategori]</option>";
                    }
                    echo "</select></td>
                  </tr>
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
    
  case "editmasterbarang":
    $edit=mysql_query("SELECT * FROM masterbarang WHERE id_barang='$_GET[id]'");
    $r=mysql_fetch_array($edit);
    echo "
  	      <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Edit Barang</h2>
            <form method=POST action=$aksi?module=masterbarang&act=update>
            <input type=hidden name=id value='$r[id_barang]'>
        			<table id='example1' class='table table-bordered table-striped'>
        			  <tr><td>Kode Barang</td><td><input class=\"form-control\" type=text name='kd_barang'value='$r[kd_barang]'></td></tr>
                <tr><td>Nama Barang</td><td><input class=\"form-control\" type=text name='nama_barang' value='$r[nama_barang]'></td></tr>
                <tr><td>Satuan</td> <td><input class=\"form-control\" type=text name='satuan' value='$r[satuan]'></td></tr>            
                <tr><td>Harga Jual</td><td><input class=\"form-control\" type=text name='harga_jual' value='$r[harga_jual]'></td></tr>  
                <tr><td>Kode Kategori</td><td>
                <select name='kd_kategori' class=\"form-control\">
                  <option value=0 selected>- Pilih Kode Kategori -</option>";
                  $tampil=mysql_query("SELECT * FROM kategori ORDER BY kd_kategori");
                  while($r=mysql_fetch_array($tampil)){
                    echo "<option value=$r[kd_kategori]>$r[kd_kategori]</option>";
                  }
                  echo "</select></td>
                </tr>
                  <tr>
                    <td colspan=2>
        			       	<input class=\"btn btn-primary\" type=submit value=Update>
        				      <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td>
                  </tr>
        			</table>
        		</form>
          </div>";     
  break; 

  case "detailmasterbarang":
  $edit=mysql_query("SELECT * FROM masterbarang WHERE id_barang='$_GET[id]'");
  $r=mysql_fetch_array($edit);
  echo "
        <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
          <h2>Detail Barang</h2>
          <input type=hidden name=id value='$r[id_barang]'>
            <table id='example1' class='table table-bordered table-striped'>
              <tr><td>Kode Barang</td><td>$r[kd_barang]</td></tr>
              <tr><td>Nama Barang</td><td>$r[nama_barang]</td></tr>
              <tr><td>Satuan</td> <td>$r[satuan]</td></tr>            
              <tr><td>Harga Jual</td><td>$r[harga_jual]</td></tr>  
              <tr><td>Kode Kategori</td><td>$r[kd_kategori]</td></tr>
              <tr>
                <td colspan=2>
                  <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td>
              </tr>
            </table>
        </div>";     
  break;  
	
  case "carimasterbarang":
    $field=$_POST['field'];
    $keyword=$_POST['keyword'];
    $tampil4 = mysql_query("SELECT * FROM masterbarang WHERE $field LIKE '%$keyword' ");
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Cari Barang</h2>
        		<p>Field: $field - keyword: $keyword</p>
            <table id='example1' class='table table-bordered table-hover'>
              <tr>
                <th>No</th>
                <th>Kode Barang</th>
                <th>Nama Barang</th>
                <th><center>Proses</th>
              </tr>"; 
            $no=1;
            while ($r4=mysql_fetch_array($tampil4)){
               echo "
        			 <tr>
        				<td>$no</td>
                <td>$r4[kd_barang]</td>
                <td>$r4[nama_barang]</td>
                     <td><center>
                         <a href=?module=masterbarang&act=detailmasterbarang&id=$r4[id_barang]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                         <a href=?module=masterbarang&act=editmasterbarang&id=$r4[id_barang]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                         <a href=\"$aksi?module=masterbarang&act=hapus&id=$r4[id_barang]\" onclick=\"return confirm('Are you sure want to delete?')\"><span class=\"glyphicon glyphicon-remove\"></span></center>
               </tr>";
              $no++;
            }
      echo "</table>
            <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()>
          </div>";   
    break;  	
	}
}
?>
