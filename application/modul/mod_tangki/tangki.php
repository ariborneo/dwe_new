<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  $aksi="modul/mod_tangki/aksi_tangki.php";
  switch($_GET['act']){
    // Tampil Tangki
    default:
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
          		<h2>Tangki</h2>
              <input class='btn btn-primary' type=button value='Tambah Tangki' onclick=\"window.location.href='?module=tangki&act=tambahtangki';\">
              <table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
                <tr>
                  <th>No</th>
                  <th>Kode Tangki</th>
                  <th>Nama Tangki</th>
                  <th>Isi Tangki</th>
                  <th><center>Proses</th>
                </tr>"; 
              $tampil=mysql_query("SELECT * FROM tangki ORDER BY id_tangki DESC");
              $no=1;
              while ($r=mysql_fetch_array($tampil)){
                 echo "
                      <tr>
                        <td>$no</td>
                        <td>$r[kd_tangki]</td>
          						  <td>$r[nama_tangki]</td>
                        <td>$r[isi_tangki]</td>
                        <td align=center>
            							<a href=?module=tangki&act=detailtangki&id=$r[id_tangki]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                          <a href=?module=tangki&act=edittangki&id=$r[id_tangki]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
            							<a href=$aksi?module=tangki&act=hapus&id=$r[id_tangki]><span class=\"glyphicon glyphicon-remove\"></span></center>
                       </td>
                      </tr>";
                $no++;
              }
        echo "</table>
              <div class=\"alert alert-danger\" role=\"alert\">
                <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Error:</span>
                  Data pada Tangki tidak bisa dihapus, tapi bisa di non-aktifkan melalui Edit Tangki.
              </div>
            </div>";
      break;
    
    // Form Tambah Tangki
    case "tambahtangki":
      echo "
            <div class=\"col-md-12\">
              <h2>Tambah Tangki</h2>
              <form method=POST action='$aksi?module=tangki&act=input'>
                <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Kode Tangki</td><td><input class=\"form-control\" type=text name='kd_tangki'></td></tr>
                <tr><td>Nama Tangki</td><td><input class=\"form-control\" type=text name='nama_tangki'></td></tr>
                <tr><td>Isi Tangki</td><td><input class=\"form-control\" type=text name='isi_tangki'</td></tr>
                <tr><td colspan=2>
                            <input class=\"btn btn-primary\" type=submit name=submit value=Simpan>
                            <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
       break;
    
    // Form Edit Tangki  
    case "edittangki":
      $edit=mysql_query("SELECT * FROM tangki WHERE id_tangki='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Edit Tangki</h2>
              <form method=POST action=$aksi?module=tangki&act=update>
              <input type=hidden name=id value='$r[id_tangki]'>
                <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Kode Tangki</td><td><input class=\"form-control\" type=text name='kd_tangki' value='$r[kd_tangki]'></td></tr>
                <tr><td>Nama Tangki</td><td><input class=\"form-control\" type=text name='nama_tangki' value='$r[nama_tangki]'></td></tr>
                <tr><td>Isi Tangki</td><td><input class=\"form-control\" type=text name='isi_tangki' value='$r[isi_tangki]'></td></tr>
                <tr><td colspan=2>
                              <input class=\"btn btn-primary\" type=submit value=Update>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
      break;

      case "detailtangki":
      $edit=mysql_query("SELECT * FROM tangki WHERE id_tangki='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Detail Tangki</h2>
              <input type=hidden name=id value='$r[id_tangki]'>
                <table id='example1' class='table table-bordered table-hover'>
                <tr><td>Kode Tangki</td><td>$r[kd_tangki]</td></tr>
                <tr><td>Nama Tangki</td><td>$r[nama_tangki]</td></tr>
                <tr><td>Isi Tangki</td><td>$r[isi_tangki]</td></tr>
                <tr><td colspan=2>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
            </div>";
      break;  
  }
}
?>
