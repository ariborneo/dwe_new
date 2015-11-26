<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_dealer/aksi_dealer.php";
//pemanggilan database
switch($_GET['act']){
  // Tampil User
  default:
    if ($_SESSION['leveluser']=='admin'){
      $tampil = mysql_query("SELECT * FROM dealer ORDER BY id_dealer");
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
              <h2>Dealer</h2>
              <input class='btn btn-primary' type=button value='Tambah Dealer' onclick=\"window.location.href='?module=dealer&act=tambahdealer';\">";
    }
    echo "<table id='example1' class='table table-bordered table-hover' style='margin-top:10px'>
            <tr>
              <th>No</th>
              <th>ID | Nama Dealer</th>
              <th>Alamat</th>
              <th>Kota</th>
              <th>No.Telp</th>
              <th><center>Proses</th>
            </tr>"; 
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
       echo "<tr><td>$no</td>
             <td>$r[0] | $r[1]</td>
             <td>$r[2]</td>
             <td>$r[3]</td>
             <td align=right>$r[4]</td>
             <td><center>
                <a href=?module=dealer&act=detaildealer&id=$r[id_dealer]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                <a href=?module=dealer&act=editdealer&id=$r[id_dealer]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                <a href=$aksi?module=dealer&act=hapus&id=$r[id_dealer]><span class=\"glyphicon glyphicon-remove\"></span></center>";
      $no++;
    }
    echo "</table>";
    break;
  
  case "tambahdealer":
    if ($_SESSION['leveluser']=='admin'){
        
    echo "
          <div class=\"col-md-12\">
            <h2>Tambah Dealer</h2>
            <form method=POST action='$aksi?module=dealer&act=input'>
              <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Nama Dealer</td><td><input class=\"form-control\" type=text name='nama_dealer'></td></tr>
                <tr><td>Alamat</td><td><input class=\"form-control\" type=text name='alamat'></td></tr>            
                <tr><td>Kota</td><td><input class=\"form-control\" type=text name='kota' ></td></tr> 
                <tr><td>No.Telp/HP</td><td><input class=\"form-control\" type=text name='telp'></td></tr> 
                <tr><td>Fax</td><td><input class=\"form-control\" type=text name='fax' ></td></tr> 
                <tr><td>Seles Manager</td><td><input class=\"form-control\" type=text name='seles'></td></tr> 
                <tr><td>Service Manager</td><td><input class=\"form-control\" type=text name='service'></td></tr> 
                <tr><td>NPWP</td><td><input class=\"form-control\" type=text name='npwp'></td></tr> 
                <tr><td colspan=2>
                            <input class=\"btn btn-primary\" type=submit value=Simpan>
                            <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>";
    }
    else{
      echo "Anda tidak berhak mengakses halaman ini.";
    }
     break;
    
  case "editdealer":
    $edit=mysql_query("SELECT * FROM dealer WHERE id_dealer='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    if ($_SESSION['leveluser']=='admin'){
    echo "
          <div class=\"col-md-12\">
            <h2>Edit Dealer</h2>
            <form method=POST action=$aksi?module=dealer&act=update>
            <input type=hidden name=id value='$r[0]'>
              <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Nama Dealer</td><td><input class=\"form-control\" type=text name='nama_dealer' value='$r[1]'></td></tr>
                <tr><td>Alamat</td><td><input class=\"form-control\" type=text name='alamat value='$r[2]'></td></tr>            
                <tr><td>Kota</td><td><input class=\"form-control\" type=text name='kota'  value='$r[3]'></td></tr> 
                <tr><td>No.Telp/HP</td><td><input class=\"form-control\" type=text name='telp' value='$r[4]'></td></tr> 
                <tr><td>Fax</td><td><input class=\"form-control\" type=text name='fax' value='$r[5]'></td></tr> 
                <tr><td>Seles Manager</td><td><input class=\"form-control\" type=text name='seles' value='$r[6]'></td></tr> 
                <tr><td>Service Manager</td><td><input class=\"form-control\" type=text name='service' value='$r[7]'></td></tr> 
                <tr><td>NPWP</td><td><input class=\"form-control\" type=text name='npwp' value='$r[8]'></td></tr> 
                <tr><td colspan=2>
                            <input class=\"btn btn-primary\" type=submit value=Update>
                            <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
            </form>";     
    }
    else{
    echo "Anda tidak punya hak akses untuk merubah";     
    }
    break;  

    case "detaildealer":
    $edit=mysql_query("SELECT * FROM dealer WHERE id_dealer='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    if ($_SESSION['leveluser']=='admin'){
    echo "
          <div class=\"col-md-12\">
            <h2>Detail Dealer</h2>
            <input type=hidden name=id value='$r[0]'>
               <table id='example1' class='table table-bordered table-hover'>
                <tr><td>Nama Dealer</td><td>$r[1]</td></tr>
                <tr><td>Alamat</td><td>$r[2]</td></tr>            
                <tr><td>Kota</td><td>$r[3]</td></tr> 
                <tr><td>No.Telp/HP</td><td>$r[4]</td></tr> 
                <tr><td>Fax</td><td>$r[5]</td></tr> 
                <tr><td>Seles Manager</td><td>$r[6]</td></tr> 
                <tr><td>Service Manager</td><td>$r[7]</td></tr> 
                <tr><td>NPWP</td><td>$r[8]</td></tr> 
                <tr><td colspan=2>
                            <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>";     
    }
    else{
    echo "Anda tidak punya hak akses untuk merubah";     
    }
    break;  
}
}
?>
