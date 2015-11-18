<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  date_default_timezone_set('Asia/Jakarta');
  $tanggal=mktime(date("m"), date("d"), date("Y"));
  $tglsekarang=date("Y-m-d", $tanggal);
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
  $aksi="modul/mod_penjualan/aksi_penjualan.php";;
  switch($_GET['act']){
    // Tampil User
    default:
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Penjualan</h2>
            <form method=POST action='?module=penjualan&act=caripenjualan' >
            <table id='example1' class='table table-bordered table-hover'>
              <tr>
                <td>
                  <select name='field' class=\"form-control\">
                    <option value='kosong'>-- Pencarian Berdasarkan --</option>
                    <option value='id_dispenser'> ID Dispenser </option>
                    <option value='kd_barang'> Kode Barang </option>
                  </select>
                </td>
                <td>
                  <input class=\"form-control\" type='text' name='keyword'/>
                </td>
                <td>
                  <input class=\"btn btn-info\" type='submit' name='Submit' value='Search' />
                </td>
              </tr>                
            </table>
            </form>
          </div>"; 
            echo " 
              <div class=\"col-md-12\">
              <input class='btn btn-primary' value='Tambah Penjualan' onclick=\"window.location.href='?module=penjualan&act=tambahpenjualan';\">
              <table id='example1' class='table table-bordered table-hover' style='margin-top:10px; '>
              <tr>
                <th>No</th>
                <th>Kode Dispenser</th>
                <th>ID OP</th>
                <th>Meteran Awal</th>
                <th>Meteran Akhir</th>
                <th>Tanggal</th>
                <th>Kode Barang</th>
                <th>Kuantiti</th>
                <th>HPP</th>
                <th>Harga</th>
                <th>Total</th>
                <th><center>Proses</th>
              </tr>"; 
              $no=1;
              $tampil = mysql_query("SELECT * FROM penjualan ORDER BY id_penjualan");
              while ($r=mysql_fetch_array($tampil)){
                echo "
                      <tr><td>$no</td>
                      <td>$r[kd_dispenser]</td>
                      <td>$r[id_op]</td>
                      <td>$r[meteran_awal]</td>
                      <td>$r[meteran_akhir]</td>
                      <td>$r[tgl_penjualan]</td>
                      <td>$r[kd_barang]</td>
                      <td>$r[qty]</td>
                      <td>".number_format($r['hpp'])."</td>
                      <td>".number_format($r['harga_jual'])."</td>
                      <td>".number_format($r['total'])."</td>
                      <td><center>
                        <a href='modul/mod_penjualandetail/penjualandetailcetak.php?id=$r[id_penjualan]'><span class=\"glyphicon glyphicon-print\"></span>&nbsp;&nbsp;&nbsp;
                        <a href=?module=penjualandetail&id=$r[id_penjualan]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                        <a href=?module=penjualan&act=editpenjualan&id=$r[id_penjualan]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                        <a href=\"$aksi?module=penjualan&act=hapus&id=$r[id_penjualan] onclick=\"return confirm('Are you sure want to delete?')\"><span class=\"glyphicon glyphicon-remove\"></span></center>";
                      // if ($r['s1']!='Y'){
                      //   echo"
                          
                      //  }";
                       echo"</center></td>
                      
                      </tr>";
                $no++;
              }
              echo "</table>";

    break;
    
    case "tambahpenjualan":
      echo "
            <div class=\"col-md-12\">
              <h2>Transaksi Penjualan</h2>
              <form name=form action='$aksi?module=penjualan&act=input' method=POST onSubmit=\"return validasi(this)\">
                  <table id='example1' class='table table-bordered table-striped'>
                    <tr><td>Kode Dispenser</td><td>  
                    <select name='kd_dispenser' class=\"form-control\">
                      <option value=0 selected>- Pilih Kode Dispenser -</option>";
                      $tampil=mysql_query("SELECT * FROM dispenser ORDER BY id_dispenser");
                      while($r=mysql_fetch_array($tampil)){
                        echo "<option value=$r[kd_dispenser]>$r[kd_dispenser]</option>";
                      }
                      echo "</select></td>
                  </tr>
                    <tr><td>ID Operator</td><td>  
                    <select name='id_operator' class=\"form-control\">
                      <option value=0 selected>- Pilih Nama Operator -</option>";
                      $tampil=mysql_query("SELECT * FROM operator ORDER BY id_operator");
                      while($r=mysql_fetch_array($tampil)){
                        echo "<option value=$r[id_operator]>$r[nama]</option>";
                      }
                      echo "</select></td>
                    </tr>
                    <tr><td>Meteral Awal</td><td><input class=\"form-control\" type=text name='meteran_awal'></td></tr>
                    <tr><td>Meteran Akhir</td><td><input class=\"form-control\" type=text name='meteran_akhir'></td></tr>
                    <tr><td>Tanggal Penjualan</td><td><input class=\"form-control\" type=text name='tgl_penjualan' value='$tglsekarang'></td></tr>
                    <tr><td>Jam Mulai</td> <td><input class=\"form-control\" type=text name='jam_mulai'></td></tr>
                    <tr><td>Jam Selesai</td><td><input class=\"form-control\" type=text name='jam_selesai'></td></tr>
                    <tr><td>Kode Barang</td><td>  
                    <select name='kd_barang' class=\"form-control\">
                      <option value=0 selected>- Pilih Kode Barang -</option>";
                      $hpp = mysql_query("SELECT masterbarang.kd_barang,
                                                  stok.hpp
                                          FROM masterbarang
                                          INNER JOIN stok ON masterbarang.kd_barang = stok.kd_barang");
                      // $tampil=mysql_query("SELECT * FROM masterbarang ORDER BY id_barang");
                      while($r=mysql_fetch_array($hpp)){
                        echo "<option value='$r[kd_barang]|$r[hpp]'>$r[kd_barang] - $r[hpp]</option>";
                         // echo "<input type='hidden' value=$r[hpp] name='hpp'/>";
                      }
                      echo "</select></td>
                    </tr>
                    <tr><td>Harga Jual</td><td><input class=\"form-control\" type=text name='harga_jual'></td></tr>
                    <tr><td>Cash</td><td><input class=\"form-control\" type=text name='cash'></td></tr>
                    <tr><td>Kupon</td><td><input class=\"form-control\" type=text name='kupon'></td></tr>
                    <tr><td>Kredit</td><td><input class=\"form-control\" type=text name='kredit'></td></tr>
                    <tr><td>Debit</td><td><input class=\"form-control\" type=text name='debit'></td></tr>
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
      
    case "editpenjualan":
      $edit=mysql_query("SELECT * FROM penjualan WHERE id_penjualan='$_GET[id]'");
      $r=mysql_fetch_array($edit);
      echo "
            <div class=\"col-md-12\">
              <h2>Edit Penjualan</h2>
              <form method=POST action=$aksi?module=penjualan&act=update>
              <input type=hidden name=id value='$r[id_penjualan]'>
                <table id='example1' class='table table-bordered table-striped'>
                    <tr><td>ID Penjualan</td><td><input class=\"form-control\" type=text name='id_pelanggan' value='$r[id_penjualan]' disabled></td></tr>
                    <tr><td>Tanggal Penjualan</td><td><input class=\"form-control\" type=text name='tgl_penjualan' value='$tglsekarang'></td></tr>
                    <tr><td>Meteran Awal</td><td><input class=\"form-control\" type=text name='meteran_awal' value='$r[meteran_awal]'></td></tr>            
                    <tr><td>Meteran Akhir</td><td><input class=\"form-control\" type=text name='meteran_akhir' value='$r[meteran_akhir]'></td></tr>            
                    <tr><td>Harga Jual</td><td><input class=\"form-control\" type=text name='harga_jual' value='$r[harga_jual]'></td></tr>  
                    <tr><td>Kode Dispenser</td><td>  
                      <select name='kd_dispenser' class=\"form-control\">
                        <option value=0 selected>- Pilih Kode Dispenser -</option>";
                        $tampil=mysql_query("SELECT * FROM dispenser ORDER BY id_dispenser");
                        while($r=mysql_fetch_array($tampil)){
                          echo "<option value=$r[kd_dispenser]>$r[kd_dispenser]</option>";
                        }
                        echo "</select></td>
                    </tr>
                    <tr><td>Kode Barang</td><td>  
                    <select name='kd_barang' class=\"form-control\">
                      <option value='$r[kd_barang]' selected>- Pilih Kode Barang -</option>";
                      $hpp = mysql_query("SELECT masterbarang.kd_barang,
                                                  stok.hpp
                                          FROM masterbarang
                                          INNER JOIN stok ON masterbarang.kd_barang = stok.kd_barang");
                      // $tampil=mysql_query("SELECT * FROM masterbarang ORDER BY id_barang");
                      while($r=mysql_fetch_array($hpp)){
                        echo "<option value='$r[kd_barang]|$r[hpp]'>$r[kd_barang] - $r[hpp]</option>";
                         // echo "<input type='hidden' value=$r[hpp] name='hpp'/>";
                      }
                      echo "</select></td>
                    </tr>
                    <tr>
                      <td colspan=2>
                        <input class=\"btn btn-primary\" type=submit value=Update>
                        <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td>
                    </tr>
                </table>
              </form>
            </div>";
      break;  
    
    case "caripenjualan":
      $field=$_POST['field'];
      $keyword=$_POST['keyword'];
      $tampil4 = mysql_query("SELECT * FROM penjualan WHERE $field LIKE '%$keyword' ");
      echo "
            <div class=\"col-md-12\">
              <h2>Cari Penjualan</h2>
              Field: $field - keyword: $keyword
              <table id='example1' class='table table-bordered table-hover'>
                <tr>
                  <th>No</th>
                  <th>ID Penjualan</th>
                  <th>Tanggal Penjualan</th>
                  <th>Quantity</th>
                  <th>Kode Dispenser</th>
                  <th>Kode Barang</th>
                  <th><center>Proses</th>
                </tr>"; 
              $no=1;
              while ($r4=mysql_fetch_array($tampil4)){
                 echo "
                 <tr>
                  <td>$no</td>
                  <td>$r4[id_penjualan]</td>
                  <td>$r4[tgl_penjualan]</td>
                  <td>".number_format($r4['qty'])."</td>
                  <td>$r4[kd_dispenser]</td>
                  <td>$r4[kd_barang]</td>
                  <td><center>
                       <a href=?module=penjualandetail&id=$r4[id_penjualan]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                       <a href=?module=penjualan&act=editpenjualan&id=$r4[id_penjualan]><a href=?module=penjualan&act=editpenjualan&id=$r4[id_penjualan]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                       <a href=$aksi?module=penjualan&act=hapus&id=$r4[id_penjualan]><span class=\"glyphicon glyphicon-remove\"></span></center>
                  </td>
                 </tr>";
                $no++;
              }
              echo "</table>
            </div>";
      break;    
      
  }
}
?>
