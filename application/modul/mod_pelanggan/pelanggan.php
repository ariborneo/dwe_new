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
$aksi="modul/mod_pelanggan/aksi_pelanggan.php";
switch($_GET['act']){
  // Tampil User
  default:
	echo "
        <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
          <h2>Pelanggan</h2>
        	<form method=POST action='?module=pelanggan&act=caripelanggan' >
          	<table id='example1' class='table table-bordered table-hover'>
          		<tr>
          			<td>
          				<select name='field' class=\"form-control\">
          					<option value='kosong'>-- Pencarian Berdasarkan --</option>
          					<option value='telp'> Nomor Telpon </option>
          					<option value='nama'> Nama Pelanggan </option>
          				</select>
                </td>
                <td>
          				<input class=\"form-control\" type='text' name='keyword' />
                </td>
                <td>
          				<input class=\"btn btn-info\" type='submit' name='Submit' value='Search'  />
          			</td>
          		</tr>                
          	</table>
          	</form>"; 
          echo "
        	<input class='btn btn-primary' value='Tambah Pelanggan' onclick=\"window.location.href='?module=pelanggan&act=tambahpelanggan';\">";
          echo "
          	<table id='example1' class='table table-bordered table-hover' style='margin-top:20px;'>
          		<tr>
          			<th>No</th>
                <th>ID.Cust.</th>
                <th>Nama</th>
                <th>Telp</th>
                <th><center>Proses</th>
          		</tr>"; 
              $no=1;
          		$tampil = mysql_query("SELECT * FROM pelanggan ORDER BY nama");
              while ($r=mysql_fetch_array($tampil)){
                echo "
          			<tr>
                  <td>$no</td>
            	    <td>$r[id_pelanggan]</td>
                  <td>$r[nama]</td>
                  <td>$r[alamat]</td>
                  <td>$r[kota]</td>
                  <td>$r[telp]</td>
                  <td>
            				<center>
                      <a href=?module=pelanggan&act=detailpelanggan&id=$r[id_pelanggan]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
            					<a href=?module=pelanggan&act=editpelanggan&id=$r[id_pelanggan]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                      <a href=\"$aksi?module=pelanggan&act=hapus&id=$r[id_pelanggan]\" onclick=\"return confirm('Are you sure want to delete?')\"><span class=\"glyphicon glyphicon-remove\"></span></center>
            			</td>
          			</tr>";
                $no++;
              }
              echo "</table>";
  break;
  
  case "tambahpelanggan":
    echo "
          <div class=\"col-md-12\">
        		<h2>Tambah Pelanggan</h2>
        		<form name=form action='$aksi?module=pelanggan&act=input' method=POST onSubmit=\"return validasi(this)\">
        				<table id='example1' class='table table-bordered table-striped'>
        					<tr><td>Nama Lengkap</td><td><input class=\"form-control\" type=text name='nama'></td></tr>
        					<tr><td>Alamat</td><td><textarea class=\"form-control\" name='alamat' cols='60' rows='5'></textarea></td></tr>            
        					<tr><td>Kota</td><td><input class=\"form-control\" type=text name='kota'></td></tr> 
        					<tr><td>No.Telp</td><td><input class=\"form-control\" type=text name='telp'></td></tr> 
        					<tr><td>No.HP GSM1</td><td><input class=\"form-control\" type=text name='gsm1'></td></tr> 
        					<tr><td>No.HP GSM2</td><td><input class=\"form-control\" type=text name='gsm2'></td></tr> 
        					<tr><td>No.HP CDMA</td><td><input class=\"form-control\" type=text name='cdma'></td></tr> 
        					<tr><td>E-mail</td><td><input class=\"form-control\" type=text name='email'></td></tr>
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
    
  case "editpelanggan":
    $edit=mysql_query("SELECT * FROM pelanggan WHERE id_pelanggan='$_GET[id]'");
    $r=mysql_fetch_array($edit);
    echo "
          <div class=\"col-md-12\">
        		<h2>Edit Pelanggan</h2>
            <form method=POST action=$aksi?module=pelanggan&act=update>
            <input type=hidden name=id value='$r[id_pelanggan]'>
        			<table id='example1' class='table table-bordered table-striped'>
        			<tr><td>Nama Lengkap</td><td><input class=\"form-control\" type=text name='nama' value='$r[nama]'></td></tr>
        			<tr><td>Alamat</td><td><input class=\"form-control\" type=text name='alamat' value='$r[alamat]'></td></tr>            
        			<tr><td>Kota</td><td><input class=\"form-control\" type=text name='kota' value='$r[kota]'></td></tr> 
        			<tr><td>No.Telp</td><td><input class=\"form-control\" type=text name='telp' value='$r[telp]'></td></tr> 
        			<tr><td>No.HP GSM1</td><td><input class=\"form-control\" type=text name='gsm1' value='$r[gsm1]'></td></tr> 
        			<tr><td>No.HP GSM2</td><td><input class=\"form-control\" type=text name='gsm2' value='$r[gsm2]'></td></tr> 
        			<tr><td>No.HP CDMA</td><td><input class=\"form-control\" type=text name='cdma' value='$r[cdma]'></td></tr> 
        			<tr><td>E-mail</td><td><input class=\"form-control\" type=text name='email' value='$r[email]'></td></tr>
        			<tr><td colspan=2>
              				<input class=\"btn btn-primary\" type=submit value=Update>
              				<input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
        			</table>
        		</form>
          </div>"; 
    break;  
	
  case "caripelanggan":
      $field=$_POST['field'];
      $keyword=$_POST['keyword'];
      $tampil4 = mysql_query("SELECT * FROM pelanggan where $field like '%$keyword' ");
      echo "
            <div class=\"col-md-12\">
              <h2>Cari Pelanggan</h2>
          		Field: $field - keyword: $keyword
              <table id='example1' class='table table-bordered table-hover'>
                <tr>
                  <th>No</th>
                  <th>Nama</th>
                  <th>Telp</th>
                  <th><center>Proses</th>
                </tr>"; 
              $no=1;
              while ($r4=mysql_fetch_array($tampil4)){
                 echo "
          			 <tr>
          				<td>$no</td>
                  <td>$r4[nama]</td>
                  <td>$r4[telp]</td>
                       <td><center>
                             <a href=?module=pelanggan&act=detailpelanggan&id=$r[id_pelanggan]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                             <a href=?module=pelanggan&act=editpelanggan&id=$r[0]><img src='images/edit.png'></a> &nbsp&nbsp
                             <a href=$aksi?module=pelanggan&act=hapus&id=$r[0]><img src='images/delete.png'></a></center></td></tr>";
                $no++;
              }
              echo "</table>
            </div>";
    break;  	
		
}
}
?>
