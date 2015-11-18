<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  $aksi="modul/mod_order/aksi_order.php";
  switch($_GET['act']){
    // Tampil Sub Menu
    default:
      echo "
            <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
          		<h2>Order Penjualan</h2>
              <input type=button class='btn btn-primary' value='Tambah Order' onclick=\"window.location.href='?module=order&act=tambahorder';\">
                <table id='example1' class='table table-bordered table-hover' style='margin-top:10px;'>
                  <tr>
                    <th>No</th>
                    <th>ID Pelanggan</th>
                    <th>Tanggal Order</th>
                    <th>Status</th>
                    <th><center>Proses</th>
                  </tr>";
                  $tampil = mysql_query("SELECT * FROM orders ORDER BY id_orders DESC");
                  $no = 1;
                  while($r=mysql_fetch_array($tampil)){
                    echo "
                    			<tr>
                    				<td>$no</td>
                            <td>$r[id_pelanggan]</td>
                            <td>$r[tanggal_orders]</td>
                            <td>$r[status]</td>
                    		    <td><center>
                    					<a href=?module=order&act=detailorder&id=$r[id_orders]><span class=\"glyphicon glyphicon-search\"></span>&nbsp;&nbsp;&nbsp;
                    					<a href=?module=order&act=editorder&id=$r[id_orders]><span class=\"glyphicon glyphicon-pencil\"></span>&nbsp;&nbsp;&nbsp;
                    		      <a href=$aksi?module=order&act=hapus&id=$r[id_orders]><span class=\"glyphicon glyphicon-remove\"></span></center>
                    				</center>	
                    		  </tr>";
                    $no++;
                }
          echo "</table>";
    break;
    
    case "tambahorder":
      echo "
            <div class=\"col-md-12\">
          		<h2>Tambah Order</h2>
              <form method=POST action='$aksi?module=order&act=input'>
                <table id='example1' class='table table-bordered table-striped'>
                  <tr><td>Nama Pelanggan</td><td>  
                    <select name='id_pelanggan' class=\"form-control\">
                      <option value=0 selected>- Pilih Pelanggan -</option>";
                      $tampil=mysql_query("SELECT * FROM pelanggan ORDER BY nama");
                      while($r=mysql_fetch_array($tampil)){
                        echo "<option value=$r[id_pelanggan]>$r[nama]</option>";
                      }
          						echo "</select></td>
          				</tr>
                  <tr><td>Tanggal Order</td><td><input class=\"form-control\" type=text name='tanggal_orders'></td></tr>
          				<tr><td>Status Order</td><td><input class=\"form-control\" type=text name='status' value='Baru'></td></tr>
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
      
    case "editorder":
      $edit = mysql_query("SELECT * FROM orders WHERE id_orders='$_GET[id]'");
      $r    = mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
          		<h2>Edit Order</h2>
              <form method=POST action=$aksi?module=order&act=update>
          			<input type=hidden name=id value=$r[id_orders]>
                <table id='example1' class='table table-bordered table-striped'>
          				<tr>
                    <tr><td>Nama Pelanggan</td><td><select name='id_pelanggan' class=\"form-control\">";
                    $tampil=mysql_query("SELECT * FROM pelanggan ORDER BY nama");
                    if ($r['id_pelanggan']==0){
                      echo "<option value=0 selected>- Pilih Pelanggan -</option>";
                    }   

                    while($w=mysql_fetch_array($tampil)){
                      if ($r['id_pelanggan']==$w['id_pelanggan']){
                        echo "<option value=$w[id_pelanggan] selected>$w[nama]</option>";
                      }
                      else{
                        echo "<option value=$w[id_pelanggan]>$w[nama]</option>";
                      }
                    }
          				echo "
          				</select></td>
          				</tr>
                    <tr><td>Tanggal Order</td><td><input class=\"form-control\" type=text name='tanggal_orders' value='$r[tanggal_orders]'></td></tr>
          					<tr><td>Status</td><td><input class=\"form-control\" type=text name='status' value='$r[status]'></td></tr>
                    <tr><td colspan=2>
                    						<input class=\"btn btn-primary\" type=submit value=Update>
                                <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
          		</form>
            </div>";
    break;  

    case "detailorder":
      $edit = mysql_query("SELECT * FROM orders WHERE id_orders='$_GET[id]'");
      $r    = mysql_fetch_array($edit);

      echo "
            <div class=\"col-md-12\">
              <h2>Detail Order</h2>
                <input type=hidden name=id value=$r[id_orders]>
                <table id='example1' class='table table-bordered table-hover'>
                  <tr><tr><td>Nama Pelanggan</td><td>$r[id_pelanggan]</td></tr>
                  <tr><td>Tanggal Order</td><td>$r[tanggal_orders]</td></tr>
                  <tr><td>Status</td><td>$r[status]</td></tr>
                  <tr><td colspan=2>
                              <input class=\"btn btn-danger\" type=button value=Batal onclick=self.history.back()></td></tr>
                </table>
              </form>
            </div>";
    break;
  }
}
?>
