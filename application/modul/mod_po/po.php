<?php
// session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
        <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
date_default_timezone_set('Asia/Jakarta');
$tanggal= mktime(date("m"),date("d"),date("Y"));
$tglsekarang = date("Y-m-d", $tanggal);
//echo $tglsekarang;
$aksi="modul/mod_po/aksi_po.php";
switch($_GET['act']){
  // Tampil Sub Menu
  default:
    echo "
          <div class=\"col-md-12\" style=\"margin-bottom:10px;\">
        		<h2>Pembelian Barang</h2>
            <input type=button class='btn btn-primary' value='Tambah Purchase Order' onclick=\"window.location.href='?module=po&act=tambahpo';\">
            <table id='example1' class='table table-bordered table-hover' style='margin-top:10px'>
              <tr>
                <th>No</th>
                <th>No. PO</th>
                <th>Nama Supplier</th>
                <th>Tanggal PO</th>
                <th>S1</th>
                <th><center>Proses</th>
              </tr>";
            $tampil = mysql_query("SELECT * FROM po ORDER BY id_po DESC");
            $no = 1;
            while($r=mysql_fetch_array($tampil)){
              echo "
        			<tr>
        				<td>$no</td>
                <td>$r[id_po]</td>";
            $tampilsup=mysql_query("SELECT * FROM supplier WHERE id_supplier='$r[id_supplier]'");
            while($rs=mysql_fetch_array($tampilsup)){
              $namasup=$rs['nama'];
            }
              echo"
                <td>$namasup</td>
                <td>$r[tgl_po]</td>
                <td>$r[s1]</td>
        		    <td><center>
              <a href='modul/mod_podetail/pofakturdetail.php?id=$r[id_po]'><image src='images/print.png'></a>&nbsp&nbsp";
                  
                if ($r['s1']!='Y'){
                  echo"<a href=?module=podetail&id=$r[id_po]><img src='images/aktif.png'></a> &nbsp&nbsp 
                  <a href=?module=po&act=editpo&id=$r[id_po]><img src='images/edit.png'></a> &nbsp&nbsp 
                  <a href=$aksi?module=po&act=hapus&id=$r[id_po]><img src='images/delete.png'></a></center>";
                  
                }  
        					
        				echo "</center></td>	
        		  </tr>";
              $no++;
            }
            echo "</table>";
    break;
  
  case "tambahpo":
    echo "
		<h2>Tambah Purchase Order</h2>
    <form method=POST action='$aksi?module=po&act=input'>
      <table id='example1' class='table table-bordered table-striped'>
          <tr><td>Nama Supplier</td>  <td>  
          <select name='id_supplier'>
            <option value=0 selected>- Pilih Supplier -</option>";
            $tampil=mysql_query("SELECT * FROM supplier ORDER BY nama");
            while($r=mysql_fetch_array($tampil)){
              echo "<option value=$r[id_supplier]>$r[nama]</option>";
            }
						echo "</select></td>
				</tr>
        <tr><td>Tanggal PO</td><td>  <input type=text name='tgl_po' value='$tglsekarang'></td></tr>
        <tr>
					<td colspan=2>
						<input type=submit value=Simpan>
            <input type=button value=Batal onclick=self.history.back()>
						</td>
					</tr>
      </table>
		</form>";
  break;
    
  case "editpo":
    $edit = mysql_query("SELECT * FROM po WHERE id_po='$_GET[id]'");
    $r    = mysql_fetch_array($edit);

    echo "
		<h2>Edit Purchase Order</h2>
    <form method=POST action=$aksi?module=po&act=update>
		      <table id='example1' class='table table-bordered table-striped'>
				<tr>
          <tr><td>Nama Supplier</td>  <td>  <select name='nama_pelanggan'>";
 
          $tampil=mysql_query("SELECT * FROM supplier ORDER BY nama");
          if ($r[id_supplier]==0){
            echo "<option value=0 selected>- Pilih Supplier -</option>";
          }   

          while($w=mysql_fetch_array($tampil)){
            if ($r[id_pelanggan]==$w[id_supplier]){
              echo "<option value=$w[id_sipplier] selected>$w[nama]</option>";
            }
            else{
              echo "<option value=$w[id_supplier]>$w[nama]</option>";
            }
          }
				echo "
				</select></td>
				</tr>
          <tr><td>Tanggal Purchase Order</td><td>  <input type=text name='tgl_po' value='$r[tgl_po]' size='40'></td></tr>
          <tr><td colspan=2>
						<input type=submit value=Update>
            <input type=button value=Batal onclick=self.history.back()></td></tr>
         </table>
			</form>";
  break;  
}
}
?>
