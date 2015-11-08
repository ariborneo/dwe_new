<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
          <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  $aksi="modul/mod_cabang/aksi_cabang.php";
  switch($_GET['act']){
    // Tampil Cabang
    default:
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
          		<h2>Cabang</h2>
              <input class='btn btn-primary' type=button value='Tambah Cabang' onclick=\"window.location.href='?module=cabang&act=tambahcabang';\">
              <table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
                <tr>
                  <th>No</th>
                  <th>Kode Cabang</th>
                  <th>Nama Cabang</th>
                  <th>Alamat</th>
                  <th>Telepon</th>
                  <th>PIC</th>
                  <th><center>Proses</th>
                </tr>"; 
              $tampil=mysql_query("SELECT * FROM cabang ORDER BY id_cabang DESC");
              $no=1;
              while ($r=mysql_fetch_array($tampil)){
         echo "<tr>
                 <td>$no</td>
                 <td>$r[kd_cabang]</td>
    						 <td>$r[nama_cabang]</td>
                 <td>$r[alamat]</td>
                 <td>$r[telp]</td>
                 <td>$r[pic]</td>
                 <td><center>
                    <a href=?module=cabang&act=detailcabang&id=$r[id_cabang]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
      							<a href=?module=cabang&act=editcabang&id=$r[id_cabang]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                 </td>
               </tr>";
                $no++;
              }
      echo "  </table>
              <div class=\"alert alert-danger\" role=\"alert\">
                <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Error:</span>
                  Data pada Cabang tidak bisa dihapus, tapi bisa di non-aktifkan melalui Edit Cabang.
               </div>
            </div>";
      break;
    
    // Form Tambah Cabang
    case "tambahcabang":
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
              <h2>Tambah Cabang</h2>
              <form method=POST action='$aksi?module=cabang&act=input'>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Kode Cabang</td><td><input class=\"form-control\" type=text name='kd_cabang'></td></tr>
                  <tr><td>Nama Cabang</td><td><input class=\"form-control\" type=text name='nama_cabang'></td></tr>
                  <tr><td>Alamat</td><td><textarea class=\"form-control\" name='alamat'></textarea></tr>
                  <tr><td>Telepon</td><td><input class=\"form-control\" type=text name='telp'></td></tr>
                  <tr><td>PIC</td><td><input class=\"form-control\" type=text name='pic'></td></tr>
                  <tr><td colspan=2>
                            <input class=\"btn btn-primary\" type=submit name=submit value=Simpan>
                            <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td>
                  </tr>
                </table>
              </form>
            </div>";
       break;
    
    // Form Edit Cabang 
    case "editcabang":
      $edit=mysql_query("SELECT * FROM cabang WHERE id_cabang='$_GET[id]'");
      $r=mysql_fetch_array($edit);
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
              <h2>Edit Cabang</h2>
              <form method=POST action=$aksi?module=cabang&act=update>
              <input type=hidden name=id value='$r[id_cabang]'>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Kode Cabang</td><td><input class=\"form-control\" type=text name='kd_cabang' value='$r[kd_cabang]'></td></tr>
                  <tr><td>Nama Cabang</td><td><input class=\"form-control\" type=text name='nama_cabang' value='$r[nama_cabang]'></td></tr>
                  <tr><td>Alamat</td><td><textarea class=\"form-control\" name='alamat' >$r[alamat]</textarea></tr>
                  <tr><td>Telepon</td><td><input class=\"form-control\" type=text name='telp' value='$r[telp]'></td></tr>
                  <tr><td>PIC</td><td><input class=\"form-control\" type=text name='pic' value='$r[pic]'></td></tr>
                  <tr><td colspan=2>
                          <input class=\"btn btn-primary\" type=submit value=Update>
                          <input class=\"btn btn-danger\"type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
      break;

      case "detailcabang":
      $edit=mysql_query("SELECT * FROM cabang WHERE id_cabang='$_GET[id]'");
      $r=mysql_fetch_array($edit);
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
              <h2>Detail Cabang</h2>
              <input type=hidden name=id value='$r[id_cabang]'>
                <table id='example1' class='table table-bordered table-hover'>
                  <tr><td>Kode Cabang</td><td>$r[kd_cabang]</td></tr>
                  <tr><td>Nama Cabang</td><td>$r[nama_cabang]</td></tr>
                  <tr><td>Alamat</td><td>$r[alamat]</tr>
                  <tr><td>Telepon</td><td>$r[telp]</td></tr>
                  <tr><td>PIC</td><td>$r[pic]</td></tr>
                  <tr><td colspan=2>
                          <input class=\"btn btn-danger\"type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
            </div>";
      break;  
  }
}
?>
