<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  $aksi="modul/mod_operator/aksi_operator.php";
  //pemanggilan database
  switch($_GET['act']){
    // Tampil Operator
    default:
      if ($_SESSION['leveluser']=='admin'){
        $tampil = mysql_query("SELECT * FROM operator ORDER BY level");
        echo "
              <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
                <h2>Operator</h2>
                <input class='btn btn-primary' input type=button value='Tambah Operator' onclick=\"window.location.href='?module=operator&act=tambahoperator';\">
              </div>";   
      }
      else{
        $tampil=mysql_query("SELECT * FROM operator WHERE username='$_SESSION[namauser]'");
        echo "
              <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
                <h2>Operator</h2>
              </div>";
      }
      
      echo "
            <div class=\"col-md-12\">
          		<table id='example1' class='table table-bordered table-hover'>
          			<tr>
          				<th>No</th>
                  <th>Username</th>
                  <th>Nama Lengkap</th>
                  <th>Level</th>
                  <th>Telp</th>
          				<th><center>Proses</th>
                </tr>"; 
          				$no=1;
          				while ($r=mysql_fetch_array($tampil)){
          					echo "
          						<tr>
          							<td>$no</td>
          							<td>$r[username]</td>
          							<td>$r[nama]</td>
          							<td>$r[level]</td>
          							<td>$r[telp]</td>
          							<td><center>
          								<a href=?module=operator&act=detailoperator&id=$r[id_operator]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                          <a href=?module=operator&act=editoperator&id=$r[id_operator]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
          								<a href=$aksi?module=operator&act=hapus&id=$r[id_operator]><span class=\"glyphicon glyphicon-remove\"></span></center>
          							</td>
          						</tr>";
          						$no++;
          				}
              echo "
          		</table>
            </div>";
      break;
    
    case "tambahoperator":
      if ($_SESSION['leveluser']=='admin'){
          
      echo "
            <div class=\"col-md-12\">
              <h2>Tambah Operator</h2>
              <form method=POST action='$aksi?module=operator&act=input'>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Nama Lengkap</td><td><input class=\"form-control\" type=text name='nama'></td></tr>   
                  <tr><td>Alamat</td><td><textarea class=\"form-control\" name='alamat' cols='50' rows='5'></textarea></td></tr>            
                  <tr><td>Kota</td><td><input class=\"form-control\" type=text name='kota' ></td></tr> 
                  <tr><td>No.Telp/HP</td><td><input class=\"form-control\" type=text name='telp'></td></tr> 
                  <tr><td>Cabang</td><td><select name='cabang' class=\"form-control\"><option value=''> - Nama Cabang - </option>"; 
        					$tampil_cabang=  mysql_query("SELECT * FROM cabang");
                  while($d =  mysql_fetch_array($tampil_cabang)){
                      echo "<option value='$d[0]'>$d[1]</option>";
                  }
                  echo "</select>
                  </td></tr>
                  <tr><td>Atasan</td><td><select name='atasan' class=\"form-control\"><option value=''> - Nama Atasan - </option>"; 
        					$tampil_atasan=  mysql_query("SELECT * FROM operator ORDER BY level");		
                  while($a=  mysql_fetch_array($tampil_atasan)){
                      echo "<option value='$a[id_operator]'>$a[nama] | $a[level] | $a[id_cabang]</option>";
                  }
                  echo "</select>
                  </td></tr>
                  <tr><td colspan=2><h3><span class=\"label label-warning\">PENTING UNTUK DIISI</span></center></td></tr>
                  <tr><td>Username</td><td><input class=\"form-control\" type=text name='username'></td></tr>
                  <tr><td>Password</td><td><input class=\"form-control\" type=text name='password'></td></tr>
                  <tr><td>Level</td><td>  
        					<select name='level' class=\"form-control\">
        						<option value=''> - Level Operator - </option>
        						<option value='sales'>Sales</option>
        						<option value='supervisor'>Supervisor</option>
        						<option value='manager'>Manager</option>
        						<option value='gm'>General Manager</option>
        						<option value='director'>Director</option>
                  </select>
                  </td></tr>		  
                  <tr><td>E-mail</td><td><input class=\"form-control\" type=text name='email'></td></tr>
        					<tr><td>Foto</td><td><input class=\"form-control\" type=file name='foto'></td></tr>
                  <tr><td colspan=2>
                          <input class=\"btn btn-primary\" type=submit value=Simpan>
                          <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
      }
      else{
        echo "Anda tidak berhak mengakses halaman ini.";
      }
       break;
      
    case "editoperator":
      $edit=mysql_query("SELECT * FROM operator WHERE id_operator='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      if ($_SESSION['leveluser']=='admin'){
      echo "
            <div class=\"col-md-12\">
              <h2>Edit Operator</h2>
              <form method=POST action=$aksi?module=operator&act=update>
              <input type=hidden name=id value='$r[id_operator]'>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Nama Lengkap</td><td><input class=\"form-control\" type=text name='nama' value='$r[nama]'></td></tr>  
                  <tr><td>Alamat</td><td><textarea class=\"form-control\" name='alamat' cols='50' rows='5'>$r[alamat]</textarea></td></tr>            
                  <tr><td>Kota</td><td><input class=\"form-control\" type=text name='kota' value='$r[kota]'></td></tr> 
                  <tr><td>No.Telp/HP</td><td><input class=\"form-control\" type=text name='telp' value='$r[telp]'></td></tr>  
                  <tr><td>Cabang</td><td><select name='cabang' class=\"form-control\" disabled><option value=''> - nama cabang - </option>"; 
                  while($d=  mysql_fetch_array($tampil_cabang)){
                      echo "<option value='$d[0]'";
                      if($d[0]==$r[5]) echo "selected";
                      echo ">$d[1]</option>";
                  }
                  echo "</select>
                  </td></tr>
                  <tr><td>Atasan</td><td><input class=\"form-control\" type=text name='atasan' value='$r[id_atasan]' disabled></td></tr> 
                  <tr><td>Jabatan</td><td><input class=\"form-control\" type=text name='jabatan' value='$r[jabatan]' disabled></td></tr> 
                  <tr><td>Username</td><td><input class=\"form-control\" type=text name='username' value='$r[username]' disabled></td></tr>
                  <tr><td>Password</td><td><input class=\"form-control\" type=text name='password'></td></tr>
                  <tr><td>Level</td><td><input class=\"form-control\" type=text name='level' value='$r[level]' disabled></td></tr>
                  <tr><td>E-mail</td><td><input class=\"form-control\" type=text name='email' value='$r[email]'></td></tr>";
                    if ($r['blokir']=='N'){
                      echo "<tr><td>Blokir</td><td><input type=radio name='blokir' value='Y' disabled> Y   
                                                   <input type=radio name='blokir' value='N' checked disabled> N </td></tr>";
                    }
                    else{
                      echo "<tr><td>Blokir</td><td><input type=radio name='blokir' value='Y' checked disabled> Y  
                                                   <input type=radio name='blokir' value='N' disabled> N </td></tr>";
                    }
                  echo "
              		<tr><td>Foto</td><td><img src='foto/$r[foto]' disabled></td></tr> 
              		<tr>
              	       <td colspan=2>
              		              <input class=\"btn btn-primary\" type=submit value=Update>
                                <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()>
            			     </td>
                  </tr>
                </table>
              </form>
            </div>";
        }
        else{
        echo "
    		<h2>Edit Operator</h2>
        <form method=POST action=$aksi?module=operator&act=update>
    			<input type=hidden name=id value='$r[id_operator]'>
    				<table id='example1' class='table table-bordered table-striped'>
    					<tr><td>Nama</td><td><input class=\"form-control\" type=text name='nama' value='$r[nama]'> </td></tr>
    					<tr><td>Alamat</td><td><textarea class=\"form-control\" name='alamat' cols='50' rows='5'>$r[alamat]</textarea></td></tr> 
    					<tr><td>Kota</td><td><input class=\"form-control\" type=text name='kota' value='$r[kota]' > </td></tr>
              <tr><td>Username</td><td><input class=\"form-control\" type=text name='username' value='$r[username]' disabled> **)</td></tr>
              <tr><td>Password</td><td><input class=\"form-control\" type=password name='password'> *) </td></tr>
              <tr><td>E-mail</td><td><input class=\"form-control\" type=text name='email' value='$r[email]'></td></tr>
              <tr><td>No.Telp/HP</td><td><input class=\"form-control\" type=text name='telp' value='$r[telp]'></td></tr>
    					<tr><td>Foto</td><td><img src='foto/$r[foto]'></td></tr> 					
              <tr><td colspan=2>
                              <input class=\"btn btn-primary\" type=submit value=Update>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table></form>";     
        }
      break;  

      case "detailoperator":
      $edit=mysql_query("SELECT * FROM operator WHERE id_operator='$_GET[id]'");
      $r=mysql_fetch_array($edit);

      if ($_SESSION['leveluser']=='admin'){
      echo "
            <div class=\"col-md-12\">
              <h2>Detail Operator</h2>
              <input type=hidden name=id value='$r[id_operator]'>
                <table id='example1' class='table table-bordered table-hover'>
                  <tr><td>Nama Lengkap</td><td>$r[nama]</td></tr>  
                  <tr><td>Alamat</td><td>$r[alamat]</td></tr>            
                  <tr><td>Kota</td><td>$r[kota]</td></tr> 
                  <tr><td>No.Telp/HP</td><td>$r[telp]</td></tr> 
                  <tr><td>Cabang</td><td>$r[id_cabang]</td></tr>
                  <tr><td>Atasan</td><td>$r[id_atasan]</td></tr> 
                  <tr><td>Username</td><td>$r[username]</td></tr>
                  <tr><td>Password</td><td>$r[password]</td></tr>
                  <tr><td>Level</td><td>$r[level]</td></tr>
                  <tr><td>E-mail</td><td>$r[email]</td></tr>
                  <tr><td>Blokir</td><td>$r[blokir]</td></tr>
                  <tr><td>Foto</td><td><img src='foto/$r[foto]'></td></tr> 
                  <tr>
                     <td colspan=2>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()>
                     </td>
                  </tr>
                </table>
              </form>
            </div>";
        }
      break;  
  }
}
?>
