<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  $aksi="modul/mod_dispenser/aksi_dispenser.php";
  switch($_GET['act']){
    // Tampil DIspenser
    default:
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
          		<h2>Dispenser</h2>
              <input class='btn btn-primary' type=button value='Tambah Dispenser' onclick=\"window.location.href='?module=dispenser&act=tambahdispenser';\">
              <table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
                <tr>
                  <th>No</th>
                  <th>ID Pompa</th>
                  <th>ID Tangki</th>
                  <th>Kode Despenser</th>
                  <th>Nama Dispenser</th>
                  <th><center>Proses</th>
                </tr>"; 
              $tampil=mysql_query("SELECT * FROM dispenser ORDER BY id_dispenser DESC");
              $no=1;
              while ($r=mysql_fetch_array($tampil)){
                 echo "<tr>
                          <td>$no</td>
                          <td>$r[id_pompa]</td>
                           <td>$r[id_tangki]</td>
                           <td>$r[kd_dispenser]</td>
              						 <td>$r[nama_dispenser]</td>
                           <td><center>
                            <a href=?module=dispenser&act=detaildispenser&id=$r[id_dispenser]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
              							<a href=?module=dispenser&act=editdispenser&id=$r[id_dispenser]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
              							<a href=$aksi?module=dispenser&act=hapus&id=$r[id_dispenser]><span class=\"glyphicon glyphicon-remove\"></span></center>
                           </td>
                        </tr>";
                $no++;
              }
        echo "</table>
              <div class=\"alert alert-danger\" role=\"alert\">
                <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
                <span class=\"sr-only\">Error:</span>
                  Data pada Dispenser tidak bisa dihapus, tapi bisa di non-aktifkan melalui Edit Dispenser.
              </div>
            </div>";
      break;
    
    // Form Tambah Dispenser
    case "tambahdispenser":
      echo "
            <div class=\"col-md-12\">
              <h2>Tambah Dispenser</h2>
              <form method=POST action='$aksi?module=dispenser&act=input'>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>ID Pompa</td><td>
                  <select name='id_pompa' class=\"form-control\"> 
                    <option value=0 selected>- Pilih ID Pompa -</option>";
                    $tampil=mysql_query("SELECT * FROM pompa ORDER BY id_pompa");
                    while($r=mysql_fetch_array($tampil)){
                      echo "<option value=$r[id_pompa]>$r[id_pompa]</option>";
                    }
                    echo "</select></td>
                  </tr>
                  <tr><td>ID Tangki</td><td>
                  <select name='id_tangki' class=\"form-control\"> 
                      <option value=0 selected>- Pilih ID Tangki -</option>";
                      $tampil=mysql_query("SELECT * FROM tangki ORDER BY id_tangki");
                      while($r=mysql_fetch_array($tampil)){
                        echo "<option value=$r[id_tangki]>$r[id_tangki]</option>";
                      }
                      echo "</select></td>
                  </tr>
                  <tr><td>Kode Dispenser</td><td><input class=\"form-control\" type=texr name='kd_dispenser'></td></tr>
                  <tr><td>Nama dispenser</td><td><input class=\"form-control\" type=text name='nama_dispenser'></td></tr>
                  <tr><td colspan=2>
                              <input class=\"btn btn-primary\" type=submit name=submit value=Simpan>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
       break;
    
    // Form Edit Dispenser 
    case "editdispenser":
      $edit=mysql_query("SELECT * FROM dispenser WHERE id_dispenser='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Edit Dispenser</h2>
              <form method=POST action=$aksi?module=dispenser&act=update>
              <input type=hidden name=id value='$r[id_dispenser]'>
                <table id='example1' class='table table-bordered table-striped'>
                <tr><td>ID Pompa</td><td><input class=\"form-control\" type=text name='id_pompa' value='$r[id_pompa]'></td></tr>
                <tr><td>ID Tangki</td><td><input class=\"form-control\" type=text name='id_tangki' value='$r[id_tangki]'></td></tr>
                <tr><td>Kode Dispenser</td><td><input class=\"form-control\" type=text name='kd_dispenser' value='$r[kd_dispenser]'></td></tr>
                <tr><td>Nama Dispenser</td><td><input class=\"form-control\" type=text name='nama_dispenser' value='$r[nama_dispenser]'></td></tr>
                <tr><td colspan=2>
                              <input class=\"btn btn-primary\" type=submit value=Update>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
      break;

      case "detaildispenser":
      $edit=mysql_query("SELECT * FROM dispenser WHERE id_dispenser='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Detail Dispenser</h2>
              <input type=hidden name=id value='$r[id_dispenser]'>
                <table id='example1' class='table table-bordered table-hover'>
                <tr><td>ID Pompa</td><td>$r[id_pompa]</td></tr>
                <tr><td>ID Tangki</td><td>$r[id_tangki]</td></tr>
                <tr><td>Kode Dispenser</td><td>$r[kd_dispenser]</td></tr>
                <tr><td>Nama Dispenser</td><td>$r[nama_dispenser]</td></tr>
                <tr><td colspan=2>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
            </div>";
      break;  
  }
}
?>
