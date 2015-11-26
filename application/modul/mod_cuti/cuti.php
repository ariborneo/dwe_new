<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_cuti/aksi_cuti.php";
switch($_GET['act']){
  // Tampil Sub Menu
  default:
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
        		<h2>Cuti Karyawan</h2>
            <input type=button class='btn btn-primary' value='Tambah Cuti' onclick=\"window.location.href='?module=cuti&act=tambahcuti';\">
            <table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
              <tr>
                <th>No</th>
                <th>ID Karyawan</th>
                <th>Tanggal Permohonan</th>
                <th>Tujuan Cuti</th>
                <th><center>Proses</th>
              </tr>";
            $tampil = mysql_query("SELECT * FROM cuti order by id_cuti desc");
            $no = 1;
            while($r=mysql_fetch_array($tampil)){
              echo "
        			<tr>
        				<td>$no</td>
                <td>$r[id_user]</td>
                <td>$r[tgl_permohonan]</td>
                <td>$r[tujuan_cuti]</td>
        		    <td><center>
                  <a href=?module=cutidetail&id=$r[id_cuti]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
        					<a href=?module=cuti&act=editcuti&id=$r[id_cuti]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
        		      <a href=$aksi?module=cuti&act=hapus&id=$r[id_cuti]><span class=\"glyphicon glyphicon-remove\"></span></center>
                </td>
        		  </tr>";
              $no++;
            }
      echo "</table>
          </div>";
    break;
  
  case "tambahcuti":
    echo "  
          <div class=\"col-md-12\">
        		<h2>Tambah cuti</h2>
            <form method=POST action='$aksi?module=cuti&act=input'>
              <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Nama User</td><td>  
                  <select name='id_user' class=\"form-control\">
                    <option value=0 selected>- Pilih Pelanggan -</option>";
                    $tampil=mysql_query("SELECT * FROM users ORDER BY nama");
                    while($r=mysql_fetch_array($tampil)){
                      echo "<option value=$r[id_user]>$r[nama]</option>";
                    }
        						echo "</select></td>
        				</tr>
                <tr><td>Tanggal cuti</td><td><input class=\"form-control\" type=text name='tgl_permohonan'></td></tr>
                <tr><td>Tujuan cuti</td><td><input class=\"form-control\" type=text name='tujuan_cuti'></td></tr>
                <tr><td>Nomor Handphone</td><td><input class=\"form-control\" type=text name='hp'></td></tr>
        				<tr><td>Jumlah Cuti(Hari)</td><td><input class=\"form-control\" type=text name='jumlah_cuti'></td></tr>
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
    
  case "editcuti":
    $edit = mysql_query("SELECT * FROM cuti WHERE id_cuti='$_GET[id]'");
    $r    = mysql_fetch_array($edit);
    echo "

          <div class=\"col-md-12\">
        		<h2>Edit cuti</h2>
            <form method=POST action=$aksi?module=cuti&act=update>
        			<input type=hidden name=id value=$r[id_cuti]>
              <table id='example1' class='table table-bordered table-striped'>
        				<tr>
                  <tr><td>Nama Pelanggan</td><td>
                  <select name='id_user' class=\"form-control\">";
                  $tampil=mysql_query("SELECT * FROM users ORDER BY nama");
                  if ($r['id_user']==0){
                    echo "<option value=0 selected>- Pilih Pelanggan -</option>";
                  }   

                  while($w=mysql_fetch_array($tampil)){
                    if ($r['id_user']==$w['id_user']){
                      echo "<option value=$w[id_user] selected>$w[nama]</option>";
                    }
                    else{
                      echo "<option value=$w[id_user]>$w[nama]</option>";
                    }
                  }
        				echo "
        				</select></td>
        				</tr>
                <tr><td>Tanggal cuti</td><td><input class=\"form-control\" type=text name='tgl_permohonan' value='$r[tgl_permohonan]'></td></tr>
                <tr><td>Tujuan cuti</td><td><input class=\"form-control\" type=text name='tujuan_cuti' value='$r[tujuan_cuti]'></td></tr>
                <tr><td>Nomor Handphone</td><td><input class=\"form-control\" type=text name='hp' value='$r[hp]'></td></tr>
                <tr><td>Jumlah Cuti(Hari)</td><td><input class=\"form-control\" type=text name='jumlah_cuti' value='$r[jumlah_cuti]'></td></tr>
                <tr><td colspan=2>
              						<input class=\"btn btn-primary\" type=submit value=Update>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
        		</form>
          </div>";
  break;  
}
}
?>
