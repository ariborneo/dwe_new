<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_submenu/aksi_submenu.php";
switch($_GET['act']){
  // Tampil Sub Menu
  default:
    echo "
		      <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
            <h2>Sub Menu</h2>
            <input type=button class='btn btn-primary' value='Tambah Sub Menu' onclick=\"window.location.href='?module=submenu&act=tambahsubmenu';\">
        		<br><br>
            <table id='example1' class='table table-bordered table-hover'>
              <tr>
                <th>No</th>
                <th>Sub Menu</th>
                <th>Menu Utama</th>
                <th>Link</th>
                <th>Urutan</th>
                <th>Level</th>
                <th><center>Proses</th>
              </tr>";
              $tampil = mysql_query("SELECT * FROM submenu,mainmenu WHERE submenu.id_main=mainmenu.id_main ORDER BY submenu.id_main");
              $no = 1;
              while($r=mysql_fetch_array($tampil)){
                echo "
          			<tr>
          				<td>$no</td>
                  <td>$r[nama_sub]</td>
                  <td>$r[nama_menu]</td>
                  <td>$r[link_sub]</td>
          				<td>$r[urutan]</td>
          				<td>$r[level]</td>
          		    <td><center>
                    <a href=?module=submenu&act=detailsubmenu&id=$r[id_sub]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
          					<a href=?module=submenu&act=editsubmenu&id=$r[id_sub]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
          		      <a href=$aksi?module=submenu&act=hapus&id=$r[id_sub]><span class=\"glyphicon glyphicon-remove\"></span></center>
          				</center>	
          		  </tr>";
                $no++;
              }
    echo "  </table>
          </div>";
    break;
  
  case "tambahsubmenu":
    echo "
        	<div class=\"col-md-12\">
          	<h2>Tambah Sub Menu</h2>
            <form method=POST action='$aksi?module=submenu&act=input'>
              <table id='example1' class='table table-bordered table-striped'>
                <tr><td>Sub Menu</td><td><input class=\"form-control\" type=text name='nama_sub'></td></tr>
                <tr><td>Menu Utama</td><td>  
                  <select name='menu_utama' class=\"form-control\">
                    <option value=0 selected>- Pilih Menu Utama -</option>";
                    $tampil=mysql_query("SELECT * FROM mainmenu ORDER BY nama_menu");
                    while($r=mysql_fetch_array($tampil)){
                      echo "<option value=$r[id_main]>$r[nama_menu]</option>";
                    }
        						echo "</select></td>
        				</tr>
                <tr><td>Link Sub Menu</td><td><input class=\"form-control\" type=text name='link_sub'></td></tr>
        				<tr><td>Urutan</td><td><input class=\"form-control\" type=text name='urutan'></td></tr>
        				<tr><td>Level</td><td><input class=\"form-control\" type=text name='level'></td></tr>
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
    
  case "editsubmenu":
    $edit = mysql_query("SELECT * FROM submenu WHERE id_sub='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "
        	<div class=\"col-md-12\">
          	<h2>Edit Sub Menu</h2>
            <form method=POST action=$aksi?module=submenu&act=update>
        			<input type=hidden name=id value=$r[id_sub]>
              <table id='example1' class='table table-bordered table-striped'>
        				<tr><td>Sub Menu</td><td><input class=\"form-control\" type=text name='nama_sub' value='$r[nama_sub]'></td></tr>
                <tr><td>Menu Utama</td><td><select name='menu_utama' class=\"form-control\">";
                  $tampil=mysql_query("SELECT * FROM mainmenu ORDER BY nama_menu");
                  if ($r[id_main]==0){
                    echo "<option value=0 selected>- Pilih Menu Utama -</option>";
                  }   

                  while($w=mysql_fetch_array($tampil)){
                    if ($r[id_main]==$w[id_main]){
                      echo "<option value=$w[id_main] selected>$w[nama_menu]</option>";
                    }
                    else{
                      echo "<option value=$w[id_main]>$w[nama_menu]</option>";
                    }
                  }
        				echo "
        				</select></td>
        				</tr>
                <tr><td>Link Sub Menu</td><td><input class=\"form-control\" type=text name='link_sub' value='$r[link_sub]''></td></tr>
      					<tr><td>Urutan</td><td><input class=\"form-control\" type=text name='urutan' value='$r[urutan]'></td></tr>
      					<tr><td>Level</td><td><input class=\"form-control\" type=text name='level' value='$r[level]'></td></tr>
                <tr><td colspan=2>
      						<input class=\"btn btn-primary\" type=submit value=Update>
                  <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
        		</form>
          </div>";
  break; 

  case "detailsubmenu":
    $edit = mysql_query("SELECT * FROM submenu WHERE id_sub='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "
          <div class=\"col-md-12\">
            <h2>Detail Sub Menu</h2>
              <input type=hidden name=id value=$r[id_sub]>
              <table id='example1' class='table table-bordered table-hover'>
                <tr><td>Sub Menu</td><td>$r[nama_sub]</td></tr>
                <tr><td>Menu Utama</td><td><select name='menu_utama' class=\"form-control\" disabled>";
                  $tampil=mysql_query("SELECT * FROM mainmenu ORDER BY nama_menu");
                  if ($r[id_main]==0){
                    echo "<option value=0 selected>- Pilih Menu Utama -</option>";
                  }   

                  while($w=mysql_fetch_array($tampil)){
                    if ($r[id_main]==$w[id_main]){
                      echo "<option value=$w[id_main] selected>$w[nama_menu]</option>";
                    }
                    else{
                      echo "<option value=$w[id_main]>$w[nama_menu]</option>";
                    }
                  }
                echo "
                </select></td>
                </tr>
                <tr><td>Link Sub Menu</td><td>$r[link_sub]</td></tr>
                <tr><td>Urutan</td><td>$r[urutan]</td></tr>
                <tr><td>Level</td><td>$r[level]</td></tr>
                <tr><td colspan=2>
                  <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
              </table>
          </div>";
  break;   
  
  }
}
?>
