<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  $aksi="modul/mod_kategori/aksi_kategori.php";
  switch($_GET['act']){
    // Tampil Kategori
    default:
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">   
          		<h2>Kategori</h2>
              <input class='btn btn-primary' type=button value='Tambah Kategori' onclick=\"window.location.href='?module=kategori&act=tambahkategori';\">
              <table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
                <tr>
                  <th>No</th>
                  <th>Kode Kategori</th>
                  <th>Nama Kategori</th>
                  <th><center>Proses</th>
                </tr>"; 
              $tampil=mysql_query("SELECT * FROM kategori ORDER BY id_kategori DESC");
              $no=1;
              while ($r=mysql_fetch_array($tampil)){
                 echo "
                       <tr>
                        <td>$no</td>
                        <td>$r[kd_kategori]</td>
          						  <td>$r[nama_kategori]</td>
                        <td><center>
                          <a href=?module=kategori&act=detailkategori&id=$r[id_kategori]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
            							<a href=?module=kategori&act=editkategori&id=$r[id_kategori]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                        </td>
                       </tr>";
                $no++;
              }
        echo "</table>
              <div class=\"alert alert-danger\" role=\"alert\">
                <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Error:</span>
                  Data pada Kategori tidak bisa dihapus, tapi bisa di non-aktifkan melalui Edit Kategori.
              </div>
            </div>";
    break;
    
    // Form Tambah Kategori
    case "tambahkategori":
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">   
              <h2>Tambah Kategori</h2>
              <form method=POST action='$aksi?module=kategori&act=input'>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Kode Kategori</td><td><input class=\"form-control\" type=text name='kd_kategori'></td></tr>
                  <tr><td>Nama Kategori</td><td><input class=\"form-control\" type=text name='nama_kategori'></td></tr>
                  <tr><td colspan=2>
                          <input class=\"btn btn-primary\" type=submit name=submit value=Simpan>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
       break;
    
    // Form Edit Kategori  
    case "editkategori":
      $edit=mysql_query("SELECT * FROM kategori WHERE id_kategori='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">   
              <h2>Edit Kategori</h2>
              <form method=POST action=$aksi?module=kategori&act=update>
              <input type=hidden name=id value='$r[id_kategori]'>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Kode Kategori</td><td><input class=\"form-control\" type=text name='kd_kategori' value='$r[kd_kategori]'></td></tr>
                  <tr><td>Nama Kategori</td><td><input class=\"form-control\" type=text name='nama_kategori' value='$r[nama_kategori]'></td></tr>
                  <tr><td colspan=2>
                          <input class=\"btn btn-primary\" type=submit value=Update>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
      break;  

      case "detailkategori":
      $edit=mysql_query("SELECT * FROM kategori WHERE id_kategori='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">   
              <h2>Detail Kategori</h2>
              <input type=hidden name=id value='$r[id_kategori]'>
                <table id='example1' class='table table-bordered table-hover'>
                  <tr><td>Kode Kategori</td><td>$r[kd_kategori]</td></tr>
                  <tr><td>Nama Kategori</td><td>$r[nama_kategori]</td></tr>
                  <tr><td colspan=2>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
            </div>";
      break;  
  }
}
?>
