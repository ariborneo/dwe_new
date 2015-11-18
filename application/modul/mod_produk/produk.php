<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  $aksi="modul/mod_produk/aksi_produk.php";
  switch($_GET['act']){
    // Tampil Produk
    default:
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
              <h2>Produk</h2>
              <input class='btn btn-primary' type=button value='Tambah Produk' onclick=\"window.location.href='?module=produk&act=tambahproduk';\">
    					<table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
                <tr>
                  <th>No</th>
                  <th>Nama Produk</th>
                  <th>Berat</th>
                  <th>Stok</th>
                  <th>Tgl. masuk</th>
                  <th>Harga</th>
                  <th>diskon</th>
                  <th><center><Proses</th>
                </tr>";

                $tampil = mysql_query("SELECT * FROM produk ORDER BY id_produk");
              
                $no =1;
                while($r=mysql_fetch_array($tampil)){
          echo "<tr>
                    <td>$no</td>
                    <td>$r[nama_produk]</td>
                    <td>$r[berat]</td>
                    <td>$r[stok]</td>
                    <td>$r[tgl_masuk]</td>
                    <td>$r[harga]</td>
                    <td>$r[diskon]</td>
    		            <td>
                        <a href=?module=produk&act=detailproduk&id=$r[id_produk]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                        <a href=?module=produk&act=editproduk&id=$r[id_produk]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
    		                <a href='$aksi?module=produk&act=hapus&id=$r[id_produk]&namafile=$r[gambar]'><span class=\"glyphicon glyphicon-remove\"></span></center>
                    </td>
    		        </tr>";
          $no++;
        }
        echo "</table>";
     
    break;
    
    case "tambahproduk":
      echo "
            <div class=\"col-md-12\">
              <h2>Tambah Produk</h2>
              <form method=POST action='$aksi?module=produk&act=input' enctype='multipart/form-data'>
                <table id='example1' class='table table-bordered table-striped'> 
                  <tr><td width=100>Nama Produk</td><td><input class=\"form-control\" type=text name='nama_produk'></td></tr>
                  <tr><td>Kategori</td><td>
                    <select name='kategori' class=\"form-control\">
                      <option value=0 selected>- Pilih Kategori -</option>";
                      $tampil=mysql_query("SELECT * FROM kategori ORDER BY nama_kategori");
                      while($r=mysql_fetch_array($tampil)){
                        echo "<option value=$r[id_kategori]>$r[nama_kategori]</option>";
                    }
            echo "</select></td></tr>
                  <tr><td>Berat</td><td><input class=\"form-control\" type=text name='berat'>KG</td></tr>
                  <tr><td>Harga</td><td><input class=\"form-control\" type=text name='harga'></td></tr>
                  <tr><td>Diskon</td><td><input class=\"form-control\" type=text name='diskon'>%</td></tr>
                  <tr><td>Stok</td><td><input class=\"form-control\" type=text name='stok'></td></tr>
                  <tr><td>Deskripsi</td><td><textarea class=\"form-control\" name='deskripsi' col=3></textarea></td></tr>
                  <tr><td>Gambar</td><td><input class=\"form-control\" type=file name='fupload'>Tipe gambar harus JPG/JPEG dan ukuran lebar maks: 400 px</td></tr>
                  <tr><td colspan=2>
                                <input class=\"btn btn-primary\" type=submit value=Simpan>
                                <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table></form>
            </div>";
       break;
      
    case "editproduk":
      $edit = mysql_query("SELECT * FROM produk WHERE id_produk='$_GET[id]'");
      $r    = mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Edit Produk</h2>
              <form method=POST enctype='multipart/form-data' action=$aksi?module=produk&act=update>
                <input type=hidden name=id value=$r[id_produk]>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Nama Produk</td><td><input class=\"form-control\" type=text name='nama_produk' value='$r[nama_produk]'></td></tr>
                  <tr><td>Kategori</td><td><select name='kategori' class=\"form-control\">";
         
                  $tampil=mysql_query("SELECT * FROM kategori ORDER BY nama_kategori");
                  if ($r['id_kategori']==0){
                    echo "<option value=0 selected>- Pilih Kategori -</option>";
                  }   

                  while($w=mysql_fetch_array($tampil)){
                    if ($r['id_kategori']==$w['id_kategori']){
                      echo "<option value=$w[id_kategori] selected>$w[nama_kategori]</option>";
                    }
                    else{
                      echo "<option value=$w[id_kategori]>$w[nama_kategori]</option>";
                    }
                  }
            echo "</select></td></tr>
                  <tr><td>Berat</td><td><input class=\"form-control\" type=text name='berat' value=$r[berat]></td></tr>
                  <tr><td>Harga</td><td><input class=\"form-control\" type=text name='harga' value=$r[harga]></td></tr>
                  <tr><td>Diskon</td><td><input class=\"form-control\" type=text name='diskon' value=$r[diskon]></td></tr>
                  <tr><td>Stok</td><td><input class=\"form-control\" type=text name='stok' value=$r[stok]></td></tr>
                  <tr><td>Deskripsi</td><td><textarea name='deskripsi' col=3>$r[deskripsi]</textarea></td></tr>
                  <tr><td>Gambar</td><td><img src='../foto_produk/small_$r[gambar]'></td></tr>
                  <tr><td>Ganti Gbr</td><td><input class=\"form-control\" type=file name='fupload'</td></tr>
                  <tr><td colspan=2>
                              <input class=\"btn btn-primary\" type=submit value=Update>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
               </table>
              </form>
            </div>";
      break;  

      case "detailproduk":
      $edit = mysql_query("SELECT * FROM produk WHERE id_produk='$_GET[id]'");
      $r    = mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Detail Produk</h2>
                <input type=hidden name=id value=$r[id_produk]>
                <table id='example1' class='table table-bordered table-hover' >
                  <tr><td>Nama Produk</td><td>$r[nama_produk]</td></tr>
                  <tr><td>Kategori</td><td>$r[id_kategori]</td></tr>
                  <tr><td>Berat</td><td>$r[berat]</td></tr>
                  <tr><td>Harga</td><td>$r[harga]</td></tr>
                  <tr><td>Diskon</td><td>$r[diskon]</td></tr>
                  <tr><td>Stok</td><td>$r[stok]</td></tr>
                  <tr><td>Deskripsi</td><td>$r[deskripsi]</td></tr>
                  <tr><td>Gambar</td><td><img src='../foto_produk/small_$r[gambar]'></td></tr>
                  <tr><td colspan=2>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
               </table>
            </div>";
      break;
  }
}
?>
