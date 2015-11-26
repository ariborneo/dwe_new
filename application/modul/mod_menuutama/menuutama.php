<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_menuutama/aksi_menuutama.php";
switch($_GET['act']){
  // Tampil Menu Utama
  default:
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:20px;\">
        		<h2>Menu Utama</h2>
            <input class='btn btn-primary' value='Tambah Menu Utama' onclick=\"window.location.href='?module=menuutama&act=tambahmenuutama';\">
        		<br><br>
            <table id='example1' class='table table-bordered table-hover'>
              <tr>
                <th>No</th>
                <th>Menu Utama</th>
                <th>Link</th>
                <th>Urutan</th>
                <th>Level</th>
                <th><center>Proses</th>
              </tr>"; 
            $tampil=mysql_query("SELECT * FROM mainmenu");
            $no=1;
            while ($r=mysql_fetch_array($tampil)){
               echo "<tr><td>$no</td>
                     <td>$r[nama_menu]</td>
                     <td>$r[link]</td>
                     <td>$r[urutan]</td>
        						 <td>$r[level]</td>
                     <td><center>
                      <a href=?module=menuutama&act=detailmenu&id=$r[id_main]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
        							<a href=?module=menuutama&act=editmenuutama&id=$r[id_main]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
        							
                     </td></tr>";
              $no++;
            }
    echo "  </table>
            <div class=\"alert alert-danger\" role=\"alert\">
              <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
              <span class=\"sr-only\">Error:</span>
                Data pada Menu tidak bisa dihapus, tapi bisa di non-aktifkan melalui Edit Menu Utama.
            </div>
          </div>";
    break;
  
  // Form Tambah Menu Utama
  case "tambahmenuutama":
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Tambah Menu Utama</h2>
            <form method=POST action='$aksi?module=menuutama&act=input'>
              <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Nama Menu</td><td><input class=\"form-control\" type=text name='nama_menu'></td></tr>
                <tr><td>Link</td><td><input class=\"form-control\" type=text name='link'></td></tr>
      					<tr><td>Urutan</td><td><input class=\"form-control\" type=text name='urutan'></td></tr>
      					<tr><td>Level</td><td><input class=\"form-control\" type=text name='level'></td></tr>
                <tr><td colspan=2>
                                  <input class=\"btn btn-primary\" type=submit name=submit value=Simpan>
                                  <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>
          </div>";
     break;
  
  // Form Edit Menu Utama
  case "editmenuutama":
    $edit=mysql_query("SELECT * FROM mainmenu WHERE id_main='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
        		<h2>Edit Menu Utama</h2>
            <form method=POST action=$aksi?module=menuutama&act=update>
            <input type=hidden name=id value='$r[id_main]'>
              <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Nama Menu</td><td><input class=\"form-control\" type=text name='nama_menu' value='$r[nama_menu]'></td></tr>
                <tr><td>Link</td><td><input class=\"form-control\" type=text name='link' value='$r[link]'></td></tr>";
                if ($r['aktif']=='Y'){
                  echo "<tr><td>Aktif</td><td><input type=radio name='aktif' value='Y' checked>Y  
                                              <input type=radio name='aktif' value='N'> N</td></tr>";
                }
                else{
                  echo "<tr><td>Aktif</td> <td><input type=radio name='aktif' value='Y'>Y  
                                                <input type=radio name='aktif' value='N' checked>N</td></tr>";
                }
            		echo "<tr><td>Urutan</td><td><input class=\"form-control\" type=text name='urutan' value='$r[urutan]'></td></tr>";
            		echo "<tr><td>Level</td><td><input class=\"form-control\" type=text name='level' value='$r[level]'></td></tr>";
                echo "<tr><td colspan=2>
                                        <input class=\"btn btn-primary\" type=submit value=Update>
                                        <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>";
    break;  
    
    case "detailmenu":
    $edit=mysql_query("SELECT * FROM mainmenu WHERE id_main='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Detail Menu Utama</h2>
            <input type=hidden name=id value='$r[id_main]'>
              <table id='example1' class='table table-bordered table-hover'>
                <tr><td>Nama Menu</td><td>$r[nama_menu]</td></tr>
                <tr><td>Link</td><td>$r[link]</td></tr>";
                if ($r['aktif']=='Y'){
                  echo "<tr><td>Aktif</td><td><input type=radio name='aktif' value='Y' checked>Y  
                                              <input type=radio name='aktif' value='N'> N</td></tr>";
                }
                else{
                  echo "<tr><td>Aktif</td> <td><input type=radio name='aktif' value='Y'>Y  
                                                <input type=radio name='aktif' value='N' checked>N</td></tr>";
                }
                echo "<tr><td>Urutan</td><td>$r[urutan]</td></tr>";
                echo "<tr><td>Level</td><td>$r[level]</td></tr>";
                echo "<tr><td colspan=2>
                            <input class=\"btn btn-danger\" type=button value=Kembali onclick=self.history.back()></td></tr>
              </table>
          </div>";
    break;

    }
}
?>
