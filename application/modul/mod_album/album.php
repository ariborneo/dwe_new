<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_album/aksi_album.php";
switch($_GET['act']){
  // Tampil Album
  default:
    echo "
          <div class=\"col-md-12\">
            <h2>Album</h2>
            <input class='btn btn-primary' type=button value='Tambah Album' onclick=\"window.location.href='?module=album&act=tambahalbum';\">
            <table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
            <tr>
              <td>No</td>
              <td>Gambar</td>
              <td>Judul Album</td>
              <td><center>Proses</td>
            </tr>"; 
      $tampil=mysql_query("SELECT * FROM album ORDER BY id_album DESC");
      $no=1;
      while ($r=mysql_fetch_array($tampil)){
         echo "<tr>
                 <td>$no</td>             
                 <td><img src='img_album/kecil_$r[gbr_album]'></td>
                 <td>$r[jdl_album]</td>
                 <td><center>
                 <a href=?module=album&act=detailalbum&id=$r[id_album]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
    						 <a href=?module=album&act=editalbum&id=$r[id_album]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
    						 <a href=$aksi?module=album&act=hapus&id=$r[id_album]><span class=\"glyphicon glyphicon-remove\"></span></center>
               </tr>";
        $no++;
      }
      echo "</table>
            <div class=\"alert alert-danger\" role=\"alert\">
              <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
              <span class=\"sr-only\">Error:</span>
                Data pada Album tidak bisa dihapus, tapi bisa di non-aktifkan melalui Edit Album.
            </div>";
    break;
  
  // Form Tambah Album
  case "tambahalbum":
    echo "
          <div class=\"col-md-12\">
            <h2>Tambah Album</h2>
            <form method=POST action='$aksi?module=album&act=input' enctype='multipart/form-data'>
              <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Judul Album</td><td><input class=\"form-control\" type=text name='jdl_album'></td></tr>
                <tr><td>Gambar</td><td><input class=\"form-control\" type=file name='fupload'></td></tr>
                <tr><td colspan=2>
                          <input class=\"btn btn-primary\" type=submit name=submit value=Simpan>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>
          </div>";
     break;
  
  // Form Edit Album  
  case "editalbum":
    $edit=mysql_query("SELECT * FROM album WHERE id_album='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\">
            <h2>Edit Album</h2>
            <form method=POST enctype='multipart/form-data' action=$aksi?module=album&act=update>
            <input type=hidden name=id value='$r[id_album]'>
              <table id='example1' class='table table-bordered table-striped'>
              <tr><td>Judul Album</td><td><input class=\"form-control\" type=text name='jdl_album' value='$r[jdl_album]'></td></tr>
              <tr><td>Gambar</td><td><img src='img_album/kecil_$r[gbr_album]'></td></tr>
              <tr><td>Ganti Gbr</td><td><input class=\"form-control\" type=file name='fupload'></td></tr>";
        if ($r['aktif']=='Y'){
          echo "<tr><td>Aktif</td><td><input type=radio name='aktif' value='Y' checked>Y  
                                      <input type=radio name='aktif' value='N'> N</td></tr>";
        }
        else{
          echo "<tr><td>Aktif</td><td><input type=radio name='aktif' value='Y'>Y  
                                      <input type=radio name='aktif' value='N' checked>N</td></tr>";
        }         
        echo "<tr><td colspan=2><input class=\"btn btn-primary\" type=submit value=Update>
                                <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>
          </div>";
    break;

    case "detailalbum":
    $edit=mysql_query("SELECT * FROM album WHERE id_album='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\">
            <h2>Detail Album</h2>
            <input type=hidden name=id value='$r[id_album]'>
              <table id='example1' class='table table-bordered table-striped'>
              <tr><td>Judul Album</td><td>$r[jdl_album]</td></tr>
              <tr><td>Gambar</td><td><img src='img_album/kecil_$r[gbr_album]'></td></tr>
              <tr><td colspan=2><input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>
          </div>";
    break;  
}
}
?>
