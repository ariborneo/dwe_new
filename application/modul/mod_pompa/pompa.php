<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  $aksi="modul/mod_pompa/aksi_pompa.php";
  switch($_GET['act']){
    // Tampil Pompa
    default:
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
          		<h2>Pompa</h2>
              <input class='btn btn-primary' type=button value='Tambah Pompa' onclick=\"window.location.href='?module=pompa&act=tambahpompa';\">
              <table id='example1' class='table table-bordered table-striped' style='margin-top:10px;'>
                <tr>
                  <th>No</th>
                  <th>Nama Pompa</th>
                  <th><center>Proses</th>
                </tr>"; 
              $tampil=mysql_query("SELECT * FROM pompa ORDER BY id_pompa DESC");
              $no=1;
              while ($r=mysql_fetch_array($tampil)){
                 echo "<tr>
                        <td>$no</td>
          						  <td>$r[nama_pompa]</td>
                        <td><center>
                          <a href=?module=pompa&act=detailpompa&id=$r[id_pompa]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
            							<a href=?module=pompa&act=editpompa&id=$r[id_pompa]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
            							<a href=$aksi?module=pompa&act=hapus&id=$r[id_pompa]><span class=\"glyphicon glyphicon-remove\"></span></center>
                        </td>
                       </tr>";
                $no++;
              }
        echo "</table>
              <div class=\"alert alert-danger\" role=\"alert\">
                <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Error:</span>
                  Data pada Pompa tidak bisa dihapus, tapi bisa di non-aktifkan melalui Edit Pompa.
              </div>
            </div>";
      break;
    
    // Form Tambah Pompa
    case "tambahpompa":
    echo "
          <div class=\"col-md-12\">
            <h2>Tambah Pompa</h2>
            <form method=POST action='$aksi?module=pompa&act=input'>
              <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Nama Pompa</td><td><input class=\"form-control\" type=text name='nama_pompa'></td></tr>
                <tr><td colspan=2>
                          <input class=\"btn btn-primary\" type=submit name=submit value=Simpan>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>
          </div>";
       break;
    
    // Form Edit Pompa
    case "editpompa":
      $edit=mysql_query("SELECT * FROM pompa WHERE id_pompa='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Edit Pompa</h2>
              <form method=POST action=$aksi?module=pompa&act=update>
              <input type=hidden name=id value='$r[id_pompa]'>
                <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Nama Pompa</td><td><input class=\"form-control\" type=text name='nama_pompa' value='$r[nama_pompa]'></td></tr>
                <tr><td colspan=2>
                          <input class=\"btn btn-primary\" type=submit value=Update>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
      break;  

      case "detailpompa":
      $edit=mysql_query("SELECT * FROM pompa WHERE id_pompa='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Detail Pompa</h2>
              <input type=hidden name=id value='$r[id_pompa]'>
                <table id='example1' class='table table-bordered table-hover'>
                <tr><td>Nama Pompa</td><td>$r[nama_pompa]</td></tr>
                <tr><td colspan=2>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
            </div>";
      break;  
  }
}
?>
