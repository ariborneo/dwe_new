<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
          <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_modul/aksi_modul.php";
switch($_GET['act']){
  // Tampil Modul
  default:
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Modul</h2>
            <input type=button class='btn btn-primary' value='Tambah Modul' onclick=\"window.location.href='?module=modul&act=tambahmodul';\"><br /><br />
            <table id='example1' class='table table-bordered table-hover'>
              <tr>
                <th>No</th>
                <th>Nama Modul</th>
                <th>Link</th>
                <th>Publish</th>
                <th>Status</th>
                <th>Aktif</th>
                <th>Urutan</th>
                <th><center>Proses</th>
              </tr>";
            $tampil=mysql_query("SELECT * FROM modul ORDER BY status,urutan");
        		$no=1;
            while ($r=mysql_fetch_array($tampil)){
            echo "<tr>
              <td>$no</td>
              <td>$r[nama_modul]</td>
              <td><a href=$r[link]>$r[link]</a></td>
              <td>$r[publish]</td>
              <td>$r[status]</td>						
              <td>$r[aktif]</td>
  						<td>$r[urutan]</td>
              <td><center>
                    <a href=?module=modul&act=detailmodul&id=$r[id_modul]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                    <a href=?module=modul&act=editmodul&id=$r[id_modul]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                    <a href=$aksi?module=modul&act=hapus&id=$r[id_modul]><span class=\"glyphicon glyphicon-remove\"></span></center>
              </td></tr>";
  						$no=$no+1;
            }
    echo "  </table>
          </div>";
    break;

  case "tambahmodul":
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Tambah Modul</h2>
            <form method=POST action='$aksi?module=modul&act=input'>
              <table id='example1' class='table table-condensed table-striped'>
                <tr><td>Nama Modul</td><td><input class=\"form-control\" type=text name='nama_modul'></td></tr>
                <tr><td>Link</td><td><input class=\"form-control\" type=text name='link'></td></tr>
                <tr><td>Publish</td><td><input type=radio name='publish' value='Y' checked>Y  
                                        <input type=radio name='publish' value='N'> N</td></tr>
                <tr><td>Status</td><td><input class=\"form-control\" type=text name='status'></td></tr>
                <tr><td>Aktif</td><td><input type=radio name='aktif' value='Y' checked>Y  
                                      <input type=radio name='aktif' value='N'> N</td></tr>
                <tr><td colspan=2>
                                  <input class=\"btn btn-primary\" type=submit value=Simpan>
                                  <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>
          </div>";
     break;
 
  case "editmodul":
    $edit = mysql_query("SELECT * FROM modul WHERE id_modul='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Edit Modul</h2>
            <form method=POST action=$aksi?module=modul&act=update>
            <input type=hidden name=id value='$r[id_modul]'>
              <table id='example1' class='table table-bordered table-striped'>
              <tr><td>Nama Modul</td><td><input class=\"form-control\" type=text name='nama_modul' value='$r[nama_modul]'></td></tr>
              <tr><td>Link</td><td><input class=\"form-control\" type=text name='link' value='$r[link]'></td></tr>";
                if ($r['publish']=='Y'){
                  echo "<tr><td>Publish</td><td><input type=radio name='publish' value='Y' checked>Y  
                                                <input type=radio name='publish' value='N'> N</td></tr>";
                }
                else{
                  echo "<tr><td>Publish</td><td><input type=radio name='publish' value='Y'>Y  
                                                <input type=radio name='publish' value='N' checked>N</td></tr>";
                }
              echo "<tr><td>Status</td><td><input class=\"form-control\" type=text name='status' value='$r[status]'></td></tr>";
                if ($r['aktif']=='Y'){
                  echo "<tr><td>Aktif</td><td><input type=radio name='aktif' value='Y' checked>Y  
                                              <input type=radio name='aktif' value='N'> N</td></tr>";
                }
                else{
                  echo "<tr><td>Aktif</td><td><input type=radio name='aktif' value='Y'>Y  
                                              <input type=radio name='aktif' value='N' checked>N</td></tr>";
                }
              echo "<tr><td>Urutan</td><td><input class=\"form-control\" type=text name='urutan' value='$r[urutan]'></td></tr>
              <tr><td colspan=2>
                                <input class=\"btn btn-primary\" type=submit value=Update>
                                <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>
          </div>";
    break;

    case "detailmodul":
    $edit = mysql_query("SELECT * FROM modul WHERE id_modul='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Detail Modul</h2>
            <input type=hidden name=id value='$r[id_modul]'>
              <table id='example1' class='table table-bordered table-striped'>
              <tr><td>Nama Modul</td><td>$r[nama_modul]</td></tr>
              <tr><td>Link</td><td>$r[link]</td></tr>
              <tr><td>Publish</td><td>$r[publish]</td></tr>
              <tr><td>Status</td><td>$r[status]</td></tr>
              <tr><td>Aktif</td><td>$r[aktif]</td></tr>
              <tr><td>Urutan</td><td>$r[urutan]</td></tr>
              <tr><td colspan=2>
                                <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
          </div>";
    break;  


  }
}
?>
