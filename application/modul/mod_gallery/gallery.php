<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_gallery/aksi_gallery.php";
switch($_GET['act']){
  // Tampil Galeri Foto
  default:
    echo "
          <div class=\"col-md-12\">
            <h2>Galeri Foto</h2>
            <input class='btn btn-primary' type=button value='Tambah Galeri Foto' onclick=\"window.location.href='?module=gallery&act=tambahgallery';\">
            <table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
              <tr>
                <td>No</td>
                <td>Gambar foto</td>
                <td>Judul foto</td>
                <td>Album</td>
                <td><center>Proses</td>
              </tr>";

        $p      = new Paging;
        $batas  = 10;
        $posisi = $p->cariPosisi($batas);

        $tampil = mysql_query("SELECT * FROM gallery,album WHERE gallery.id_album=album.id_album ORDER BY id_gallery DESC LIMIT $posisi,$batas");
      
        $no = $posisi+1;
        while($r=mysql_fetch_array($tampil)){
          echo "<tr>
                  <td>$no</td>
          				<td><img src='img_galeri/kecil_$r[gbr_gallery]'></td>
                  <td>$r[jdl_gallery]</td>
                  <td>$r[jdl_album]</td>
  		            <td><center>
                          <a href=?module=gallery&act=detailgallery&id=$r[id_gallery]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                          <a href=?module=gallery&act=editgallery&id=$r[id_gallery]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
  		                    <a href='$aksi?module=gallery&act=hapus&id=$r[id_gallery]&namafile=$r[gbr_gallery]'><span class=\"glyphicon glyphicon-remove\"></span></center>
                  </td>
    		        </tr>";
        $no++;
      }
        echo "</table>
            </div>";

      $jmldata = mysql_num_rows(mysql_query("SELECT * FROM gallery"));
    
      $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
      $linkHalaman = $p->navHalaman($_GET['halaman'], $jmlhalaman);

      echo "<div class=pagination>$linkHalaman</div><br>";
 
    break;
  
  case "tambahgallery":
    echo "
          <div class=\"col-md-12\">
            <h2>Tambah Galeri Foto</h2>
            <form method=POST action='$aksi?module=gallery&act=input' enctype='multipart/form-data'>
              <table id='example1' class='table table-bordered table-striped'>
              <tr><td>Judul Foto</td><td><input class=\"form-control\" type=text name='jdl_gallery'></td></tr>
              <tr><td>Album</td><td>  
              <select name='album' class=\"form-control\">
                <option value=0 selected>- Pilih Album -</option>";
                $tampil=mysql_query("SELECT * FROM album ORDER BY jdl_album");
                while($r=mysql_fetch_array($tampil)){
                  echo "<option value=$r[id_album]>$r[jdl_album]</option>";
                }
        echo "</select></td></tr>
              <tr><td>Keterangan</td><td><textarea class=\"form-control\" id='loko' name='keterangan'></textarea></td></tr>
              <tr><td>Gambar</td><td><input class=\"form-control\" type=file name='fupload'> 
              <br>Tipe gambar harus JPG/JPEG</td></tr>
              </td></tr>
              <tr><td colspan=2><input class=\"btn btn-primary\" type=submit value=Simpan>
                                <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>
          </div>";
     break;
    
  case "editgallery":
    $edit = mysql_query("SELECT * FROM gallery WHERE id_gallery='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\">
            <h2>Edit Galeri Foto</h2>
            <form method=POST enctype='multipart/form-data' action=$aksi?module=gallery&act=update>
            <input type=hidden name=id value=$r[id_gallery]>
              <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Judul Foto</td><td><input class=\"form-control\" type=text name=\"jdl_gallery\" value=\"$r[jdl_gallery]\"></td></tr>
                <tr><td>Album</td><td><select name='album' class=\"form-control\">";
       
                $tampil=mysql_query("SELECT * FROM album ORDER BY jdl_album");
                if ($r['id_album']==0){
                  echo "<option value=0 selected>- Pilih Album -</option>";
                }   

                while($w=mysql_fetch_array($tampil)){
                  if ($r['id_album']==$w['id_album']){
                    echo "<option value=$w[id_album] selected>$w[jdl_album]</option>";
                  }
                  else{
                    echo "<option value=$w[id_album]>$w[jdl_album]</option>";
                  }
                }
          echo "</select></td></tr>
                <tr><td>Keterangan</td><td><textarea class=\"form-control\" id='loko' name='keterangan'>$r[keterangan]</textarea></td></tr>
                <tr><td>Gambar</td><td>";
                if ($r['gbr_gallery']!=''){
                    echo "<img src='img_galeri/kecil_$r[gbr_gallery]'>";  
                }
          echo "</td></tr>
                <tr><td>Ganti Gbr</td><td><input class=\"form-control\" type=file name='fupload'> *)</td></tr>
                <tr><td colspan=2>*) Apabila gambar tidak diubah, dikosongkan saja.</td></tr>
                <tr><td colspan=2><input class=\"btn btn-primary\" type=submit value=Update>
                                  <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
             </table>
            </form>
          </div>";
    break;  

    case "detailgallery":
    $edit = mysql_query("SELECT * FROM gallery WHERE id_gallery='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\">
            <h2>Detail Galeri Foto</h2>
            <input type=hidden name=id value=$r[id_gallery]>
              <table id='example1' class='table table-bordered table-hover'>
                <tr><td>Judul Foto</td><td>$r[jdl_gallery]</td></tr>
                <tr><td>Album</td><td>$r[id_album]</td></tr>
                <tr><td>Keterangan</td><td>$r[keterangan]</td></tr>
                <tr><td>Gambar</td><td><img src='img_galeri/kecil_$r[gbr_gallery]'></td</tr>
                <tr><td colspan=2><input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
             </table>
          </div>";
    break;  
}
}
?>
