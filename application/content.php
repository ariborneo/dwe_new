<?php
include "config/koneksi.php";
include "config/library.php";
include "config/fungsi_indotgl.php";
include "config/fungsi_combobox.php";
include "config/class_paging.php";
// Bagian Home
if ($_GET['module']=='home'){
	include "home.php";
}


// Bagian User
elseif ($_GET['module']=='users'){
    include "modul/mod_users/users.php";
}

// Bagian Menu Utama
elseif ($_GET['module']=='menuutama'){
    include "modul/mod_menuutama/menuutama.php";
}

// Bagian Sub Menu
elseif ($_GET['module']=='submenu'){
    include "modul/mod_submenu/submenu.php";
}

// Bagian Modul
elseif ($_GET['module']=='modul'){
  if ($_SESSION['leveluser']=='admin'){
    include "modul/mod_modul/modul.php";
  }
}

// Bagian Master Barang
elseif ($_GET['module']=='masterbarang'){
    include "modul/mod_masterbarang/masterbarang.php";
}

// Bagian download
elseif ($_GET['module']=='download'){
    include "modul/mod_download/download.php";
}

// Bagian Model
elseif ($_GET['module']=='model'){
    include "modul/mod_model/model.php";
}

// Bagian pelanggan
elseif ($_GET['module']=='pelanggan'){
    include "modul/mod_pelanggan/pelanggan.php";
}

// Bagian Dealer
elseif ($_GET['module']=='dealer'){
  if ($_SESSION['leveluser']=='admin'){
    include "modul/mod_dealer/dealer.php";
  }
}

elseif ($_GET['module']=='mainmenu'){
    include "modul/mod_mainmenu/mainmenu.php";
}
elseif ($_GET['module']=='submenu'){
    include "modul/mod_submenu/submenu.php";
}
elseif ($_GET['module']=='berita'){
    include "modul/mod_berita/berita.php";
}

elseif ($_GET['module']=='kategori'){
    include "modul/mod_kategori/kategori.php";
}
elseif ($_GET['module']=='album'){
    include "modul/mod_album/album.php";
}
elseif ($_GET['module']=='gallery'){
    include "modul/mod_gallery/gallery.php";
}
elseif ($_GET['module']=='penjualan'){
    include "modul/mod_penjualan/penjualan.php";
}
elseif ($_GET['module']=='produk'){
    include "modul/mod_produk/produk.php";
}
elseif ($_GET['module']=='order'){
    include "modul/mod_order/order.php";
}
elseif ($_GET['module']=='orderdetail'){
    include "modul/mod_orderdetail/orderdetail.php";
}
elseif ($_GET['module']=='cuti'){
    include "modul/mod_cuti/cuti.php";
}
elseif ($_GET['module']=='cutidetail'){
    include "modul/mod_cutidetail/cutidetail.php";
}

elseif ($_GET['module']=='cabang'){
    include "modul/mod_cabang/cabang.php";
}
elseif ($_GET['module']=='stok'){
    include "modul/mod_stok/stok.php";
}
elseif ($_GET['module']=='dispenser'){
    include "modul/mod_dispenser/dispenser.php";
}
elseif ($_GET['module']=='pompa'){
    include "modul/mod_pompa/pompa.php";
}
elseif ($_GET['module']=='tangki'){
    include "modul/mod_tangki/tangki.php";
}
elseif ($_GET['module']=='penjualan'){
    include "modul/mod_penjualan/penjualan.php";
}
elseif ($_GET['module']=='penjualandetail'){
    include "modul/mod_penjualandetail/penjualandetail.php";
}
elseif ($_GET['module']=='operator'){
    include "modul/mod_operator/operator.php";
}
elseif ($_GET['module']=='po'){
    include "modul/mod_po/po.php";
}
elseif ($_GET['module']=='po'){
    include "modul/mod_podetail/podetail.php";
}
// Apabila modul tidak ditemukan
else{
  echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
}
?>
