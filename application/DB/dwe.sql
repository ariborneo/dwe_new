-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 03:09 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dwe`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `gbr_album`, `aktif`) VALUES
(21, 'Kartun Sonic Atuh', 'kartun-sonic-atuh', '476928sonic.jpg', 'Y'),
(20, 'Pernikahan', 'pernikahan', '146667nikah.jpg', 'Y'),
(18, 'Bayi', 'bayi', '246551silvestree.jpg', 'Y'),
(12, 'Ilustrator', 'ilustrator', '987701family.jpg', 'Y'),
(19, 'Binatang', 'binatang', '391479burung.jpg', 'Y'),
(17, 'Arsitektur', 'arsitektur', '741638arche090.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `anuitas`
--

CREATE TABLE IF NOT EXISTS `anuitas` (
  `id_anu` int(11) NOT NULL AUTO_INCREMENT,
  `bln` int(3) NOT NULL,
  `angke` int(3) NOT NULL,
  `pkk` decimal(12,2) NOT NULL,
  `angpkk` decimal(12,2) NOT NULL,
  `angbng` decimal(12,2) NOT NULL,
  `ang` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id_anu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=138 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `headline`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(76, 23, 'joko', 'Laskar Pelangi Pecahkan Rekor', 'laskar-pelangi-pecahkan-rekor', 'Y', 'Sukses film Laskar Pelangi dalam memecahkan rekor jumlah penonton memberi pembelajaran bahwa penonton film Indonesia bisa menerima inovasi. Mira Lesmana dari Miles Films yang memproduksi film ini mengatakan, sampai Rabu (12/11), pemutaran Laskar Pelangi di 100 layar bioskop di 25 kota menyedot lebih dari 4,4 juta penonton. Padahal, Kamis kemarin, jumlah kota yang memutar film itu bertambah dengan Padang, Tasikmalaya, dan Ambon. Sebelumnya, Ayat-ayat Cinta ditonton 3,7 juta penonton (Kompas, 26/10).<br><br>Jumlah penonton itu belum termasuk penonton layar tancap untuk menjangkau penonton di daerah yang belum memiliki gedung bioskop.<br><br>Menurut Mira, layar tancap di tiga lokasi di Belitung, tempat cerita berlokasi, menyedot penonton lebih dari 60.000 penonton dan di Bangka sekitar 80.000-an orang. Pemutaran layar tancap juga dilakukan di Rantau (Sumatera Utara) dan akan dilakukan di Natuna, Aceh (enam lokasi), Lombok, serta Papua di Timika, Sorong, dan Jayapura.<br><br>Kabar gembira lainnya, film ini menjadi salah satu film yang terpilih untuk menjadi bagian dari Berlin International Film Festival atau Berlinale 2009. Festival ini adalah sebuah peristiwa budaya terpenting di Jerman yang juga adalah salah satu festival film internasional paling bergengsi di dunia.<br><br>Film Laskar Pelangi diangkat dari novel berjudul sama karya Andrea Hirata. Film ini mengangkat realitas sosial masyarakat Belitung, tentang persahabatan, kegigihan dan harapan, dalam bingkai kemiskinan dan ketimpangan kelas sosial.<br><br>"Jumlah penonton dan panjangnya masa pemutaran film sejak 25 September memperlihatkan penonton butuh sesuatu yang baru, yang inovatif, walau yang ditampilkan realitas tidak gemerlap," papar Mira.<br><br>Selama ini, kebanyakan film Indonesia bertema drama cinta, horor, dan komedi, sementara Miles Films dalam empat film terakhirnya menggarap tema realisme sosial-politik.<br><br>Mira mengakui, inovasi itu tidak selalu berhasil secara komersial. Contohnya Gie, juga produksi Miles Films. Meskipun dari sisi kritik film dan kreativitas bagus, tetapi tidak sesukses Laskar Pelangi dalam pemasaran.<br><br>Produksi film ini menghabiskan biaya Rp 9 miliar dan 90 persen dikerjakan di dalam negeri. "Sound mixing dengan sistem Dolby dan transfer optis untuk suara belum bisa dikerjakan di dalam negeri," ujar Mira.<br><br>Miles Films dan para investor, antara lain Mizan Publishing, kini bersiap memproduksi lanjutan Laskar Pelangi. Sang Pemimpi adalah bagian novel tetralogi Andrea Hirata. (sumber: kompas.com)<br>', 'Minggu', '2009-02-01', '14:31:58', '76laskarpelangi.jpg', 12, 'laskar-pelangi'),
(69, 22, 'admin', 'Gelombang Solidaritas untuk Palestina', 'gelombang-solidaritas-untuk-palestina', 'Y', 'Serangan Israel kepada Palestina yang terjadi mulai akhir Desember 2008 silam telah menewaskan hampir seribu nyawa manusia. Warga sipil yang kebanyakan perempuan dan anak-anak menjadi korban keganasan tentara Israel. Warga dunia pun marah. Saat ini, hampir setiap hari sejumlah unjuk rasa mengecam kebiadaban Israel terjadi di seluruh belahan dunia. Kejahatan Israel adalah kejahatan kemanusiaan dan sudah menjadi isu bersama umat manusia.<br><br>Kecaman tidak hanya datang dari umat Islam, tapi juga dari umat agama lain. Lihat saja sejumlah biksu yang tergabung dalam Perwakilan Umat Buddha Indonesia (Walubi), kemudian Persatuan Tionghoa Indonesia serta Dewan Pemuda Kristen Indonesia.<br><br>Mereka semua ikut berpatisipasi dalam aksi solidaritas untuk Palestina yang dilaksanakan di lapangan Monas, Jakarta Ahad (11/1/2009) lalu. Mereka mengutuk kebiadaban Israel. (sumber: sabili.co.id)<br>', 'Sabtu', '2009-01-31', '14:34:18', '11solidaritas.jpg', 12, 'gaza,israel,palestina'),
(78, 2, 'wiro', 'Cristiano Ronaldo Pemain Sepakbola Terbaik 2008', 'cristiano-ronaldo-pemain-sepakbola-terbaik-2008', 'Y', 'Cristiano Ronaldo akhirnya terpilih sebagai Pemain Terbaik Dunia versi FIFA, mengalahkan Lionel Messi (Barcelona), dan Fernando Torres (Liverpool). Penetapan itu diumumkan di Zurich, Swiss, Senin atau Selasa (13/1) dini hari. Ronaldo menjadi pemain pertama dari Premier League yang menerima penghargaan itu. Sebelumnya, dia juga terpilih sebagai Pemain Terbaik Eropa (Ballon d''Or) dan baru saja dinobatkan sebagai Pemain Terbaik Dunia versi suporter.<br><br>Pemain Manchester United (MU) asal Portugal itu meraih 935 pemilih dari poling yang disebar ke seluruh dunia. Pemilihnya hanya dibatasi kapten tim dan pelatih. Hasil itu diumumkan oleh pemain legendaris Brasil, Pele.<br><br>Sementara itu, Lionel Messi berada di tempat kedua. Pemain Barcelona asal Argentina itu meraih 678 suara. Adapun striker Liverpool asal Spanyol, Fernando Torres, berada di tempat ketiga dengan 203 suara.<br><br>Musim lalu, Ronaldo memang tampil bagus. Dia mencetak 42 gol dan membawa Manchester United merebut gelar Premier League dan Liga Champions.<br><br>"Ini momen yang sangat indah buatku. Momen spesial dalam hidupku. Aku ingin mengatakan kepada ibu dan saudara perempuanku bahwa kembang api sudah saatnya disulut," kata Ronaldo seusai menerima penghargaan itu. (sumber: detiksport.com)<br>', 'Senin', '2009-02-02', '14:36:34', '92cristianoronaldo.jpg', 16, 'sepakbola'),
(71, 2, 'admin', 'Ronaldo "CR7" Pecahkan Transfer Termahal', 'ronaldo-cr7-pecahkan-transfer-termahal', 'Y', 'Cristiano Ronaldo segera menjadi pemain termahal dunia, menumbangkan rekor Zinedine Zidane. Agen Ronaldo menyebut bahwa kliennya terikat pra kontrak 91 juta poundsterling dengan Real Madrid. Dengan transfer senilai Rp 1,5 triliun itu, maka CR7 dipastikan akan menjadi pemain termahal dunia. Tapi, itu mungkin baru terealisasi musim depan alias musim panas nanti.<br><br>Sport melansir bahwa Pemain Terbaik Dunia 2008 itu terikat kontrak dengan Madrid untuk jangka panjang. Bahkan, juga disebutkan bahwa agen Ronaldo, Jorge Mendes, akan terkena klausul penalti (penalty clause) 20 juta euro (18 juta pounds) jika Ronaldo tak hadir di Santiago Bernabeu, musim depan.<br><br>Sebelumnya, pemain berusia 23 tahun ini dikabarkan juga terikat kontrak dengan mantan presiden Madrid, Florentino Perez. Ronaldo akan menjadi alat kampanye Perez dalam pemilihan presiden Madrid, pertengahan Juli 2009.<br><br>Rekor pemain termahal dunia kini masih dipegang Zinedine Zidane dengan 46 juta poundsterling pada 2001. Perez juga menjadi aktor di balik kedatangan maestro asal Prancis itu dari Juventus ke Madrid.<br><br>Demikian juga runner up pemain termahal dunia, Luis Figo. Perez membajaknya dari rival bebuyutan Barcelona pada 2000 dengan nilai 38,7 juta pounds. Saat itu, Figo juga jadi alat kampanye Perez. (sumber: vivanews.com)<br>', 'Sabtu', '2009-01-31', '14:41:25', '97cristiano-ronaldo.jpg', 31, 'sepakbola'),
(72, 22, 'admin', 'Belajar Dari Krisis Amerika', 'belajar-dari-krisis-amerika', 'Y', 'Ibarat karena nila setitik, rusak susu sebelanga. Dan di kolam susu inilah tampaknya warga dunia tengah menunggu kapan giliran nila itu datang yang akan benar-benar melumpuhkan sendi perekonomian di negaranya masing-masing, tak terkecuali kita di Indonesia.<br><br>Dan kini kita paham bahwa kondisi yang cukup serius kali ini memang awalnya bermula dari krisis nasional di AS, yang kemudian menyebar dengan cepat ke seluruh dunia. Namun jelas bahwa ia bukanlah penyebab utamanya seperti yang dituding oleh sejumlah media (lihat ''Runtuhnya Pusat Kapitalisme'', Editorial Harian Radar Bogor, 27/09/08).<br><br>Yang menjadi benang merah dari rentetan krisis ini justru adalah penerapan globalisasi dimana roda perekonomian banyak negara di dunia digantungkan. Sebab dalam sistem ekonomi global yang tengah dipraktikkan banyak negara saat ini, krisis yang dialami suatu negara akan menular bak virus ke negara-negara lain, khususnya bila krisis itu bermula dari negara-negara maju dan yang punya otoritas dalam peta perkonomian dunia.<br><br>Meski belum memiliki definisi yang mapan, istilah globalisasi banyak dihubungkan dengan peningkatan keterkaitan dan ketergantungan antarbangsa dan antarmanusia di seluruh dunia dunia melalui perdagangan, investasi, perjalanan, budaya populer, dan bentuk-bentuk interaksi yang lain sehingga batas-batas suatu negara menjadi bias (wikipedia.com).<br><br>Di alam globalisasi inilah, kesalingbergantungan antara negara satu dengan negara lain terjalin begitu kuat. Dengan begitu, sebuah negara yang telah maju diharapkan akan merangsang perekonomian negara-negara yang sedang berkembang lewat sistem pasar bebas yang saling terhubung dan kompetitif. Tak heran bila globalisasi dipercaya akan mampu membawa kemaslahatan pada segenap umat manusia di dunia.<br><br>Sebuah niat yang kedengarannya cukup mulia memang. Dan sejak diterapkan pada era 80-an, globalisasi menjadi sistem ekonomi (mencakup juga aspek sosial, budaya, dan komunikasi) yang populer di banyak negara. Tak terkecuali bagi negara kita tercinta yang kala itu berada di bawah rezim Orde Baru.<br><br>Tapi dengan adanya krisis global ini, untuk pertama kalinya kita disadarkan, betapa sistem globalisasi yang tengah dipraktikkan kebanyakan negara saat ini, ternyata juga berpotensi membawa umat manusia pada krisis berkepanjangan. Ditambah lagi betapa globalisasi ekonomi dunia kian hari kita lihat semu dan banal, yakni di mana triliunan dollar AS diperjualbelikan dan dipermainkan di pasar modal, tetapi hanya sebagian saja diantaranya yang benar-benar menyentuh sektor riil.<br><br>Dengan kondisi kesalingterhubungan dan kesalingbergantungan inilah globalisasi ekonomi menciptakan budaya ekonomi sebagai jaringan terbuka (open network) yang rawan terhadap kemacetan di suatu titik jaringan dan serangan virus ke seluruh jaringan. Serangan virus (semisal kemacetan likuiditas) di sebuah titik jaringan (seperti AS) dengan cepat menjalar ke seluruh jejaring global tanpa ada yang tersisa.<br><br>Maka di titik ini pulalah kita sadar betapa Indonesia sebagai salah satu peserta yang turut serta dalam sistem ekonomi global, cukup rentan terkena dampak krisis ini.<br><br>Sejatinya, krisis global ini memang lebih banyak berpengaruh pada industri keuangan, khususnya pasar modal. Ruang gerak pasar modal itu sendiri belum meluas bagi usaha dan bisnis yang dijalankan bagi kebanyakan masyarakat Indonesia.<br><br>Bisa disimak bahwa roda perekonomian di Kota Bogor sendiri lebih banyak digerakkan oleh sektor riil dan usaha kecil menengah (UKM). Kebanyakan dari mereka menjalankan usaha yang tak memiliki persinggungan langsung dengan investor, juga dikerjakan oleh SDM dari dalam negeri sendiri.<br><br>Karenanya, kita selaku warga Bogor patut menjadikan peristiwa krisis global saat ini sebagai momentum dalam mendukung segenap pelaku bisnis dan UKM kota Bogor. Sebab, sejarah negeri ini telah membuktikan bahwa para pelaku bisnis dan UKM-lah yang mampu bertahan ketika krisis menerpa Indonesia di tahun 1998.<br><br>Dan kepada merekalah kita bisa berharap krisis global kali ini takkan mampir ke Indonesia. (sumber: http://prys3107.blogspot.com/)<br>', 'Sabtu', '2009-01-31', '14:48:09', '44amerika.jpg', 8, 'amerika'),
(74, 19, 'admin', 'Google Chrome Susupi Microsoft', 'google-chrome-susupi-microsoft', 'Y', '<p>\r\nBrowser Microsoft, Internet Explorer (IE), bisa mendominasi karena tersedia secara default pada banyak komputer di pasaran. Google Chrome akan menggoyang dengan menyusup di lahan yang sama. Google rupanya sudah bersiap-siap menawarkan Google Chrome secara default pada komputer-komputer baru. \r\n</p>\r\n<p>\r\nPichai juga menjanjikan Chrome akan keluar dari versi Beta (uji coba) pada awal 2009. \r\nJika Google berhasil menyusupkan Chrome dalam lahan yang selama ini jadi &#39;mainan&#39; Microsoft, lanskap perang browser akan mengalami perubahan. \r\n</p>\r\n<p>\r\nSaat ini Microsoft masih mendominasi pada kisaran 70 persen lewat Internet Explorer-nya, sedangkan Firefox menguasai sekitar 20 persen. (sumber: <a href="http://detikinet.com" target="_blank">detikinet.com</a>)\r\n</p>\r\n', 'Sabtu', '2009-01-31', '13:34:25', '25chrome.jpg', 34, 'browser,google'),
(60, 19, 'admin', 'Digerus Firefox, IE Makin Melempem', 'digerus-firefox-ie-makin-melempem', 'Y', 'Browser Mozilla Firefox sepertinya makin berkibar. Berdasarkan data terbaru dari biro penelitian Net Applications, Firefox menapak naik dengan menguasai 20,78 persen pangsa pasar browser pada bulan November, naik dari angka 19,97 persen di bulan Oktober.<br><br>Dikutip detikINET dari Afterdawn, Selasa (2/1/2/2008), Firefox kemungkinan sukses menggaet user yang sebelumnya mengandalkan browser Internet Explorer (IE) besutan Microsoft. Pasalnya, masih menurut data Net Applications, pangsa pasar IE kini menurun di bawah 70 persen untuk kali pertama sejak tahun 1998. IE sekarang menguasai 69,8 persen pangsa pasar dari sebelumnya 71,3 persen di bulan Oktober.<br><br>Padahal di masa jayanya di tahun 2003, IE pernah begitu dominan dengan menguasai 95 persen pasaran browser. Penurunan pangsa pasar IE ini disinyalir juga terkait musim liburan di AS di mana banyak perusahaan libur. Padahal browser IE banyak dipakai oleh kalangan perusahaan.<br><br>Adapun produk browser lainnya menunjukkan tren peningkatan. Apple Safari kini punya pangsa 7,13 persen dan Google Chrome sebesar 0,83 persen dari yang sebelumnya 0,74 persen. Sementara pangsa pasar Opera mengalami penurunan dari yang sebelumnya 0,75 persen menjadi 0,71 persen saja. (sumber: <a target="_blank" title="http://detikinet.com" href="http://detikinet.com">detikinet.com</a>)<br>', 'Sabtu', '2009-01-31', '13:58:31', '47firefox.jpg', 4, 'browser'),
(61, 22, 'admin', 'Sepatu Melayang Saat Bush Berpidato di Irak', 'sepatu-melayang-saat-bush-berpidato-di-irak', 'Y', 'Apakah pemerintah AS sakit hati karena Presiden Bush ditimpuk sepatu? Sudah pasti. Tapi di Irak, sepatu melayang itu sebagai pamitan terindah untuk Bush. Muntazer Al Zaidi dieluk-elukkan di Irak. Tuntutan masyarakat agar dia dibebaskan juga semakin kencang. Mereka menilai tindakan Al Zaidi menimpuk Bush dengan sepatunya sebagai tindakan paling berani.<br><br>Sahabat Al Zaidi di stasiun TV Al Baghdadia, mengungkapkan betapa bencinya Al Zaidi pada Bush. Dia menganggap Bush sebagai tokoh yang memerintahkan perang di Irak.<br><br>"Melempari sepatu pada Bush merupakan ciuman pamitan terbaik hingga sejauh ini ... itu merupakan ungkapan bagaimana rakyat Irak dan bangsa Arab lainnya membenci Bush," tulis Musa Barhoumeh, editor koran independen Yordania, Al-Gahd, Selasa (16/12).<br><br>Di Washington, Al Zaidi dicap sebagai orang yang cuma mencari perhatian.<br><br>"Tak diketahui apa motivasi orang itu, ia tampaknya jelas hanya berusaha mendapatkan perhatian atas dirinya," kata Jurubicara Deplu AS, Roberet Wood, kepada para wartawan.<br><br>Pemerintah Irak mencap tindakan Zaidi sebagai ''memalukan'' dan menuntut permintaan maaf dari pemimpin redaksinya yang berkerdudukan di Kairo. Namun Bos Al Zaidi malah menuntut pembebasan reporternya itu. (sumber: <a target="_blank" title="http://inilah.com" href="http://inilah.com">inilah.com</a>)<br>', 'Sabtu', '2009-01-31', '14:04:27', '38bush.jpg', 11, 'amerika,george-bush'),
(62, 22, 'admin', 'Monumen Menghormati Pelempar Sepatu Bush', 'monumen-menghormati-pelempar-sepatu-bush', 'Y', 'Wartawan pelempar sepatu ke arah mantan Presiden Amerika Serikat George W Bush Desember lalu, benar-benar menjadi pahlawan. Sebuah kota di Irak bahkan membuatkan monumen sepatu untuk menghormatinya. Seperti diberitakan Reuters, Jumat (30/1/2009), monumen sepatu yang terletak di kota Tikrit Irak tersebut diresmikan Kamis kemarin. Sepatu sepanjang dua meter itu dilapis material berwarna perunggu.<br><br>"Muntazar: Puasa (bicara) hingga pedang menyayat kebisuan dengan darah. Sunyi hingga mulut kami menyuarakan kebenaran," demikian tertulis di monument itu. Saat melemparkan sepatunya ke Bush dalam sebuah konferensi pers di Baghdad, wartawan televisi Al Baghdadia itu mengucapkan bahwa Bush merupakan orang yang bertangung jawab atas kematian ribuan warga Irak. Zaidi juga menyebut Bush dengan kata "anjing".<br><br>Sejak insiden itu Zaidi medekam di penjara Baghdad. Dia menghadapi tuntutan penyerangan terhadap tamu negara dengan ancaman hukuman penjara hingga 15 tahun.<br><br>Pimpinan rumah yatim piatu dan organisasi kesejahteraan anak Tikrit Fatin Abdul Qader mengatakan monumen itu didesain oleh Laith Al Amiri dengan bobot keseluruhan sekira 1,2 ton. Tema monumen tersebut adalah "Patung Semangat dan Kedermawanan".<br><br>"Monumen ini merupakan ekspresi penghargaan dan apresiasi kami untuk Muntazhar Zaidi akrena hati orang-orang Irak akan tenang dengan leparan sepatunya," kata Fatin. (sumber: <a target="_blank" title="http://sabili.co..id" href="http://sabili.co..id">sabili.co.id</a>)<br>', 'Sabtu', '2009-01-31', '14:11:28', '91bushet.jpg', 5, 'amerika,george-bush'),
(75, 22, 'admin', 'Krisis Ekonomi Amerika, Bukti Gagalnya Kapitalisme', 'krisis-ekonomi-amerika-bukti-gagalnya-kapitalisme', 'Y', '<p>\r\nPresiden Ekuador, Rafael Correa menilai krisis yang terjadi di Amerika menjadi bukti kegagalan sistem kapitalis dan periode Kapitalisme telah berakhir serta ekonomi Amerika sebagai pasar terbesar dunia telah dililit krisis. (Kantor Berita Fars Prensa Latina Kuba).\r\n</p>\r\n<p>\r\nCorrea menambahkan, apa yang terjadi di Amerika tidak terbatas pada krisis keuangan, namun bukti kebuntuan sebuah sistem yang dibangun tanpa dicermati secara serius. \r\n</p>\r\n<p>\r\nMenurut Correa, solusi krisis sistem keuangan Amerika tidak akan bisa selesai dengan menyuntikkan dana 700 miliar dolar kepada bank-bank yang telah bangkrut, namun yang lebih penting lagi adalah Amerika harus melakukan perubahan fundamental. (sumber: hidayatullah.com)\r\n</p>\r\n', 'Sabtu', '2009-01-31', '14:13:52', '54RafelKarera.jpg', 19, 'amerika'),
(79, 22, 'admin', 'Ahmadinejad: Gaza Akan Jadi Kuburan Israel', 'ahmadinejad-gaza-akan-jadi-kuburan-israel', 'Y', 'Iran dan Israel tampaknya tidak akan pernah melakukan genjatan senjata. Presiden Iran Mahmoud Ahmadinejad melontarkan kata-kata serangan terhadap Israel dengan menyebut negara Yahudi itu akan segera lenyap dari bumi. "<span style="font-weight: bold; font-style: italic;">Kejahatan yang dilakukan rejim Zionis (Israel) terjadi karena mereka sadar sudah sampai di akhir dan segera lenyap dari muka bumi</span>," kata Ahmadinejad dalam pawai anti-Israel yang berlangsung di Teheran, seperti dilaporkan kantor berita Mehr dan dikutip DPA, Sabtu (13/12).<br><br>Dia mengatakan Israel sudah kehilangan arah dan kian sadar bahwa kelompok negara-negara kuat makin ragu untuk menunjukkan dukungan untuk negara Yahudi itu.<br><br>Ahmadinejad juga mengatakan bahwa kejahatan Israel di Gaza bertujuan mengganti pemimpin politik di wilayah itu agar sesuai dengan kepentingan politik Israel. (sumber: <a target="_blank" title="Situs Berita Inilah.com" href="http://inilah.com">inilah.com</a>)<br>', 'Senin', '2009-02-02', '14:23:39', '22ahmadinejad.jpg', 89, 'gaza,israel,palestina'),
(65, 23, 'admin', 'Michael Heart "Song for Gaza"', 'michael-heart-song-for-gaza', 'Y', 'Banyak cara untuk men-support perjuangan rakyat Palestina di Gaza, salah satunya dengan lagu. Seorang penyanyi di Los Angeles Amerika Serikat - Michael Heart yang bernama asli Annas Allaf kelahiran Syiria, membuat sebuah lagu khusus yang dia tujukan untuk rakyat Gaza yang sampai saat ini masih jadi sasaran pembantaian oleh Zionis Israel.<br><br>Sejak dia merilis lagu yang berjudul "We will not go down" (Song for Gaza), lagu tersebut mendapat banyak respon, berupa komentar dukungan, sampai ia sendiri kewalahan menjawab dan membalas berbagai email yang masuk.<br><br>Michael Heart menggambarkan kondisi rakyat Gaza akan gempuran Zionis Israel dalam lagunya itu membuat kita merasa tersindir dan sedih akan nasib rakyat Gaza. Walaupun lagu itu baru di rilis, namun telah ratusan ribu orang melihatnya di youtube dan mendownload MP3 nya.<br><br>Awalnya dia berencana dengan menjual CD lagu MP3 nya itu dan hasil penjualannya akan dia donasikan untuk kepentingan amal kemanusiaan untuk penduduk Gaza, tapi karena dia merasa sulit kalau harus sendiri mendonasikan hasil penjualan CD MP3 nya, akhirnya dia memutuskan semua orang bisa mendownload gratis lagu tersebut. Dan dia berharap, setelah mendengarkan lagu itu, orang-orang akan tergerak hatinya untuk membantu rakyat Palestina di Gaza dengan mendonasikan uangnya ke lembaga-lembaga kemanusiaan yang ada atau organisasi yang didedikasikan untuk meringankan penderitaan rakyat Palestina.<br><br>Sebagai musisi Michael Heart sangat berterima kasih atas dukungan yang diberikan kepada dia atas lagu tersebut. Dan dia berharap setiap orang yang masih mempunyai hati nurani, mendukung perjuangan rakyat Palestina dan membantu mereka walau hanya dengan berupa doa.<br><br><br><span style="font-weight: bold;">WE WILL NOT GO DOWN (Song for Gaza)</span><br style="font-weight: bold;"><br style="font-style: italic;"><span style="font-style: italic;">A blinding flash of white light</span><br style="font-style: italic;"><span style="font-style: italic;">Lit up the sky over Gaza tonight</span><br style="font-style: italic;"><span style="font-style: italic;">People running for cover</span><br style="font-style: italic;"><span style="font-style: italic;">Not knowing whether they''re dead or alive</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">They came with their tanks and their planes</span><br style="font-style: italic;"><span style="font-style: italic;">With ravaging fiery flames</span><br style="font-style: italic;"><span style="font-style: italic;">And nothing remains</span><br style="font-style: italic;"><span style="font-style: italic;">Just a voice rising up in the smoky haze</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">We will not go down</span><br style="font-style: italic;"><span style="font-style: italic;">In the night, without a fight</span><br style="font-style: italic;"><span style="font-style: italic;">You can burn up our mosques and our homes and our schools</span><br style="font-style: italic;"><span style="font-style: italic;">But our spirit will never die</span><br style="font-style: italic;"><span style="font-style: italic;">We will not go down</span><br style="font-style: italic;"><span style="font-style: italic;">In Gaza tonight</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">Women and children alike</span><br style="font-style: italic;"><span style="font-style: italic;">Murdered and massacred night after night</span><br style="font-style: italic;"><span style="font-style: italic;">While the so-called leaders of countries afar</span><br style="font-style: italic;"><span style="font-style: italic;">Debated on who''s wrong or right</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">But their powerless words were in vain</span><br style="font-style: italic;"><span style="font-style: italic;">And the bombs fell down like acid rain</span><br style="font-style: italic;"><span style="font-style: italic;">But through the tears and the blood and the pain</span><br style="font-style: italic;"><span style="font-style: italic;">You can still hear that voice through the smoky haze</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">We will not go down</span><br style="font-style: italic;"><span style="font-style: italic;">In the night, without a fight</span><br style="font-style: italic;"><span style="font-style: italic;">You can burn up our mosques and our homes and our schools</span><br style="font-style: italic;"><span style="font-style: italic;">But our spirit will never die</span><br style="font-style: italic;"><span style="font-style: italic;">We will not go down</span><br style="font-style: italic;"><span style="font-style: italic;">In Gaza tonight </span><br><br>(sumber: detik.com)<br>', 'Sabtu', '2009-01-31', '14:26:40', '24michaelheart.jpg', 24, 'gaza,israel,palestina'),
(66, 22, 'admin', 'Demo Kecam Israel Warnai Ibukota', 'demo-kecam-israel-warnai-ibukota', 'Y', 'Aksi unjuk rasa menentang agresi militer Israel ke Jalur Gaza, Palestina kembali mewarnai Jakarta. Unjuk rasa kali ini dilakukan oleh Ormas Islam Hizbut Thahrir di kawasan Silang Monas, Jakarta. Sejak Minggu (4/1) pagi, para pengunjuk rasa nampak berbondong-bondong membawa karton besar bertuliskan ''Save Palestine'' dan foto anak-anak serta perempuan Palestina yang menjadi korban tak berdosa dari serangan biadab militer Israel.<br><br>Kepada warga Jakarta yang berolahraga di sekitar kawasan Monas, para pengunjuk rasa juga mengedarkan kotak sumbangan untuk didonasikan kepada korban warga Palestina.<br><br>Aksi unjuk rasa dan banyaknya warga Jakarta yang rutin berolahraga di kawasan Silang Monas setiap Minggu pagi, membuat kawasan itu cukup padat untuk dilalui kendaraan bermotor.<br><br>Serangan udara Israel yang dimulai pada 27 Desember 2008 sudah terjadi selama sepekan di Jalur Gaza dan menewaskan lebih 420 orang.<br><br>Meski mendapat kutukan keras dari dunia Internasional, termasuk Indonesia, Israel sampai saat ini belum menunjukkan tanda-tanda akan menghentikan aksi militernya. (sumber: inilah.com)<br>', 'Sabtu', '2009-01-31', '14:29:16', '32demo.jpg', 23, 'gaza,israel,palestina'),
(67, 2, 'admin', 'Ana Ivanovic Dinobatkan Sebagai Ratu Tenis 2008', 'ana-ivanovic-dinobatkan-sebagai-ratu-tenis-2008', 'Y', 'Ana Ivanovic, dara kelahiran Belgrade pada tanggal 6 November 1987 sudah mulai bermain tenis sejak umur 5 tahun sesudah menonton Monica Seles di TV, mengingat nomor telpon sekolah tenis lokal dan memohon kepada orang tuanya untuk mengajak pergi ke sekolah itu. Kemudian di acara ulang tahunnnya yang ke-5, orang tuanya memberi hadiah berupa raket tenis dan sejak itu dia mulai jatuh cinta dengan dunia tenis. Kemudian Ana mulai berlatih tenis secara intens dengan Scott Byrnes pada bulan juli 2006.<br><br>Dragana, ibunya adalah seorang pengacara, sedangkan Miroslav bapaknya adalah seorang pebisnis, Milos kakaknya adalah seorang pemain basket dan seluruh keluarganya menyukai olahraga, tetapi tidak ada yang menyukai tenis seperti ana.<br><br>Senjata utamanya di tenis adalah pukulan forehand-nya, dan dia bisa main di segala jenis lapangan. Hobinya adalah menonton film di bioskop atau menonton DVD di rumah. Ana juga suka membaca, khususnya tentang Mitologi dan Sejarah Yunani. Ana juga senang sekali mendengarkan musik.<br><br>Pada tahun 2008 ini, setelah menjuarai Roland Garros prancis dengan mengalahkan Dinara safina dari rusia di final, maka saat ini peringkat Ana Ivanovic naik menjadi peringkat 1 dunia untuk petenis putri.<br>', 'Sabtu', '2009-01-31', '14:30:48', '20anaivanovic.jpg', 7, 'tenis'),
(73, 2, 'admin', 'Maria Kirilenko, Petenis Terseksi Versi WTA', 'maria-kirilenko-petenis-terseksi-versi-wta', 'Y', 'Pesona kecantikan Maria Sharapova dan Ana Ivanovic sepertinya sudah mendapat saingan baru. Tidak jauh-jauh, nama Maria Kirilenko tiba-tiba menyeruak di daftar petenis terseksi pilihan responden WTA. Artinya, Maria sukses merengkuh gelar yang musim lalu diraih Maria Sharapova.<br><br>Setengah dari 7 ribu responden yang masuk ke WTA menyebut, kalau Maria adalah sosok petenis ideal dan paling proporsional di level bentuk tubuh. Meski hanya berperingkat 18 dunia, namun pesonanya di atas lapangan tenis menjadi daya tarik tersendiri.<br><br>"Tubuhnya sangat indah, siluetnya membuat setiap pria pasti penasaran ingin melihat lebih dekat. Yang jelas, ia memiliki kepribadian baik yang makin menyempurnakan pesona fisiknya," tulis seorang responden. Di kalangan petenis putri sendiri, sudah lama Maria menjadi saingan berat Masha dan Ana ivanovic.<br><br>Di situs pribadinya, petenis bernama asli Maria Yuryevna Kirilenko ini mengaku selalu menjaga proporsi tubuh dengan senam dan renang, selain tentu berlatih fisik tenis. "Olahraga adalah cermin hidupku, jika tak olahraga sehari saja, kadang membuat tubuhku terasa lemas dan tak bergairah," ujar Maria.&nbsp; (persda network/bud)<br><br>Meksi bersaing di lapangan dan dunia mode, namun ternyata sosok Maria Kirilenko adalah sobat sejati Maria Sharapova. Bukan hanya karena sama-sama berasal dari Rusia, namun gaya hidup mereka berdualah yang membuat Maria-Masha banyak memiliki kecocokan.<br>Selain suka fotografi, mereka berdua juga memiliki hobi berbelanja, terutama fashion dan perhiasan. Bukan untuk pamer memang, tapi mereka melakukan itu untuk tabungan dan investasi.<br><br>Di beberapa turnamen, Masha dan Maria memang tampak bersama tatkala berada di luar lapangan. Mereka biasanya menyingkir dari rombongan pemain lain, dan memilih berburu barang kesukaan mereka dengan menyisir bagian kota tempat mereka tengah bertanding. "Aku dan Masha seperti kakak beradik, bagiku dia lebih dari sekedar sahabat, dia begitu dewasa, apalagi saat kami berdua saling curhat," sebut Maria, di tennisnews. <br><br>Daftar petenis terseksi WTA:<br><ol><li>Maria Kirilenko (Russia)</li><li>Maria Sharapova (Russia)</li><li>Ana Ivanovic (Serbian)</li><li>Caroline Wozniacki (Danish)</li><li>Nicole Vaidisova (Czech)</li><li>Sania Mirza (Indian)</li><li>Ashley Harkleroad (American)</li><li>Gisela Dulko (Argentinian)</li><li>Samantha Stosur (Australian)<br></li></ol>', 'Sabtu', '2009-01-31', '15:01:49', '14mariakirilenko.jpg', 41, 'tenis'),
(77, 2, 'sinto', 'Sharapova, Petenis Wanita Berpenghasilan Tertinggi', 'sharapova-petenis-wanita-berpenghasilan-tertinggi', 'Y', 'Petenis asal Rusia, Maria Sharapova dengan penghasilan 26 juta dolar AS merupakan petenis wanita berpenghasilan tertinggi. Ia pernah menempati peringkat satu dunia, pasca mundurnya Justine Henin. Ia juga memiliki prestasi dengan menjuarai turnamen grand slam Australia Terbuka dan AS Terbuka. Namun, sebagian besar penghasilannya didapat dari kontrak iklannya bersama Pepsi, Colgate-Palmolive, Nike dan Motorola.<br><br>Berikutnya disusul Williams bersaudara dari Amerika, yaitu Serena Williams dengan penghasilan 14 juta dolar AS. Ia meraih tiga gelar juara tiap tahunnya semenjak tahun 2005. Ia juga merupakan model dari produk Hawlett-Packard, Nike, dan Kraft. Sedangkan kakak kandungnya, yaitu Venus Williams berpenghasilan 13 juta dolar AS. Ia mengalahkan adiknya di final Wimbledon tahun 2008. Ia memiliki dan menjalankan sendiri usaha fashion Eleven.<br><br>Di peringkat ke empat dan kelima adalah petenis Belgia yaitu Justine Henin dengan penghasilan 12,5 juta dolar AS. Dan petenis asal Serbia, yaitu Ana Ivanovic dengan penghasilan 6,5 juta dolar AS.<br>', 'Minggu', '2009-02-01', '19:58:16', '89sharapova.jpg', 21, 'tenis'),
(68, 2, 'admin', 'Roger Federer, Petenis Legenda Abad Ini', 'roger-federer-petenis-legenda-abad-ini', 'Y', 'Siapa yang tak kenal dengan Roger Federer saat ini? Masih muda, ganteng, namun sudah jadi legenda. Bayangkan, dalam usia belum menginjak 26 tahun, ia sudah memecahkan rekor bertahan sebagai peringkat pertama dunia tenis selama 161 pekan berturut-turut. Ia memecahkan rekor Jimmy Connor yang sudah bertahan puluhan tahun. <br><br>Itu baru satu rekor. Sebelumnya, ia juga mendapat penghargaan Bagel Award, yakni penghargaan sebagai petenis paling banyak memenangkan set tenis dengan angka sempurna 6-0. "Saya hanya berusaha melakukan yang terbaik dan tidak berhenti memperbaiki kesalahan-kesalahan saya,"sebut Federer merendah tentang prestasinya itu.<br><br>Dengan kerendahhatian dan semangat untuk terus memperbaiki diri, pria keturunan campuran Swiss, German, dan Afrika Selatan ini sepertinya akan terus mengukir prestasi. Sebab, mengingat usia yang masih muda dan jarak nilai ATP dengan peringkat kedua dunia Rafael Nadal, cukup jauh, ia akan bisa terus bertahan di rangking satu dunia. Apalagi jika ia nantinya bisa memenangkan satu-satunya gelar tenis Grand Slam yang belum diraih, Perancis Terbuka. Ia akan jadi satu-satunya petenis pria yang bisa mengawinkan semua gelar tenis Grand Slam.<br><br>Roger Federer memang sepertinya terlahir untuk jadi legenda. Bahkan, menurut pengakuannya, sejak kecil ia sudah disebut banyak orang punya bakat gemilang di bidang olahraga. Tapi, menurut dirinya, bukan bakat yang membuatnya seperti sekarang. Kerja keras, ketekunan berlatih, dan keuletan di lapangan lah yang membuat dia bisa jadi juara sejati. "Saya terus berlatih untuk meningkatkan teknik permainan saya dan menambah kekuatan saya. Proses ini saya jalani sampai hari ini dan bahkan makin saya tingkatkan sejak saya jadi juara. Ini saya lakukan karena saya yakin masih banyak perbaikan yang harus terus dilakukan."<br><br>Dengan tekad untuk terus melakukan perbaikan itu, Roger Federer terus meretas jalan untuk mengukir rekor-rekor lainnya. Namun, semua rekor dan kemenangan yang diperolehnya, ternyata bukan hanya untuk kebanggaan dirinya. Melalui sebuah yayasan yang diberi nama seperti dirinya, Roger Federer Foundation, ia membantu anak-anak kurang beruntung di dunia terutama di Afrika Selatan. Sebagian hadiah yang diperoleh dari kemenangannya di kejuaraan tenis, digunakan untuk membantu anak-anak itu. Ia juga berperan banyak saat terjadi tsunami akhir tahun 2005. Saat itu, ia terpilih menjadi duta UNICEF, untuk membantu anak-anak yang jadi korban tsunami di Tamil Nadu, India. Ia juga berjanji untuk mengukir lebih banyak kemenangan guna mengumpulkan lebih banyak dana untuk yayasannya. Ia juga merelakan beberapa raketnya untuk dilelang guna disumbangkan melalui UNICEF. Roger Federer telah membuktikan, dengan kerja keras, semangat pantang menyerah, tekad kuat, dan kepedulian terhadap sesama, telah menjadikannya sebagai juara sejati.<br><br>Dari kisah sukses Roger Federer ini, kita dapat mengambil pelajaran bahwa dengan kerja keras disertai semangat pantang menyerahlah kita bisa mewujudkan cita-cita. Selain itu, kepedulian kepada sesama juga selayaknya dapat mendorong semangat kita untuk terus mengukir prestasi. (sumber: andriewongso.com)<br>', 'Sabtu', '2009-01-31', '18:59:14', '33federer.jpg', 16, 'tenis'),
(70, 19, 'admin', 'Kisah Sukses Google', 'kisah-sukses-google', 'Y', 'Dalam daftar orang terkaya di Amerika baru-baru ini, terselip dua nama yang cukup fenomenal. Masih muda, usianya baru di awal 30-an, namun kekayaannya mencapai miliaran dolar. Nama kedua orang itu adalah Larry Page dan Sergey Brin. Mereka adalah pendiri Google, situs pencari data di internet paling terkenal saat ini.<br><br>Terlepas dari jumlah kekayaan mereka, ada beberapa hal yang perlu dicontoh dari kisah sukses mereka. Satu hal yang pertama, yang disebut Sergey Brin, yang kini menjabat sebagai Presiden Teknologi Google, yakni tentang kekuatan kesederhanaan. Menurutnya, simplicity web adalah hal yang disukai penjelajah internet. Dan, Google berhasil karena menggunakan filosofi tersebut, menghadirkan web yang bukan saja mudah untuk mencari informasi, namun juga menyenangkan orang.<br><br>Kunci sukses kedua adalah integritas mereka dalam mewujudkan impiannya. Mereka rela drop out dari program doktor mereka di Stanford University untuk mengembangkan google. Mereka pun pada awalnya tidak mencari keuntungan dari proyek tersebut. Malah, kedua orang itu berangkat dari sebuah ide sederhana. Yakni, bagaimana membantu banyak orang untuk mempermudah mencari sumber informasi dan data di dunia maya. Mereka sangat yakin, ide mereka akan sangat berguna bagi banyak orang untuk mempermudah mencari data apa saja di internet.<br><br>Kunci sukses lainnya yaitu mereka tidak melupakan jasa orang-orang yang mendukung kesuksesan mereka. Larry dan Sergey sangat memerhatikan kesejahteraan SDM di Google. Kantornya yang diberi nama Googleplex dinobatkan sebagai tempat bekerja terbaik di Amerika tahun 2007 oleh majalah Fortune. Di sana suasananya sangat kekeluargaan, ada makanan gratis tiga kali sehari, ada tempat perawatan bagi bayi ibu muda, bahkan sampai kursi pijat elektronik pun tersedia. Mereka sadar, di balik sukses inovasi yang dilakukan Google, ada banyak doktor matematika dan lulusan terbaik dari berbagai universitas yang membantu mereka.<br><br>Larry dan Sergey memang tak pernah menduga Google akan sesukses sekarang. Kedua orang yang terlahir dari keluarga ilmuwan ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ ayah Sergey adalah doktor matematika, sedangkan Larry adalah putra almarhum doktor pertama komputer di Amerika ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ ini memang hanya berangkat dari sebuah masalah sederhana. Mereka berusaha memecahkan masalah tersebut, dan berbagi dengan orang lain. Namun, justru dengan kesederhanaan dan integritas mereka, mampu membuat Google saat ini menjadi mesin pencari terdepan, dikunjungi lebih dari 300 juta orang perhari. Diterjemahkan dalam 88 bahasa dengan nilai saham mencapai lebih dari 500 dolar AS per lembar, membuat sebuah kesederhanaan menjelma menjadi kekuatan yang luar biasa.<br><br>Sebuah niat mulia, meski sesederhana apapun, jika dilandasi kerja keras dan integritas yang tinggi, akan menghasilkan sesuatu yang istimewa. Hal tersebut nampak dari contoh kisah sukses Larry Page dan Sergey Brin di atas. Google yang mereka dirikan terbukti telah membantu banyak orang untuk bisa mendapatkan apa saja dari internet. Dan kini, mereka pun mendapatkan imbalan yang bahkan tak diduga mereka sebelumnya. Kesuksesan sejati memang akan terasa saat kita bisa berbagi. Dan, Larry serta Sergey membuktikannya sendiri. (sumber: andriewongso.com)<br>', 'Minggu', '2009-01-25', '20:26:26', '73google.jpg', 6, 'google'),
(64, 19, 'wiro', 'Browser Safari Diklaim Paling Handal di Windows', 'browser-safari-diklaim-paling-handal-di-windows', 'Y', 'Dibandingkan browser Internet lainnya, Apple mengklaim browser web Safari buatannya adalah yang paling handal digunakan jika digunkan di atas sistem operasi Windows. Hal tersebut disampaikan CEO Apple Steve Jobs saat mengumumkan versi terbaru Safari yang dapat berjalan di Windows.<br><br>"Kami kira para pengguna Windows akan benar-benar terkejut saat melihat begitu cepat dan menariknya berselancar di Internet menggunakan Safari," ujar Steve Jobs di acara Worldwide Developer Conference Apple di San Fransisco, AS, Senin (11/6). Ia mengklaim browser Safari dapat membuka sebuah halaman web dua kali lebih cepat dibandingkan Internet Explorer 7 di Windows dan masih lebih cepat dibandingkan Opera maupun Firefox.<br><br>Kehadiran Safari untuk para pengguna Windows akan semakin menyemarakkan persaingan browser web. Steve Jobs berharap peluncuran ini akan meningkatkan popularitas Safari yang baru mencapai 4,9 persen pangsa pasar browser web. Persaingan browser web saat ini masih didominasi IE dengan pangsa pasar 78 persen menyusul Firefox. Versi tes Safari 3 untuk Windows XP, Vista, dan Apple Macs OSX sudah dapat di-download dari situs Apple sejak Senin (11/6). (sumber: bbc.co.uk)<br>', 'Minggu', '2009-01-25', '20:35:26', '18safari.jpg', 4, 'browser'),
(58, 23, 'sinto', 'Pelajaran Moral dari Film Laskar Pelangi', 'pelajaran-moral-dari-film-laskar-pelangi', 'Y', '"Kalau Nak Pintar, Belajar! Kalau Nak Berhasil, Usaha!" Itulah mantra yang diberikan Tuk Bayan Tula kepada anak-anak laskar pelangi saat mau menghadapi ujian. Berikut beberapa fakta mengapa saya sangat menyukai film Laskar Pelangi (Petik hikmahnya ya):<br><br>1. Pelajaran itu bisa didapatkan dimana saja<br><br>Para Laskar Pelangi menimba ilmu di sekolah reot yang sangat tidak layak, kegigihan untuk menimba ilmu dan mengubah sejarah hidup membuat mereka mampu bangkit dan membuktikan bahwa mereka bisa menjadi yang terbaik. Sebagai blogger, belajarlah dari siapapun, baik master ataupun newbie, anda tidak akan rugi. Saya selalu senang belajar dari semua orang :)<br><br>2. Keinginan untuk memberi.<br><br>Keinginan untuk memberi akan membuat kita kuat dan bahagia. Berbagi itu Indah (seperti paman gober yang berbagi PR dengan saya). Semangat untuk memberikan yang terbaik akan membuat kita berusaha sekuat mungkin. Dari apa yang kita berikan pada orang lain, kitapun akan memetik hasilnya. Jangan takut kehilangan karena berbagi.<br><br>3. Semangat komunitas, lihat bagaimana mereka membangun tim.<br>Team building, walaupun saya seorang blogger, di BlogicThink saya bekerja bersama. Ada perbedaan sikap dalam menghadapi suatu masalah, dan tim yang baik akan menemukan jalan keluarnya. Saksikan bagaimana Laskar Pelangi memenangkan karnaval dan cerdas cermat. Terima kasih kepada Mas Ary yang mau berbagi dengan saya.<br><br>4. Kalau Nak Pintar, Belajar! Kalau Nak Berhasil, Usaha!<br>Saya suka bagian ini. Laskar pelangi mendatangi dukun untuk lulus dalam ujian. Sang Dukun yang bertempat di pilau terpencil mengngatkan untuk membaca mantra itu dipagi hari. Para Laskar pelangipun menurutinya. Dibawalah selembar mantra tersebut, dibaca didepan sekolah bersama keras-keras : Kalau Nak Pintar, Belajar! Kalau Nak Berhasil, Usaha!<br><br>Yups, suatu pelajaran bagi kita untuk tidak pendek akal ketika ingin menjadi blogger sukses. Saya memilih mewawancara Mas Jimmy, ketimbang membeli resep kebut semalam. Terima kasih untuk Mas Jimmy atas PRnya.<br><br>5. Gunakan waktu, mumpung masih muda<br><br>Ketika saya menonton Laskar Pelangi, saya ingat umur. Saya mengagumi mereka yang memiliki tekad belajar yang kuat, cerita tentang anak-anak kelas 5 SD ini memang mengagumkan. Saya jadi teringat Kawan Blogger saya Ruzdee yang mengenal internet saat kelas 5 SD, suatu kesempatan yang hebat. Semoga sukses kawan :)<br><br>6. Buku kucel mereka, adalah awal dari masa depan.<br><br>9 Laskar pelangi berkumpul dikelas saat sekolah mau dibuka, masih kurang 1 anak. Dalam suasana menunggu Ditampilkan buku kucel yang membuat haru penonton, efek dramatis berhasil dimunculkan. Melihat buku itu saya teringat buku catatan saya, saya memiliki buku catatan yang selalu habis dalam waktu kurang dari satu bulan, isinya adalah ide-ide bisnis.<br><br>Saya jadi ingat spydeey yang menjadikan blognya sebagai oret-oretan catatan belajar komputer dan internet, thanks atas PRnya Bro :)<br><br>7. Lintang, sang jenius yang tak berhenti bermimpi<br><br>Melihat lintang membuat saya melakukan refleksi. Saya tau rasanya putus sekolah. Dan saya tahu rasanya kehilangan kesempatan kuliah karena masalah biaya. Bagi saya itu bukan hambatan. Saya tahu saya akan berhasi. walau kadang dunia tak adil, sekarang saya coba menjawabn setiap permasalahan, dan saya bahagia.<br><br>8. Sekolah kecil itu mengalahkan sekolah dengan modal besar<br><br>Karena sekolah memang bukan soal modal. Pendidikan sejatinya bukan masalah hitung-hitungan material. Ini masalah nilai-nilai. SD Para Laskar Pelangi mengalahkan SD berfasilitas lengkap, karena mereka memiliki cita-cita, semangat, harapan dan kebijaksanaan seorang pendidik.<br><br>Saya adalah seorang trainer di organisasi saya dulu ketika mahasiswa. Anehnya, saya tidak suka sekolah, saya menganggapnya mengungkung pemikiran saya. Ada terlalu banyak pemikiran kaku dan tertinggal disana yang saya tidak sukai.<br><br>9. Ajari saya bermimpi<br><br>Seandainya kondisi membuat saya mundur, maka saya telah tertinggal sejak lama. Banting setir ke dunia bisnis adalah pilihan dari kesulitan ekonomi dan ketidakmampuan untuk melanjutkan kuliah. Awalnya saya down, namun saya tidak mau berlama-lama. Saya coba berusaha bangkit. Hari ini, saya dapat bangga akan ilmu manajemen pemasaran yang saya miliki. Bahkan ketika bertemu dengan kawan-kawan saya dibangku kuliah dulu. Beruntung, walaupun tidak bekerja seperti mereka, saya bangga menjadi seorang blogger dan bukan buruh orang lain. Btw, Om jadul ngasih PR ( Blognya kok suspend Om?)<br><br>10. Seperti Ikal saya berniat sekolah di Perancis<br><br>Jika Ikal pergi ke sorbonne dan berkeliling dunia saya berniat untuk belajar di Universitas Frankfurt, mungkinkah? kita tunggu saja nanti. (sumber: blogicthink.com)<br>', 'Minggu', '2009-01-25', '21:10:44', '46laskar.jpg', 13, 'laskar-pelangi'),
(85, 19, 'admin', 'Windows 7 Gantikan Windows Vista', 'windows-7-gantikan-windows-vista', 'Y', '<p>\r\nMicrosoft  ingin memudahkan rencana para administrator komputer yang akan bermigrasi ke Windows 7, namun sebuah tulisan di blog salam satu anggota tim Windows 7 berkata sebaliknya.\r\nSkenario uji coba terbaru menunjukkan, sebagian besar pengguna, proses upgrading akan menyulitkan, mengambil waktu kira-kira 30 menit. \r\n</p>\r\n<p>\r\nProsentasi terbesar pengguna menyebut, migrasi butuh waktu hingga 21 jam.\r\nSalah satu anggota tim Windows dari Microsoft, Chris Hernandez, mengungkap hasi pengetesan timnya dengan berbagai merek komputer dan konfigurasi tipikal pengguna lewat simulasi pada tingkatan berbeda dari proses migrasi Vista ke Windwos pada Jumat akhir pekan lalu.\r\n</p>\r\n<p>\r\nTujuan simulasi untuk memastikan apakah upgrade dari Vista Service Pack (SP) 1 ke Windows 7, dalam lima persen percobaan utama, lebih cepat ketimbang upgrade dari Vista SP1 ke Vista SP2, ujar Chris.\r\nProses dari Vista SP1 ke Vista SP2 dipilih karena itu opsi instalasi paling umum digunakan Microsoft Product Support Services, yakni skenario repair (perbaikan ulang) di mana prosedur yang paling dianjurkan adalah melakukan re-instalasi sistem operasi (OS) yang sudah ada di komputer saat itu. \r\n</p>\r\n<p>\r\nChris menampilkan hasil tes dalam blognya.\r\nTim mengetes konfigurasi komputer khusus hadware, merentang dari kategori hardware low-end (spesifikasi rendah), mid-range (spesifikasi menengah) dan high-end (spesifikasi atas). Kategori itu berlawanan dengan skenario pengguna pada umumnya yang berbasis pertanyaan seperti, berapa besar set data yang dibutuhkan pengguna dan bagaimana macam aplikasi tersebut diinstall.\r\n</p>\r\n<p>\r\nUntuk kategori komputer spesifikasi atas, Chris dan timnya mendefinisikan komputer dengan sistem operasi 32 bit dan memiliki CPU berprosesor Inter Core 2 Quad, yang bejalan di 2,4 GHz, memori 4GB dan hardisk 1 Terabyte .\r\nSementara, pengguna umumnya memiliki data sebesar 125 GB yang terikat dalam format dokumen, musik dan gambar dengan 40 aplikasi yang diinstal di komputer mereka.\r\nKinerja upgrade Vista SP1 ke Windows 7 pada hardware spesifikasi atas dengan konfigurasi pemilik pengguna kelas berat, membutuhkan 160 menit, atau sekitar 2,7 jam. \r\n</p>\r\n<p>\r\nSebagai perbandingan, upgrade repair (perbaikan) dari Vista SP1 ke Vista SP1 dengan hadware yang sama dan penggunaan bera membutuhkan 176 menit, atau 2,9 jam.\r\nSkenario terburuk muncul pada konfigurasi hadware kelas menengah, yakni CPU 32 bit namun dengan software dan konfigurasi &quot;pengguna super&quot;. Proses upgrading akan butuh waktu hingga 1.220 menit alias 20,3 jam. Padahal yang dianggap hadware kelas menengah, memiliki spesifikasi setara memory 2GB RAM, prosesor dual core, Athlon 64 X2, pada 2,6GHz dan hardisk 1 Terabyte.\r\n</p>\r\n<p>\r\nMereka yang dianggap pengguna super, memiliki profil lebih sadis dalam istilah penggunaan data, ketimbang pengguna kelas berat pada umumnya. Sebagai contoh, tim penguji menyebut pengguna super memiliki 650 GB data dan 40 aplikasi lebih yang terinstal dalam komputer mereka.\r\nLalu pada kelas rendah, pengguna medium, dengan 70 GB data dan 20 aplikasi, dengan memori sekitar 1 GB, prosesor 64 bit, AMD Athlon pada kecepatan 2,2 GHz, bakal butuh waktu bermigrasi sekitar 175 menit. Hardware yang lebih bertenaga, secara umum membutuhkan waktu instalasi lebih singkat.\r\n</p>\r\n<p>\r\nMicrosoft tidak selalu bisa mencapai target lima persen tujuan tim Chris yang telah dijanjikan. Dalam satu contoh, instalasi bersih (instalasi pertama pada komputer baru tanpa OS) Windows 7 pada hardware spesifikasi menengah membutuhkan 30 menit sementara instalasi bersih Vista SP1 butuhk 31 menit. Hanya saja, secara keseluruhan, tidak ada instalasi Windows 7 yang lebih lambat dibandingkan Vista.\r\n</p>\r\n<p>\r\nPertanyaan tersisa, apakah para toko dan ritel software akan mendengar rayuan Microsoft dan memutuskan hijrah ke Windows 7 lebih cepat? Tradisi yang berlaku, ritel IT akan cenderung menunggu Service Pack I sebelum mendatangkan versi terbaru Windows.\r\nWaktu yang akan menjadi sumber menentukan apakah kalangan profesional IT akan berpindah, sehingga Vista tak lagi menarik bagi ritel dan toko software. Jadi kehijrahan mereka ke Windows 7 dengan segera, menandakan pula, apakah para profesional IT suka dengan hasil pengujian waktu instal yang dilakukan Chris Hernandez.  internetnews/itz.\r\n</p>\r\n', 'Minggu', '2009-10-25', '07:25:22', '19windows7.jpg', 18, 'komputer');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `headline`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(92, 23, 'admin', 'Pemilik Facebook akan Dibuat Filmnya', 'pemilik-facebook-akan-dibuat-filmnya', 'Y', '<p>\r\nSutradara David Fincher nampak jeli melihat peluang di tengah booming fenomena Facebook. Fincher akan menghadirkan sebuah film yang menceritakan tentang Mark Zuckerberg dan Facebook bagi para pencinta film dan Facebook tentunya.\r\n</p>\r\n<p>\r\nFincher mengaku rencana pembuatan film ini masih dinegosiasikan dengan pihak Zuckerberg. Dia hanya menyebutkan, filmya akan fokus menceritakan Mark Zuckerberg yang awalnya merancang Facebook sebatas untuk keperluan mahasiswa Universitas Harvard.\r\n</p>\r\n<p>\r\nFilm ini memaparkan bagaimana setelah itu Facebook kemudian berkembang menjadi fenomena yang mendunia sejak diluncurkan pada 2004.\r\n</p>\r\n<p>\r\nDalam penggarapan film ini, Fincher mengajak serta orang-orang kompeten di bidang film. Antara lain Aaron Sorkin, yang merupakan penulis naskah acara serial televisi ternama The West Wing.\r\n</p>\r\n<p>\r\nSementara itu, Columbia Pictures yang menamai film ini &quot;The Social Network&quot; dipercaya untuk memulai produksi film pada akhir tahun ini.\r\n</p>\r\n<p>\r\nSebagian orang menilai kehadiran film ini nantinya akan mengorek kembali kasus lama dimana tiga teman Zuckerberg, Cameron dan Tyler Winklevoss serta Divya Narendra mengklaim Zuckerberg telah mencuri ide mereka untuk membuat Facebook.\r\n</p>\r\n<p>\r\nPada saat Zuckerberg meluncurkan Facebook, mereka menuntut perkara atas Zuckerberg. Awal tahun ini, pengadilan AS memutuskan Facebook harus membayar USD65 juta untuk melunasi perkara ini.\r\n</p>\r\n', 'Minggu', '2009-10-25', '07:36:47', '17mark_zuckerberg.jpg', 20, 'film'),
(90, 19, 'admin', 'Ferrari 458 Polesan Teknologi Jepang', 'ferrari-458-polesan-teknologi-jepang', 'Y', '<p>\r\nBarangkali hanya Jepang (diluar Italia) yang berani memoles bodi mobil dari Ferrari, sekaligus mengumumkan hasilnya kepada publik. Seperti dilakukan rumah modifikasi ASI terhadap Ferrari 458 yang oleh pabrikannya di Italia baru di launching.\r\n</p>\r\n<p>\r\nASI dengan keberaniannya menggarap proyek berisiko tinggi. Beberapa mobil berharga miliaran rupiah pernah digarap dan membuat tampilan mobil lebih sporty dan tambah dinamis dari versi standar.\r\n</p>\r\n<p>\r\nSebut saja, Bentley Continental GT (yang diberi julukan The ASI Tetsu GTR) dan Ferrari 430. Bahkan Ferrari milik seorang pengusaha muda di Indonesia pernah juga dimodifikasi (body) di Jepang pada 2007.\r\n</p>\r\n<p>\r\nCEO ASI Satoshi Kondo menjelaskan, bahwa tim rekayasanya telah bekerja keras memproduksi aerokit untuk Ferrari 458. ASI, katanya sengaja mengeluarkan sketsa dari hasil kerja mereka dengan terus melakukan finalisasi prototype yang ada, dan menghindari pencurian desain.\r\n</p>\r\n<p>\r\nSentuhan pada bagian depan dari kuda jingkrak menjadi salah satu yang menonjol. Di antaranya moncong yang baru, lubang udara lebih besar, dan dilanjutkan pada bagian roda. Dari sketsa gambar tampak terpasang sayap baru di bagian belakang.\r\n</p>\r\n<p>\r\nPaket body kit dari ASI mempertegas tampilan Ferrari sebagai hasil kawin silang dari gaya tuner Jepang dengan kendaraan eksotis khas Italia. ASI mengklaim, adanya perubahan dan penambahan pada bodi tidak mengurangi performa standar. Bahkan bobot kendaraan lebih ringan dari asli. (sumber: kompas.com)\r\n</p>\r\n', 'Minggu', '2009-10-25', '07:44:05', '4ferrari458.jpg', 2, 'mobil'),
(86, 22, 'admin', 'Program 100 Hari Menkominfo Tifatul', 'program-100-hari-menkominfo-tifatul', 'Y', '<p>\r\nBelum juga resmi diumumkan masuk jajaran kabinet, sejumlah calon menteri sudah berani membeberkan programnya. Salah satunya, Tifatul Sembiring. Tifatul disebut-sebut sebagai calon kuat Menkominfo (Menteri Komunikasi dan Informasi).\r\n</p>\r\n<p>\r\nApa saja program Tifatul? &quot;100 Hari pertama? Kita targetkan sampai 2014 itu ada 10 ribu desa komputer. Presiden menargetkan tiga bulan ini ada 100 desa komputer harus tercapai,&quot; kata Tifatul di Gedung MPR/DPR, Jakarta, Selasa 20 Oktober 2009.\r\n</p>\r\n<p>\r\nKomputer-komputer ini, kata dia, bisa dimasukkan ke lembaga pendidikan untuk meningkatkan sumber daya manusia. Bagaimana SDM Indonesia bisa masuk ke bisnis supaya Indonesia bisa bersaing dengan negara-negara lain. Selain itu juga untuk meningkatkan e-goverment untuk meminimalisir korupsi, kolusi, kolusi dan nepotisme.\r\n</p>\r\n<p>\r\nDengan e-goverment, kata dia, maka nantinya semua urusan menjadi less paper. Artinya pegawai di tingkat pemda dan kecamatan, tidak lagi menerima uang tunai. &quot;Tapi cukup menerima resi, sehingga sogok menyogok bisa diminimalisir,&quot; kata dia.\r\n</p>\r\n<p>\r\nTifatul sendiri mengaku tidak begitu asing dengan dunia Kominfo karena latar belakang pendidikannya cukup mendukung. Gelar sarjana strata satunya di bidang Informatika dan Komunikasi. Ia juga mengaju pernah bekerja selama delapan tahun di sistem informatika dan komunikasi PT Perusahaan Listrik Negara.\r\n</p>\r\n<p>\r\nSementara strata duanya di bidang politik internasional di Islamabad, Pakistan. &quot;Itu saja sih, pinter ya belum, diupayakan sesuai,&quot; kata dia.\r\n</p>\r\n<p>\r\nNamun ia berharap bisa menembus tantangan Kominfo ke depan, yakni perbedaan kemudahan akses di kota besar dan desa. Selain itu juga soal infrastruktur yang masih lemah. Masalah lain, kurangnya tayangan edukatif di bidang informasi. &quot;Dalam satu riset dikatakan 10 dari 75 tayangan di TV, radio masih bermasalah,&quot; kata dia.\r\n</p>\r\n<p>\r\nDia menambahkan, pelayanan informasi di Indonesia juga masih  lemah. Karena itu ia akan mengusahakan peningkatan layanan informasi ini. (Sumber: vivanews.com)\r\n</p>\r\n', 'Minggu', '2009-10-25', '07:49:46', '27tifatul_sembiring.jpg', 16, 'komputer'),
(93, 23, 'admin', 'Dalam Dua Pekan, KCB 2 Ditonton 1,5 Juta Penonton', 'dalam-dua-pekan-kcb-2-ditonton-15-juta-penonton', 'Y', '<p>\r\nFilm Ketika Cinta Bertasbih (KCB) 2 diyakini bakal mereguk sukses seperti sekuel pertamanya Sejak diputar perdana tanggal 17 September lalu atau selama 15 hari, film garapan SinemArt telah disaksikan 1,5 juta penonton. \r\n</p>\r\n<p>\r\nRekor yang sama juga dialami KCB 1. &quot;Pada pemutaran KCB 1 kami bisa memecah rekor pemutaran film di Indonesia, yaitu mendapat penonton sebanyak 100.000 perhari,&quot; ungkap Frans dari SinemArt saat promo film KCB 2 di Royal Plaza, Minggu (4/10).\r\n</p>\r\n<p>\r\nPihak SinemArt berharap KCB 2 bisa meraih prestasi minimal sama dengan KCB 1 dengan total 3 juta penonton. Untuk mencapai target tersebut, pihak SinemArt tak henti melakukan serangkaian promo di sejumlah kota di Tanah Air maupun di mancanegara.\r\n</p>\r\n<p>\r\n&quot;Hari ini (Minggu, 4/10), Kholidi (Kholidi Asadil Alam, pemeran Azzam) dan Oki (Oki Setiana Dewi pemeran Anna) ke Hongkong untuk promo di sana,&quot; imbuh Frans. Pekan depan (10-12 Oktober 2009), giliran Meyda Sefira berangkat ke Makau untuk kegiatan yang sama.\r\n</p>\r\n<p>\r\nFilm besutan sutradara Chaerul Umam ini juga dijadwalkan diputar di Aceh pada tanggal 11-12 Oktober mendatang. Menurut Frans, pemutaran KCB 1 di kota yang dikenal dengan sebutan Serambi Mekkah ini ditonton 8.000 orang.\r\n</p>\r\n<p>\r\nPadahal di kota tersebut sama sekali tidak ada gedung bioskop. Karena itu kru SinemArt terpaksa mengusung peralatan khusus dari Jakarta dan memutar di sebuah gedung khusus selama dua hari dalam tujuh kali show.\r\n</p>\r\n<p>\r\nBertutur tentang kesan berperan di KCB 2, Kholidi beberapa waktu lalu mengaku paling terkesan dengan adegan kecelakaan saat membonceng Bu&#39;e (Ninik L Karim). Karena ketika sepeda motornya terjatuh dia harus teriak memanggil ibundanya. &quot;Bu&#39;eee! Wah itu lumayan sulit,&quot; ungkap Kholidi.\r\n</p>\r\n<p>\r\nAdegan lain yang cukup berkesan adalah ketika pria asal Pasuruan ini terkapar di rumah sakit paska kecelakaan yang dia alami. &quot;Ekspresi orang sakitnya kan harus dapat. Terus suaranya juga harus disesuaikan, tidak seperti kita ngomong biasa, jadi agak sedikit tertahan di tenggorokan, powernya tidak full seperti ngomong biasanya,&quot; bebernya.\r\n</p>\r\n<p>\r\nUntuk adegan itu Kholidi yang kini menempuh pendidikan di Universitas Al Azhar, Jakarta melakukan observasi pada beberapa orang yang pernah mengalami kecelakaan. &quot;Aku juga tanya-tanya ke dokter. Ternyata di tempat tidurnya nggak bisa pakai bantal, posisi badannya harus lurus. Terus kalau ada gips di kaki, posisi jalan kita akan seperti apa. Biar nantinya terlihat lebih reel lah adengannya,&quot;  pungkas Kholidi. (sumber: <a href="http://surya.co.id">surya.co.id</a>) \r\n</p>\r\n', 'Minggu', '2009-10-25', '07:55:45', '54kcb2.jpg', 53, 'film'),
(91, 2, 'admin', 'Manchester United Incar Zidane Baru', 'manchester-united-incar-zidane-baru', 'Y', '<p>\r\nManchester United sedang mengincar pemain muda Perancis berdarah Aljazair. Pemain itu adalah Sofiane Feghouli yang baru berusia 19 tahun.\r\n</p>\r\n<p>\r\nSofiane Feghouli saat ini memperkuat tim Liga Perancis, Grenoble Foot 38. Posisinya adalah di lapangan tengah.\r\n</p>\r\n<p>\r\nPemain yang punya tinggi badan 178 cm itu disebut punya gaya bermain yang serupa dengan Zinedine Zidane. Feghouli sudah masuk dalam tim nasional Perancis U-21.\r\n</p>\r\n<p>\r\nTak hanya MU yang menginginkan pemain yang pernah ditolak Paris Saint-Germain itu. Tim-tim besar macam Barcelona, Liverpool dan Inter Milan juga sedang mengambil ancang-ancang untuk mengajukan tawaran.\r\n</p>\r\n<p>\r\nSeperti diberitakan Tribalfootball, MU sudah berencana untuk melakukan transaksi dengan Grenoble bulan Januari nanti. (Sumber: vivanews.com)\r\n</p>\r\n', 'Minggu', '2009-10-25', '13:58:18', '62sofiane.jpg', 20, 'sepakbola'),
(99, 19, 'admin', 'Editor TextArea Ala Ms Word', 'editor-textarea-ala-ms-word', 'Y', '<div style="text-align: center">\r\n</div>\r\n<div style="text-align: center">\r\n</div>\r\n<div style="text-align: center">\r\n</div>\r\n<p>\r\nSecara standar, textarea akan ditampilkan apa adanya, artinya teks yang diketik tidak bisa diatur formatnya, misalnya apabila kita ingin kalimat tertentu ditebalkan, dimiringkan atau diatur jenis dan ukuran hurufnya. Hal ini tidak bisa dilakukan dalam textarea standar, kecuali Anda hapal perintah HTML, kemudian menuliskannya secara manual di textarea tersebut, namun bagi reporter atau user yang awam tentu hal ini cukup menyulitkan mereka.<br />\r\n<br />\r\nSolusinya, gunakan editor <strong>WYSIWYG</strong> (<em>What You See Is What You Get</em>) &ndash; Apa yang kau lihat adalah apa yang kau dapatkan. Menurut pengertian dari Wikipedia, WYSIWYG adalah suatu editor yang memungkinkan user untuk menentukan format, ukuran dan jenis huruf, menambahkan hyperlink dan tabel, dan juga bisa mengupload file, gambar, animasi flash, dan video.<br />\r\n</p>\r\n<div style="text-align: center">\r\n<img src="http://localhost./lokomedia/tinymcpuk/gambar/Image/cktini.jpg" alt=" " width="326" height="72" />\r\n</div>\r\n<p>\r\nSaat ini banyak sekali editor WYSIWYG, tapi daripada bingung memilih, saya sarankan untuk menggunakan <strong>TinyMCE</strong> atau <strong>CKEditor</strong>, karena kedua open source editor WYSIWYG tersebut sudah teruji di CMS sekelas Joomla dan Wordpress. Alasan lainnya, karena kelengkapan dokumentasi, kaya fiturnya, kompatibilitas browser, dukungan forum, update, dan plugins. \r\n</p>\r\n<p>\r\nSaat searching di Google, saya ketemu sama yang namanya <strong>tinyFCK</strong> (<a href="http://p4a2.crealabsfoundation.org/tinyfck" target="_blank">http://p4a2.crealabsfoundation.org/tinyfck</a>), editor WYSIWYG yang menggabungkan kelebihan dari TinyMCE dan CKEditor, atau yang lebih kompleks lagi, yaitu <strong>TinyMCPUK</strong>, karena selain menggabungkan kelebihan dari TinyMCE dan CKEditor, juga ditambahkan image manager yang berguna untuk memanipulasi gambar.\r\n</p>\r\n', 'Selasa', '2010-01-12', '02:27:42', '72office.jpg', 145, 'komputer'),
(101, 2, 'admin', 'Jadwal Lengkap Sepakbola Piala Dunia 2010', 'jadwal-lengkap-sepakbola-piala-dunia-2010', 'Y', '<p>\r\nPerhelatan akbar piala dunia 2010 yang diselenggrakan di Afsel (Afrika Selatan) akan jatuh pada bulan Juni nanti, walaupun pada piala dunia kali saya kurang antusias karena pemain pujaan tidak lagi bertanding, Zinedine Zidane, tapi tetep berusaha meyakinkan diri bahwa Perancis setidaknya dapat berbicara banyak nanti.<br />\r\n<br />\r\nBerikut ini adalah jadwal piala dunia 2010 berserta jam tayang, tanggal dan bulan, yang akan ditayangkan di ke 2 stasiun TV swasta yakni RCTI dan Global TV karena mereka yang dapat hak siar<br />\r\n<br />\r\n<strong>Keterangan</strong>: Waktu untuk pertandingan ialah GMT+1, yang perlu dilakukan untuk sesuaikan dengan waktu Indonesia cukup memajukan 6 jam saja karena Indonesia termasuk kedalam waktu GMT+7<br />\r\n<br />\r\nGrup A<br />\r\n<br />\r\nJumat, 11 Juni 2010<br />\r\nAfrika Selatan v Meksiko, 15:00<br />\r\nUruguay v Perancis, 19:30<br />\r\n<br />\r\nRabu, 16 Juni 2010<br />\r\nAfrika Selatan v Uruguay, 19:30<br />\r\n<br />\r\nKamis, 17 Juni 2010<br />\r\nFrance v Meksiko, 12:30<br />\r\n<br />\r\nSelasa, 22 Juni 2010<br />\r\nFrance v Afrika Selatan, 15:00<br />\r\nMeksiko v Uruguay, 15:00<br />\r\n<br />\r\nGrup B<br />\r\n<br />\r\nSabtu, 12 Juni 2010<br />\r\nArgentina v Nigeria, 12:30<br />\r\nKorea Selatan v Yunani, 15:00<br />\r\n<br />\r\nKamis, 17 Juni 2010<br />\r\nArgentina v Korea Selatan, 19:30<br />\r\nYunani v Nigeria, 15:00<br />\r\n<br />\r\nSelasa, 22 Juni 2010<br />\r\nYunani v Argentina, 19:30<br />\r\nNigeria v Korea Selatan, 19:30<br />\r\n<br />\r\nGrup C<br />\r\n<br />\r\nSabtu, 12 Juni 2010<br />\r\nEngland v USA, 19:30<br />\r\n<br />\r\nMinggu, 13 Juni 2010<br />\r\nAlgeria v Slovenia, 12:30<br />\r\n<br />\r\nJumat, 18 Juni 2010<br />\r\nEngland v Aljazair, 19:30<br />\r\nSlovenia v USA, 15:00<br />\r\n<br />\r\nRabu, 23 Juni 2010<br />\r\nSlovenia v England, 15:00<br />\r\nUSA v Aljazair, 15:00<br />\r\n<br />\r\nGrup D<br />\r\n<br />\r\nMinggu, 13 Juni 2010<br />\r\nJerman v Australia, 15:00<br />\r\nSerbia v Ghana, 19:30<br />\r\n<br />\r\nJumat, 18 Juni 2010<br />\r\nJerman v Serbia, 12:30<br />\r\n<br />\r\nSabtu, 19 Juni 2010<br />\r\nGhana v Australia, 12:30<br />\r\n<br />\r\nRabu, 23 Juni 2010<br />\r\nAustralia v Serbia, 19:30<br />\r\nGhana v Germany, 19:30<br />\r\n<br />\r\nGrup E<br />\r\n<br />\r\nSenin, 14 Juni 2010<br />\r\nJepang v Kamerun, 15:00<br />\r\nBelanda v denmark, 12:30<br />\r\n<br />\r\nSabtu, 19 Juni 2010<br />\r\nKamerun v denmark, 19:30<br />\r\nBelanda v Jepang, 15:00<br />\r\n<br />\r\nKamis, 24 Juni 2010<br />\r\nKamerun v Belanda, 19:30<br />\r\nDenmark v Jepang, 19:30<br />\r\n<br />\r\nGrup F<br />\r\n<br />\r\nSenin, 14 Juni 2010<br />\r\nItalia v Paraguay, 19:30<br />\r\n<br />\r\nSelasa, 15 Juni 2010<br />\r\nSelandia Baru v Slowakia, 12:30<br />\r\n<br />\r\nMinggu, 20 Juni 2010<br />\r\nItalia v Selandia Baru, 15:00<br />\r\nParaguay v Slowakia, 12:30<br />\r\n<br />\r\nKamis, 24 Juni 2010<br />\r\nParaguay v Selandia Baru, 15:00<br />\r\nSlovakia v Italia, 15:00<br />\r\n<br />\r\nGrup G<br />\r\n<br />\r\nSelasa, 15 Juni 2010<br />\r\nBrasil v Korea Utara, 19:30<br />\r\nPantai Gading v portugal, 15:00<br />\r\n<br />\r\nMinggu, 20 Juni 2010<br />\r\nBrasil v Pantai Gading, 19:30<br />\r\n<br />\r\nSenin, 21 Juni 2010<br />\r\nPortugal v Korea Utara, 12:30<br />\r\n<br />\r\nJumat, 25 Juni 2010<br />\r\nKorea Utara v Pantai Gading, 15:00<br />\r\nPortugal v Brazil, 15:00<br />\r\n<br />\r\nGrup H<br />\r\n<br />\r\nRabu, 16 Juni 2010<br />\r\nHonduras v Chili, 12:30<br />\r\nSpanyol v Swiss, 15:00<br />\r\n<br />\r\nSenin, 21 Juni 2010<br />\r\nChili v Swiss, 15:00<br />\r\nSpanyol v Honduras, 19:30<br />\r\n<br />\r\nJumat, 25 Juni 2010<br />\r\nChili v Spanyol, 19:30<br />\r\nSwiss v Honduras, 19:30\r\n</p>\r\n<p>\r\n(sumber: pialadunia2010com.com) \r\n</p>\r\n', 'Sabtu', '2010-04-10', '22:21:38', '54bola.jpg', 18, 'sepakbola'),
(102, 2, 'admin', 'Lionel Messi ''Berlumuran'' Rekor Gol', 'lionel-messi-berlumuran-rekor-gol', 'Y', '<p>\r\nTanpa ampun Lionel Messi menggelontor gawang Arsenal dengan empat gol\r\ndi Camp Nou. Dengan gol-gol itu, si andalan Barcelona pun bikin\r\nsejumlah raihan positif.<br />\r\n<br />\r\nDi hadapan sekitar 95 ribu penonton yang memadati Camp Nou, Rabu (7/4/2010) dinihari WIB, Barca memastikan laju ke semifinal usai Messi menjebol gawang Manuel Almunia pada menit 21,\r\n37, 42 dan 88. Arsenal sendiri hanya sempat membalas lewat gol Nicklas\r\nBendtner pada menit 18.<br />\r\n<br />\r\nDengan penampilan apik berbuah gol-gol\r\ntersebut, Messi dicatat situs Barca membuat sejumlah capaian. Berikut\r\ncapaian-capaian tersebut:<br />\r\n</p>\r\n<ul>\r\n	<li>\r\n	Ini adalah kali pertama Messi bikin\r\n	empat gol dalam satu pertandingan untuk Barca. Sebelumnya, si pemain\r\n	Argentina itu &quot;cuma&quot; bisa bikin lima hat-trick dan 18 kali membuat\r\n	sepasang gol dalam satu laga.</li>\r\n	<li>Messi menjadi pemain pertama musim ini yang berhasil membuat empat gol dalam satu laga di Liga Champions.</li>\r\n	<li>Messi menjadi satu dari enam pemain di dalam sejarah kompetisi ini\r\n	untuk membuat empat gol di satu partai. Sebelumnya telah ada Marco Van\r\n	Basten (AC Milan), Simone Inzaghi (Lazio), Dado Prso (M&ograve;naco), Ruud Van\r\n	Nistelroy (M. United) dan Andriy Shevchenko (AC Milan). Artinya, Messi\r\n	juga menjadi pemain pertama Barca yang melakukannya.</li>\r\n	<li>Berkat\r\n	tiga gol di paruh pertama, Messi menjadi satu dari sembilan pemain yang\r\n	mampu bikin hat-trick di babak pertama partai Liga Champions. Messi\r\n	adalah pemain pertama yang melakukannya musim ini.</li>\r\n	<li>Tambahan\r\n	empat gol ke gawang Arsenal membuat total gol Messi di Liga Champions\r\n	menjadi 25 gol. Ini menyamai pundi gol mantan pemain Barca, Rivaldo,\r\n	yang juga topskorer Barca dalam kompetisi tersebut.</li>\r\n	<li>Dengan\r\n	empat gol ke gawang Arsenal di satu partai, Messi membuat klub London\r\n	tersebut menjadi tim yang paling banyak dia bobol gawangnya di Eropa.\r\n	Sevilla dan Atletico Madrid adalah lumbung gol kesukaan Messi di La\r\n	Liga Primera dengan tujuh gol.</li>\r\n	<li>Dengan tambahan empat gol,\r\n	Messi kini menjadi topskorer sementara Liga Champions dengan delapan\r\n	gol. Pesaing terdekatnya adalah andalan Real Madrid --yang sudah\r\n	tersingkir-- Cristiano Ronaldo (tujuh gol) dan bintang Manchester\r\n	United Wayne Rooney (lima gol).</li>\r\n	<li>Messi sudah mengoleksi total\r\n	39 gol musim ini. Jumlah itu lebih banyak satu gol ketimbang musim\r\n	lalu. Messi kini bahkan melakukannya hanya dalam 42 laga, delapan\r\n	partai lebih sedikit dibandingkan musim lalu.</li>\r\n	<li>Empat gol ke\r\n	gawang Arsenal juga menambah catatan gol Messi di kandang Barca, yang\r\n	kini menjadi 67 gol. Sejumlah 52 gol lain dia buat di laga tandang.\r\n	</li>\r\n</ul>\r\n<p>\r\n(sumber: detiksport.com) \r\n</p>\r\n', 'Sabtu', '2010-04-10', '22:28:32', '51messi.jpg', 21, 'sepakbola'),
(103, 22, 'admin', 'Penanganan Gempa Berjalan Cepat, Presiden SBY Puas', 'penanganan-gempa-berjalan-cepat-presiden-sby-puas', 'Y', '<p>\r\nPresiden\r\nSusilo Bambang Yudhoyono (SBY) mengaku puas atas reaksi\r\ninstansi-instansi terkait dalam menangani gempa di Nanggroe Aceh\r\nDarussalam dan beberapa daerah di Sumatera pada Rabu (7/4) pukul 05.15\r\nWIB. Menurut Presiden, sistem reaksi cepat penanggulangan bencana telah\r\nberjalan dengan baik.<br />\r\n<br />\r\n&quot;Saya juga senang bahwa sistem telah\r\nberjalan karena begitu diterima gempa, satuan reaksi cepat\r\npenanggulangan bencana siap di Halim,&quot; kata Presiden di Bandara Halim\r\nPerdanakusuma, Rabu (7/4). Presiden menyampaikan hal itu sebelum\r\nbertolak menuju Hanoi, Vietnam untuk menghadiri KTT ASEAN hingga Sabtu\r\n(10/4).<br />\r\n<br />\r\nPresiden mengatakan, dirinya langsung berkomunikasi\r\nKetua Badan Nasional Penanggulangan Bencana (BNPB), Gubernur NAD, dan\r\nGubernur Sumatera Utara. Melalui komunikasi itu, Presiden mendapat\r\ninformasi bahwa kerusakan yang ditimbulkan tergolong ringan dan\r\npemadaman listrik sudah berakhir. Presiden mengucapkan terima kasih\r\natas kerja sigap instansi terkait.<br />\r\n<br />\r\nDalam kesempatan sama,\r\nMenteri Sosial, Salim Segaf Aljufri, mengatakan, dampak dari gempa di\r\nAceh itu tergolong ringan, tidak banyak bangunan yang rusak berat.\r\n&quot;Luka berat empat orang, seluruhnya 12 orang yang dirawat di rumah\r\nsakit,&quot; kata mantan Dubes RI di Arab Saudi ini.<br />\r\n<br />\r\nSalim\r\nmengatakan, gempa itu juga masih bisa ditangani oleh pemerintah daerah.\r\nAlasannya, stok bantuan bahan pangan di daerah masih mencukupi,\r\nkhususnya beras dan lauk pauk. &quot;Buffer stock kita di provinsi cukup,\r\nberas ada 50 ton,&quot; ujar Salim. Penyaluran bantuan pun belum ada kendala\r\nberarti.\r\n</p>\r\n<p>\r\n(sumber: republika.co.id) \r\n</p>\r\n', 'Sabtu', '2010-04-10', '22:32:19', '58sby.jpg', 10, ''),
(104, 23, 'admin', 'Film ''My Name is Khan'' Cetak Rekor di Amerika', 'film-my-name-is-khan-cetak-rekor-di-amerika', 'Y', '<p>Dengan US$1,86 juta pada <em>box office</em> di minggu pertamanya, film <em>My Name is Khan</em> yang dibintangi Shah Rukh Khan telah memecahkan rekor sebagai film India dengan pendapatan terbanyak yang diputar di Amerika Utara. <br /> <br /> Film arahan Karan Johar ini diperkirakan menghasilkan US$15.500 dari 120 bioskop di AS dan Kanada pada akhir pekan 12-14 Februari 2009. Rekor sebelumnya dipegang film musikal yang juga dibintangi Shah Rukh, <em>Om Shanti Om</em>, dengan pendapatan US$1,76 juta dari 114 bioskop saat dirilis pada 2007. <br /> <br /> Saat diluncurkan Jumat (12/2), <em>My Name is Khan</em> langsung mendapatkan US$444 ribu, lalu langsung meningkat 65% menjadi US$734.000 Sabtu (13/2). Tapi, film ini lalu menurun sebanyak 7% menjadi US$682 ribu pada Minggu (14/2) yang bertepatan dengan Hari Valentine. <br /> <br /> Terlebih lagi, <em>My Name is Khan</em> mendapatkan pujian dari kritikus AS. Publikasi surat kabar <em>Hollywood Reporter</em> mengatakan, "Ini sepadan untuk perjalanan selama 162 menit. Shah Rukh Khan datang ke Amerika (walau melalui film Bollywood) dan telah menunjukkan bahwa dirinya adalah megabintang India," tambahnya. <br /> <br /> "Yang khas dari bintang Bollywood adalah mereka tidak hanya aktor yang berkualitas, tapi juga memiliki kharisma. Jadi, tidak mengejutkan bila menemukan megabintang Shah Rukh Khan dalam <em>My Name is Khan</em>. Tampaknya ia sedang menantang dirinya sendiri untuk meningkatkan kemampuan aktingnya dan memperluas jaringan penggemar internasionalnya." <br /> <br /> "Dengan arahan sutradara andal Karan Johar dan musik pengiring yang menggugah oleh Shankar, Ehsaan &amp; Loy, Khan membuat kita mudah meneteskan air mata seraya mengajarkan kita mengenai Islam dan toleransi," kata surat kabar <em>Times</em>. <br /> <br /> Di dalam negeri sendiri, pada saat rilis perdananya, Jumat (12/2), hanya 13 bioskop yang memutarnya dari awal rencana 63 bioskop. Tapi, pada Sabtu (13/2), semua bioskop di Mumbai, Pune, dan Maharashra telah menayangkannya. Terakhir, pendapatan film tersebut di seluruh dunia telah mencapai US$18 juta.</p>\r\n<p>(sumber: mediaindonesia.com)</p>', 'Sabtu', '2010-04-10', '22:46:50', '39khan.jpg', 18, 'film'),
(105, 2, 'admin', 'Taufik Berada di Grup Maut Kejuaran Dunia Bulutangkis', 'taufik-berada-di-grup-maut-kejuaran-dunia-bulutangkis', 'Y', '<p>\r\nTaufik Hidayat akan menghadapi pemain China, Bao Chunlai, di babak awal pertadingan Grup A \r\nkejuaraan World Super Series Masters Finals, Rabu (2/11).<br />\r\n<br />\r\nTaufik,\r\nyang merupakan satu-satunya pemain tunggal putra asal Indonesia,\r\nbergabung di Grup A bersama peringkat satu dunia Lee Chong Wei, Bao\r\nChunlai, serta pemain China Taipei, Hsieh Yu Hsin.<br />\r\n<br />\r\nMemakai\r\nsistem pertandingan round robin, Taufik akan menghadapi Chunlai,\r\nsedangkan Chong Wei bertemu dengan Hsieh Yu Hsin dalam pertandingan\r\nlainnya, Rabu (2/11).<br />\r\n<br />\r\nGrup A dianggap sebagai grup neraka atau\r\nmaut, sedangkan Grup B terdiri dari dua pemain Denmark, Peter Hoeg Gade\r\ndan Jan O Jorgensen, serta pemain Thailand, Boonsak Ponsana.<br />\r\n<br />\r\nTaufik\r\nsendiri menjadi satu-satunya pemain tunggal asal Indonesia setelah Sony\r\nDwi Kuncoro dan Simon Santoso absen karena diprioritaskan bermain di\r\najang SEA Games, Laos, Desember ini.<br />\r\n<br />\r\nPeraih medali emas\r\nOlimpiade Atlanta 2004 ini mengaku siap menghadapi tantangan di grup\r\nyang berat ini. Di jejaring sosial Facebook, ia menulis, &quot;Death Group?&quot;\r\nTantangan berat di Johor Bahru, tapi harus memberi yang terbaik! Let&#39;s\r\nGo!\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<div style="text-align: center">\r\n<img src="http://localhost./lokomedia/tinymcpuk/gambar/Image/taufik_hidayat.jpg" alt=" " width="350" height="250" />\r\n</div>\r\n<br />\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\nGrup A<br />\r\n1 [MAS] LEE Chong Wei<br />\r\n1 [CHN] BAO Chunlai <br />\r\n1 [INA] HIDAYAT Taufik<br />\r\n1 [TPE] HSIEH Yu Hsin<br />\r\n<br />\r\nGrup B<br />\r\n1 [DEN] GADE Peter Hoeg<br />\r\n1 [KOR] PARK Sung Hwan <br />\r\n1 [DEN] O JORGENSEN Jan<br />\r\n1 [THA] PONSANA Boonsak\r\n</p>\r\n<p>\r\n(sumber: beritajitu.com) \r\n</p>\r\n', 'Sabtu', '2010-04-10', '22:51:14', '92taufik.jpg', 75, 'tenis'),
(122, 22, 'admin', 'Terima Kasih Gayus Tambunan', 'terima-kasih-gayus-tambunan', 'Y', '<p>\r\nSekali lagi, terima kasih Gayus Tambunan! Kita semua mesti berterima \r\nkasih pada pegawai Pajak golongan III A  ini.\r\nGara-gara aksinya terbongkar, semua mata kini memandang ke kasus  \r\npenggelapan pajak yang menimpanya. 25 Milyar rupiah bukan jumlah yang  \r\nsedikit. Apalagi dimiliki seorang pegawai negeri sipil yang gaji per  \r\nbulan plus tunjangan ini itu 12 jutaan.\r\n</p>\r\n<p>\r\nBerterima kasihlah pada Gayus. Karena berkat jasanya lah kasus  Century \r\njadi temaram. Siapa yang peduli dengan kasus 6,7 trilyun yang  tak jelas\r\nkemana itu. Setidaknya kini media massa ramai-ramai berdendang  lagu \r\nGAYUS. Lupakan huru hara di panggung paripurna DPR bulan lalu.  Lupakan \r\npula rekomendasi yang meminta penon aktifan dua petinggi negara,  Wapres\r\nBoediono dan Menteri Keuangan Sri Mulyani.\r\n</p>\r\n<p>\r\nKini arahkan pandangan kita pada rumah megah Gayus di Kelapa Gading.  \r\nSaya sendiri hanya berdecak kaget. Wow, darimana ya si Gayus yang masih \r\n30 tahunan itu bisa membangun istana semegah itu?\r\n</p>\r\n<p>\r\nBenarkah itu <em>tilepan</em> pajak rakyat? Atau suap para  pengemplang \r\npajak agar cuma bayar pajak dalam jumlah kecil. Entahlah.\r\n</p>\r\n<p>\r\nYang jelas saya ingin berucap terima kasih pada Gayus, karena berkat  \r\nkasusnya KPK, kepolisian, kejaksaan, atau para pengacara kondang bakal  \r\ndapat job menggiurkan. Ya siapa tahu kecipratan 25 M!\r\n</p>\r\n<p>\r\nGayus, di tangan saya masih ada form SPT yang baru terisi separuhnya.  \r\nSaya berencana menyerahkan form ini sebelum &ldquo;D&rdquo; day 31 Maret mendatang. \r\nTapi hati saya galau. Sebagai warga negara yang baik saya biasanya taat\r\nbayar pajak. Karena saya sadar pajak itu akan kembali pada kita \r\nsebagai  warga dalam bentuk layanan dan fasilitas publik.\r\n</p>\r\n<p>\r\nTapi, kelakuanmu Gayus, membuat saya dan juga pembayar pajak yang  taat \r\nterluka. Apalah artinya laporan pajak saya yang &#39;cuma&#39; beberapa  juta \r\nrupiah ini, jika ternyata uang pajak yang mestinya disalurkan  \r\ndikemplang pegawainya sendiri?\r\n</p>\r\n<p>\r\nHaruskah saya bayar pajak, Gayus? (sumber:www.kompas.com)\r\n</p>\r\n', 'Kamis', '2011-02-10', '23:23:57', '80gayus.jpg', 17, 'gayus'),
(121, 2, 'admin', 'Hantam Laos 6-0, Indonesia Semifinal', 'hantam-laos-60-indonesia-semifinal', 'Y', '<p>\r\nIndonesia menang meyakinkan atas Laos. Enam\r\ngol mereka lesakkan, membuat mereka lolos ke semifinal dengan status \r\njuara Grup A. Di stadion Gelora Bung Karno, Sabtu (4/12/2010), \r\nIndonesia langsung menekan sejak awal laga. Lewat sebuah serangan balik,\r\nIndonesia mengancam pertahanan Laos melalui M. Ridwan di sisi sayap \r\nkanan. Tapi umpan silang Ridwan masih bisa dihalau. Sepak pojok untuk \r\nIndonesia.\r\n</p>\r\n<p>\r\nPada menit ketujuh, Ridwan kembali mencoba \r\nperuntungannya. Tapi tendangan kaki kananannya dari luar kotak penalti \r\nmembentur tubuh pemain Laos. Kembali, Indonesia mendapatkan sepak pojok.<br />\r\n<br />\r\nSemenit\r\nberselang, umpan silang Firman Utina di sayap kiri diterima oleh Hamka \r\nHamzah di tiang jauh. Sial bagi Hamka, sundulannya masih melenceng \r\ntipis.<br />\r\n<br />\r\nOoh! Laos mendapatkan kesempatan emas pertamanya dalam \r\nlaga ini. Sepakan Kaysone Soukhavong dari luar kotak penalti membentur \r\ntiang gawang Indonesia. Nyaris.<br />\r\n<br />\r\nPenalti untuk Indonesia! Cristian\r\nGonzales dijatuhkan di dalam kotak penalti ketika memggiring bola di \r\ndalam kotak penalti.<br />\r\n<br />\r\nFirman Utina maju menjadi eksekutornya, dan \r\nkapten Indonesia ini berhasil mengecoh kiper Sengphachan Bounthisanh \r\nuntuk membawa Indonesia unggul 1-0.<br />\r\n<br />\r\nGol lagi untuk Indonesia! \r\nAksi Ridwan, usai memanfaatkan blunder operan Kitsada, membawa Indonesia\r\nunggul 2-0 atas Laos.<br />\r\n<br />\r\nRidwan membawa bola sendirian ke dalam \r\nkotak penalti, ia mengecoh kiper Bounthisanh, dan menceploskan bola ke \r\ndalam gawang, meski sempat terpeleset. <br />\r\n<br />\r\nIndonesia memulai babak \r\nkedua dengan baik, dan tepat pada menit 49 &#39;Garuda&#39; kembali membobol \r\njala Laos. Kembali Firman yang menjadi pencetak golnya.<br />\r\n<br />\r\nGol \r\ntersebut diawali oleh operan satu-dua dengan Ridan di luar kotak \r\npenalti. Begitu kembali menerima bola, Firman melepaskan sepakan kaki \r\nkanan ke tiang jauh. Indonesia unggul 3-0.<br />\r\n<br />\r\nKeunggulan Indonesia \r\nbertambah besar menjadi 4-0 di menit 51 dan yang menjadi pendulangnya \r\nadalah Irfan Bachdim. Ini adalah gol keduanya dalam turnamen ini.<br />\r\n<br />\r\nGol\r\nkeempat Indonesia itu tercipta setelah Irfan melakukan operan satu-dua \r\ndengan Cristian Gonzales. Lewat satu sepakan kaki kanan ke tiang jauh, \r\nIrfan pun membobol jala Laos.<br />\r\n<br />\r\nTekanan Indonesia ke pertahana Laos\r\nakhirnya kembali berbuah hasil di menit 76. Berawal dari umpan lambung \r\nFirman, terjadi kemelut di dalam kotak penalti Laos.<br />\r\n<br />\r\nSepakan \r\nHamka masih bisa ditepis Bounthisanh, tapi bola disambar oleh Arief \r\nSuyono dan terciptalah gol kelima Indonesia. Ini adalah gol kedua Arief \r\ndalam turnamen ini.<br />\r\n<br />\r\nGol lagi! Indonesia unggul jauh 6-0 atas Laos\r\ndi menit 80 dengan diawali oleh umpan terobosan Irfan kepada Okto \r\nManiani. Lewat kecepatannya, Okto mengungguli dua pemain Laos dan \r\nmelepaskan tendangan kaki kiri ke tiang dekat. Si pemain nomor 10 ini \r\nakhirnya mencetak gol.<br />\r\n<br />\r\nAksi Okto itu kemudian menjadi gol penutup\r\ndalam pertandingan ini. Indonesia menang enam gol tanpa balas dan \r\nberhak melaju ke semifinal dengan status juara Grup A. \r\n</p>\r\n', 'Kamis', '2011-02-10', '23:22:35', '1bachdim.jpg', 26, 'sepakbola'),
(120, 23, 'admin', 'Saat Raja Belajar Bertutur Kata', 'saat-raja-belajar-bertutur-kata', 'Y', '<p>Ini dia film yang meraih perolehan nominator terbanyak dalam acara Academy Awards ke 83. Dari 24 jumlah nominasi yang ada, The King''s Speech berhasil meraih setengahnya dan menjadikan film produksi See Saw Films dan Bedlam Productions itu merajai Oscar 2011 yang merupakan ajang perfilman paling bergengsi di dunia.<br /> <br /> Setelah kematian ayahandanya, raja George V (Michael Gambon), pangeran Albert (Colin Firth) akhirnya dinobatkan sebagai raja. Diangkatnya ayah dua anak ini menjadi raja baru Inggris karena sang kakak, pangeran Edward VIII (Guy Pearce) yang seharusnya berkuasa, rela turun tahta karena lebih memilih seorang janda keturunan Amerika untuk dinikahinya. <br /> <br /> Tapi apa jadinya jika seorang raja menderita kesulitan berbicara?terutama pada saat berpidato. Karena sebelum dinobatkan sebagai Raja, beberapa kali Bertie (panggilan pangeran Albert dari orang-orang terdekatnya) harus mewakili pidato ayahnya yang sakit, baik secara langsung maupun melalui siaran radio dan hasilnya sangat mengecewakan bagi siapa saja yang mendengarnya.<br /> <br /> Dibantu sang istri tercinta, Elizabeth (Helena Bonham Carter), Raja George VI menemui ahli terapi bicara bersama Lionel Logue (Geoffrey Rush) yang eksentrik. Pertemuan keduanya walau diawali dengan perseteruan, keduanya akhirnya menjalani program terapi dan akhirnya membentuk ikatan yang tak terpisahkan.<br /> <br /> Masalah raja George VI ternyata bukan hanya dari dalam dirinya saja, dengan keadaan negara yang diambang peperangan, raja baru itu akhirnya melakukan pidato pertamanya di radio BBC untuk rakyat dan negaranya. Dengan dukungan dari Lionel, keluarga, pemerintah dan Winston Churchill (Timothy Spall), mampukah raja baru ini menginspirasi seluruh Inggris untuk bersiap melawan kebrutalan tentara Jerman.<strong><br /> </strong> <br /> Kejeniusan sang sutradara mengemas film akhirnya memberikan jaminan <strong>The King''s Speech</strong> menjadi tontonan yang sangat menarik. Anda akan merasakan emosi sekaligus tertawa saat melihat Colin Firth yang sangat mendalami karakter raja George VI. Akting Geoffrey Rush sebagai ahli bicara membuktikan dirinya memang jago berbicara, bahkan di hadapan seorang Raja.</p>', 'Kamis', '2011-02-10', '23:15:39', '89speech.jpg', 6, 'film'),
(124, 19, 'admin', '67 Angry Birds Siap Hadirkan Budaya Indonesia', '67-angry-birds-siap-hadirkan-budaya-indonesia', 'Y', '<p>Game mobile Angry Birds yang tengah digandrungi, rencananya akan masuk pasar Indonesia. Tim game Rovio ingin menggaet developer tanah air. Mereka mengaku mengharapkan kelahiran Angry Birds yang khas Indonesia.</p>\r\n<p>"Kami mengerti (keinginan) itu. Siapa tahu nantinya Angry Birds ala Indonesia akan memakai batik," ungkap Chief Marketing Officer Rovio, Peter Vesterbacka, saat ditemui di Hotel Kempinski, Jakarta, Rabu (25/1). "Tapi kami ingin menyelami lebih dalam. Apa saja yang bisa digali dari Indonesia."</p>\r\n<p>Peter juga mengungkapkan telah menerima banyak masukan untuk menghadirkan wayang, batik, garuda dan Bali di game tersebut. Untuk itu, Rovio bersama Nokia kemudian menggelar kompetisi. Diharapkan dari situ akan lahir Angry Birds yang "Indonesia Banget".</p>\r\n<p>Sayangnya, Peter enggan menyebutkan kapan tepatnya rencana itu akan direalisasikan. Namun ini tetap menjadi kabar baik untuk developer lokal untuk semakin berkibar. "Pengembang aplikasi di Indonesia memiliki potensi dan talenta untuk dikembangkan," lanjut Peter yakin.</p>\r\n<p>(sumber: wowkeren.com)</p>', 'Sabtu', '2012-02-11', '01:14:45', '32angrybird.jpg', 84, 'film'),
(137, 23, 'wiro', 'Teknik Looping Didalam Looping Disertai Studi Kasusnya', 'teknik-looping-didalam-looping-disertai-studi-kasusnya', 'Y', '<p>Dalam logika pemrograman, looping (perulangan) digunakan untuk mengulang suatu proses. Namun, dalam tutorial kali ini, saya tidak akan membahas dasar-dasar looping (perulangan), jadi saya langsung aja ke permasalahannya mengapa diperlukan looping didalam looping? Dalam kasus tertentu, looping saja tidaklah cukup, misalnya membuat rekap data yang kompleks dari beberapa tabel dan menampilkan masing-masing berita dalam suatu kategori. Dalam kedua kasus tersebut diperlukan looping didalam looping (while didalam while).</p>\r\n<p>Agar tidak tambah bingung, saya akan berikan contohnya secara bertahap, biasanya dalam menampilkan data dalam suatu tabel kategori hanya diperlukan satu looping, contoh skripnya sebagai berikut:</p>\r\n<pre class="brush: php;fontsize: 100; first-line: 1; ">&nbsp;</pre>\r\n<p>Apabila dijalankan di browser, maka hasilnya dapat dilihat pada gambar berikut:</p>\r\n<p><img src="../tinymcpuk/gambar/image/kategori.jpg" alt="" width="558" height="254" /></p>\r\n<p>Selanjutnya, kita akan menampilkan beberapa berita didalam masing-masing kategori. Logikanya, setelah looping (while) untuk menampilkan kategori, maka perlu diselipkan satu looping lagi untuk menampilkan berita didalam looping kategori. Dan tentu saja, berita yang tampil haruslah berhubungan dengan kategorinya.</p>\r\n<p>Untuk itu, coba perhatikan dulu relasi antara tabel kategori dengan tabel berita pada gambar berikut:</p>\r\n<p><img src="../tinymcpuk/gambar/image/tabel.jpg" alt="" width="368" height="181" /></p>\r\n<p>Kemudian baru kita bikin skripnya sebagai berikut:</p>\r\n<pre class="brush: php;fontsize: 100; first-line: 1; ">&nbsp;</pre>\r\n<p>Sekarang coba jalankan di browser, maka hasilnya dapat dilihat pada gambar berikut:</p>\r\n<p><img src="../tinymcpuk/gambar/image/beritadalamkategori.jpg" alt="" width="573" height="662" /></p>\r\n<p>Saya juga telah mengimplementasikan teknik looping didalam looping di CMS Lokomedia pada templates eL jQuery ala Yahoo, silahkan buka file kiri.php pada folder templates/eljquery-yahoo. Hasilnya dapat dilihat pada gambar berikut:</p>\r\n<p><img src="../tinymcpuk/gambar/image/beritakategori.jpg" alt="" /></p>\r\n<p>Oke, demikianlah sekilas kegunaan teknik looping dalam looping. Untuk mendownload skrip dan database latihannya, silahkan <a href="../files/loop.rar" target="_blank"><strong>Klik Disini</strong></a>.</p>\r\n<p>asasd</p>\r\n<p>&nbsp;</p>', 'Selasa', '2012-05-01', '20:20:20', '50coding.jpg', 83, 'google');

-- --------------------------------------------------------

--
-- Table structure for table `berita2`
--

CREATE TABLE IF NOT EXISTS `berita2` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=152 ;

--
-- Dumping data for table `berita2`
--

INSERT INTO `berita2` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `headline`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(148, 23, 'admin', 'Tantowi Yahya: Jangan Gampang Bawa-bawa Nama Rakyat Deh', 'tantowi-yahya-jangan-gampang-bawabawa-nama-rakyat-deh', 'Y', '<p>Tribunnews.com, Jakarta &mdash; Wakil Sekretaris Jenderal Partai Golkar Tantowi Yahya merasa rakyat sebenarnya tidak berkeberatan dengan pelaksanaan pemilihan kepala daerah melalui DPRD. Ketidaksetujuan rakyat yang terdengar selama ini, menurut dia, hanya pembentukan opini semata.<br />\r\n&quot;Rakyat yang mana (tidak setuju pilkada lewat DPRD)? Kasihan nama mereka dipakai oleh lembaga survei, konsultan politik, makelar politik, dan media yang terancam bangkrut. Serta kepala daerah yang mau maju lagi, tapi tanpa partai atau lagi cari perhatian agar duduk di kabinet,&quot; kata Tantowi melalui pesan elektronik kepada Kompas.com, Jumat (12/9/2014) siang.<br />\r\nMenurut Tantowi, berbagai kalangan yang selama ini menolak pilkada lewat DPRD tidaklah mewakili aspirasi rakyat. Pasalnya, mereka mempunyai kepentingan-kepentingan tertentu yang hanya menguntungkan mereka secara pribadi.<br />\r\n&quot;Bukan rahasia lagi lembaga-lembaga survei itu bukan hanya dapat fee yang besar, tapi juga konsesi-konsesi ketika calon mereka menang. Wajar kalau mereka sekarang biayain LSM-LSM yang sekarang teriak-teriak atas nama &#39;rakyat&#39; dan rencananya akan menyerbu DPR bahkan akan membakarnya,&quot; ujar Tantowi.<br />\r\n&quot;Koalisi Merah Putih kerja keras untuk melawan pembentukan opini yang sekarang sedang berlangsung. Kerja kami berat karena tidak didukung media-media mainstream,&quot; tambah juru bicara Koalisi Merah Putih ini.<br />\r\nTantowi mengaku, dirinya sudah mengadakan survei kecil-kecilan di daerah pemilihannya di Sumsel 2 tentang pilkada langsung dan tak langsung. Respondennya berjumlah 200 orang.<br />\r\n&quot;Sebagian besar mereka enggak begitu peduli mau langsung atau tidak. Toh, kata mereka, kepala daerah hasil pemilihan langsung juga tidak membawa perubahan. He-he-he, di koran malah ramai diberitakan rakyat keberatan,&quot; ujarnya.<br />\r\nTantowi sebagai wakil rakyat di DPR merasa tahu betul apa yang diinginkan rakyat.<br />\r\n&quot;Jangan gampang bawa-bawa nama rakyat deh. Saya ini wakil rakyat, punya konstituen riil yang terus komunikasi. Kasihan rakyat dijadikan tameng kepentingan,&quot; pungkas Anggota Komisi II DPR ini.<br />\r\nRUU Pilkada saat ini tengah dibahas Panitia Kerja DPR. Mekanisme pemilihan kepala daerah menjadi salah satu isu yang mendapat sorotan. Sebelum Pilpres 2014, tak ada parpol yang ingin jika kepala daerah dipilih oleh DPRD.<br />\r\nNamun, kini semua parpol Koalisi Merah Putih, yakni Partai Golkar, Partai Gerindra, Partai Demokrat, Partai Persatuan Pembangunan, dan Partai Amanat Nasional, ditambah Partai Demokrat, malah mendorong agar kepala daerah dipilih oleh DPRD.<br />\r\nPara bupati dan wali kota yang tergabung dalam Asosiasi Pemerintah Kabupaten Seluruh Indonesia (Apkasi) dan Asosiasi Pemerintah Kota Seluruh Indonesia (Apeksi) menolak tegas pilkada oleh DPRD.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Sabtu', '2014-09-13', '14:22:39', '1120140822_065934_jumpa-pers-koalisi-merah-putih-sikapi-keputusan-mk.jpg', 1, ''),
(147, 0, 'admin', 'Tarif Penyeberangan Ketapang-Gilimanuk Naik Mulai 15 September', 'tarif-penyeberangan-ketapanggilimanuk-naik-mulai-15-september', 'Y', '<p style="text-align: justify;">TRIBUNNEWS.COM, BANYUWANGI - Terhitung mulai 15 September 2014, tarif penyeberangan dari Pelabuhan Ketapang ke Pelabuhan Gilimanuk Bali naik hingga 6,5 persen. Kenaikan ini berlaku untuk semua golongan penumpang dan kendaraan.<br />\r\nMelalui surat edaran PT ASDP Indonesia Ferry Pusat Nomor SE.10/OP.404/ASDP-KEN/2014 tentang Penyesuaian Tarif Penyeberangan Lintas Ketapang-Gilimanuk, penumpang dewasa harus membayar tiket Rp 8.000 dari tarif sebelumnya Rp 6.000.<br />\r\nSedangkan untuk kendaraan roda dua di bawah 500 cc dikenakan tarif dari Rp 19.000 menjadi Rp 25.000. Untuk kendaraan golongan empat dengan panjang sampai dengan 5 meter, kendaraan penumpang dikenai tarif Rp 135.000 dan kendaraan barang sebesar Rp 120.000.<br />\r\nKenaikan tarif tertinggi dikenakan pada kendaraan barang yang memiliki panjang 16 meter dari Rp 977.000 menjadi Rp 1.015.000.<br />\r\nSaat dihubungi, Sabtu (13/9/2014), Saharrudin Koto, Manajer Operasional PT ASDP Ketapang Banyuwangi, mengatakan, kenaikan tarif tersebut berdasarkan Peraturan Menteri Perhubungan Republik Indonesia Nomor PM.31 Tahun 2014 tanggal 15 Agustus 2014 dan Keputusan Direksi PT ASDP Indonesia Ferry (Pesero) Nomor KD.257/OP.404/ASDP-2014 tanggal 9 September 2014.<br />\r\n&quot;Kenaikan nanti pada 15 September 2014 pukul 00.00 WIB dan 00.00 WITA untuk wilayah Bali. Tentunya ini akan diikuti dengan peningkatan pelayanan kepada pengguna Pelabuhan Ketapang Banyuwangi serta Pelabuhan Gilimanuk Bali,&quot; ujarnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Sabtu', '2014-09-13', '14:21:33', '4620140913_141404_pelabuhan-ketapang-banyuwangi_new.jpg', 1, ''),
(145, 23, 'admin', 'Fadli Zon: Politisi Kutu Loncat Adalah Hama Dalam Demokrasi', 'fadli-zon-politisi-kutu-loncat-adalah-hama-dalam-demokrasi', 'Y', '<p style="text-align: justify;">TRIBUNNEWS.COM, JAKARTA - Wakil Ketua Umum Partai Gerindra, Fadli Zon, mengatakan Indonesia sudah melaksanakan pemilihan langsung untuk memilih kepala daerah.<br />\r\nOleh karena itu, wajar dievaluasi terutama maraknya politikus partai yang pindah partai atau yang bisa disebut kutu loncat.<br />\r\nMenurut Fadli, selama satu dekade ini, pilkada langsung menyebabkan tumbuh suburnya politikus yang gemar berpindah partai atau kutu loncat.<br />\r\n&quot;Di politik yang tumbuh adalah politisi kutu loncat. Dalam catatan Wikipedia, kutu loncat adalah serangga kecil dan masuk dalam Psyllidae kategori hama. Dalam demokrasi ini jadi hama. Kalau kutu busuk adalah kutu loncat yang sudah diberantas,&quot; kata Fadli dalam diskusi bertakuk &#39;Pilkada, untuk siapa&#39; di Warung Daun, Cikini, Jakarta, Sabtu (13/9/2014).<br />\r\nFadli melanjutkan, selama sepuluh tahun ini, partai tidak lagi menjadi alat ideologi atau alat perjuangan. Partai berubah menjadi alat sewaan para politikus.<br />\r\n&quot;Parpol tidak menjadi alat ideologi, tapi alat sewaan. Orang tahu Pilkada bayar mahal. Habis itu diitinggalkan. Parpol hanya numpang lewat bukan alat perjuangan,&quot; tukas Fadli.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Sabtu', '2014-09-13', '14:18:52', '6820140621_041541_20140620_fadli-zon.jpg', 1, ''),
(146, 19, 'admin', 'Bocah 11 Tahun Jadi Miliarder dari Hasil Menjahit Dasi Kupu-kupu', 'bocah-11-tahun-jadi-miliarder-dari-hasil-menjahit-dasi-kupukupu', 'Y', '<p style="text-align: justify;">TRIBUNNEWS.COM, MEMPHIS - Usia bukan menjadi penghalang seseorang untuk sukses dalam kehidupannya. Salah satu contohnya adalah Moziah &quot;Mo&quot; Bridges (11), yang pada usianya yang sangat belia sukses mengelola perusahaan produsen dasi kupu-kupu.<br />\r\nKesukaannya akan dasi kupu-kupu sudah dimulai sejak Mo berusia empat tahun. Dia selalu ingin berdandan rapi, lengkap dengan dasi kupu-kupu ke mana pun dia pergi, bahkan saat harus pergi ke toko sambil menunggang sepedanya.<br />\r\n&quot;Saya senang berdandan rapi. Saya merasa nyaman mengenakan pakaian rapi. Itu membuat saya merasa menjadi seorang yang penting,&quot; kata Mo.<br />\r\nBocah asal Memphis, Tennessee, Amerika Serikat (AS) ini kemudian mulai menjahit sendiri dasi kupu-kupunya saat berusia sembilan tahun. Awalnya, karena dia tak bisa menemukan dasi kupu-kupu yang sesuai dengan seleranya.<br />\r\nDengan bantuan sang nenek yang mengajarinya cara menjahit, Mo kemudian merancang dan membuat sendiri dasi kupu-kupunya. Namun, dasi kupu-kupu pertama buatannya tidak terlalu bagus dan bahkan Mo sendiri mengatakan bahwa dasi itu hanya cocok dikenakan para badut sirkus.<br />\r\nKegagalan itu justru memicu Mo belajar lebih giat. Dengan menggunakan mesin jahit milik neneknya, Mo terus berlatih hingga kemampuannya meningkat.<br />\r\nAkhirnya, sang nenek membelikannya sebuah mesin jahit sehingga Mo bisa semakin mengasah kemampuannya menjahit. Hanya dalam hitungan bulan, Mo sudah memiliki koleksi 30 model dasi kupu-kupu. Kegiatan Mo merancang dan membuat dasi kupu-kupu itu mendapat perhatian dari keluarganya.<br />\r\n&quot;Mereka memuji saat saya mengenakan dasi kupu-kupu itu dan bahkan menginginkan dasi itu. Jadi saya pikir mengapa tak menjualnya saja,&quot; papar bocah yang masih duduk di bangku sekolah dasar itu.<br />\r\nSaat itulah pada 2011, Mo mendirikan perusahaannya sendiri, Mo&#39;s Bows. Awalnya ibu dan neneknya ikut menjahit dasi itu yang kemudian dijual ke kalangan teman dan keluarga.<br />\r\nTak diduga, bisnis dasi Mo berkembang lewat promosi di media sosial dan kabar dari mulut ke mulut. Semakin hari produksi dasi Mo&#39;s Bows terus bertambah sehingga dia harus menambah karyawan.<br />\r\nKini, seorang nenek Mo yang lain, beberapa bibi, sepupu, dan teman duduk di meja makan kediaman Mo untuk membantunya membuat dasi kupu-kupu. Kadang-kadang Mo berjalan mengitari meja itu untuk &quot;mengawasi&quot; para karyawannya.<br />\r\nKini Mo bahkan tak lagi menggunakan kain-kain lama milik neneknya. Mo juga sudah menggunakan bahan-bahan baru untuk dasi kupu-kupunya, termasuk sutra dan satin. Lalu berapa penghasilan Mo dari bisnis ini? Sejak memulai bisnisnya pada 2011, penghasilannya terus meningkat.<br />\r\nPada tahun pertama, keuntungannya baru sekitar 10.000 dollar AS atau sekitar Rp 120 juta. Namun, pada tahun ketiga, keuntungan Mo sudah berlipat hingga mencapai 90.000 dollar atau lebih dari Rp 1 miliar.<br />\r\nDengan penghasilannya ini, Mo bisa menggaji pegawainya dan menyisihkan uang untuk biaya kuliahnya kelak. Bahkan Mo sudah mulai memikirkan kegiatan amal dengan memulai program &quot;Go Mo&#39;s Summer Camp&quot;.<br />\r\nIni adalah semacam program beasiswa untuk mengirim anak-anak tidak mampu ke kamp-kamp pelatihan musim panas. Meski sudah menjelma menjadi seorang pengusaha muda, Mo menyatakan kesuksesannya adalah berkat dukungan Tramica, bundanya.<br />\r\n&quot;Ibu selalu mendorong dan memberi motivasi agar saya terus maju. Saya sangat beruntung mendapatkan dukungan banyak orang sehingga bisnis ini bisa berjalan,&quot; tambah bocah itu.</p>\r\n', 'Sabtu', '2014-09-13', '14:20:08', '3120140912_165233_moziah-bridges.jpg', 1, ''),
(143, 2, 'admin', 'Jokowi Dijadwalkan Buka Seminar Ikatan Alumni Undip', 'jokowi-dijadwalkan-buka-seminar-ikatan-alumni-undip', 'Y', '<div class="side-article txt-article mb20 helvetica">\r\n<p><strong>TRIBUNNEWS.COM, SEMARANG</strong>-&nbsp;&nbsp; Rencananya Kamis (11/9/2014)&nbsp; Ikatan Alumni (IKA) Universitas Diponegoro mendatangkan Presiden RI terpilih, Joko Widodo di kampus Undip Pleburan.</p>\r\n<p>Kehadiran Jokowi untuk membuka Seminar Nasional "Transformasi Kelembagaan Pemerintah Untuk Optimalisasi Sumber Daya Indonesia" yang digelar IKA Undip.</p>\r\n<p>Ketua panitia, Setyo Maharso mengungkapkan, rencananya seminar akan berlangsung di Gedung Pasca Sarjana Undip Lantai 6 Jalan Imam Bardjo Pleburan, Semarang.</p>\r\n<p>"Seminar ini dalam rangka Rapat Kerja Nasional IKA Undip," katanya saat jumpa pers di Hotel Crowne Semarang, Rabu (10/9/2014).</p>\r\n<p>Dia menngungkapkan, selain Jokowi, IKA Undip juga mengundang sejumlah narasumber ternama. Di antaranya, Sekretaris Kementerian PAN dan RB RI Tasdik Kinanto, Rektor Undip Prof Sudharto P Hadi, Kepala Biro Hukum Kementerian Dalam Negeri RI Prof Dr Zudan A Fakhrullah, Deputi Hukum dan HAM Kementerian Koordinator Politik, Hukum dan HAM RI Dr Noor Rachmad, Kepala Badan Pertanahan Nasional RI Dr (HC) Hendarman Supandji,&nbsp; Direktur Utama Bank BTN Maryono dan sejumlah tokoh lainnya.</p>\r\n<p>Maharso mengatakan, pihaknya sudah melakukan audiensi dengan Wali Kota Semarang terkait pelaksanaan seminar tersebut. Wali Kota pun memberikan sambutan positif.</p>\r\n<p>Adapun, ketua IKA Undip, Maryono mengatakan, seminar nasional tersebut merupakan serangkaian agenda Rakernas IKA Undip 2014. "Jadi Rakernas diawali dengan seminar. Rakernas akan kami buka Jumat (12/9/2014) mendatang," katanya. (*)</p>\r\n</div>\r\n<div class="side-article mb20">\r\n<div class="f11 grey pb10">&nbsp;</div>\r\n</div>', 'Sabtu', '2014-09-13', '14:10:46', '4320140910_132059_20140910_joko-widodo.jpg', 1, ''),
(144, 19, 'admin', 'Kapolri Sutarman Tahu Apa yang Terjadi dengan MH370', 'kapolri-sutarman-tahu-apa-yang-terjadi-dengan-mh370', 'Y', '<p style="text-align: justify;"><strong>TRIBUNNEWS.COM, JAKARTA</strong>&nbsp;- Secara mengejutkan Kapolri Jenderal Polisi Sutarman mengungkap pernah berbicara khusus dengan Kepala Kepolisian Diraja Malaysia Tun Mohammed Hanif Omar terkait hilangnya pesawat<a href="http://www.tribunnews.com/tag/malaysia-airlines/">Malaysia Airlines</a>&nbsp;nomor penerbangan MH370.</p>\r\n<p style="text-align: justify;">Saat memberikan sambutan dalam penandatanganan nota kesepahaman antara Polri dengan Lion Group di Hotel Discovery, Ancol, Jakarta Utara, tiba-tiba Sutarman mengungkapkan bila dirinya sudah memberikan informasi yang berharga terkait hilangnya pesawat MH370.</p>\r\n<p style="text-align: justify;">"Saya bantu Malaysia dengan hilangnya pesawat MH370 dan mungkin tidak saya buka di sini, tetapi saya memberikan informasi cukup berharga bagi Malaysia dan yang tahu persis antara saya dengan kepala kepolisian Malaysia apa yang terjadi dengan MH370," ungkap Sutarman, Jumat (12/9/2014).</p>\r\n<p style="text-align: justify;">Dikatakannya, dirinya mengetahui sedikit apa yang sebenarnya terjadi terhadap pesawat yang hingga saat ini masih belum diketahui keberadaannya tersebut. Tapi Sutarman tidak mau menjelaskan secara detail apa yang sebenarnya terjadi pada MH370.</p>\r\n<p style="text-align: justify;">"Sampai saat ini MH 370 tidak tahu di mana lokasinya, tetapi sebenarnya saya tahu sedikit dengan Kepala Kepolisian Malaysia Tun Mohammed Hanif Omar apa yang sebenarnya terjadi," ujarnya.</p>\r\n<p style="text-align: justify;">Dalam kesempatan tersebut, ia menekankan pentingnya manejemen personel dalam mengendalikan orang-orang yang berada di berbagai sektor dalam mengawasi wilayah udara di Indonesia, termasuk sektor penerbangan.</p>\r\n<p style="text-align: justify;">"Semua perlu pengawasan dan sentuhan lembut dari manajemen. Sehingga tidak ada upaya-upaya lain seperti kejadian MH370 ini," ujarnya.</p>', 'Sabtu', '2014-09-13', '14:12:34', '4620140328_101755_perubahan-jalur-penerbangan-mh370-yang-diberitakan-jatuh-di-lautan-hindia.jpg', 1, ''),
(142, 22, 'admin', 'Jokowi: Anggaran Rapat Kementerian Rp 18 Triliun? Nggak Ngerti Saya', 'jokowi-anggaran-rapat-kementerian-rp-18-triliun-nggak-ngerti-saya', 'Y', '<div class="side-article txt-article mb20 helvetica">\r\n<p style="text-align: justify;"><strong>Tribunnews.com, Jakarta -</strong>&nbsp;Presiden terpilih Joko Widodo terkejut pemerintahan Presiden Susilo Bambang Yudhoyono menganggarkan rapat kementerian sebesar Rp 18 triliun dalam Rancangan APBN 2015. Jokowi mengatakan, ia akan memangkas anggaran itu dan dialihkan untuk membiayai program prioritas.</p>\r\n<p style="text-align: justify;">"Hah? Masak segitu? Untuk rapat apa itu? Kok rapat bisa sampai Rp 18 triliun, ndak ngerti saya," ujar Jokowi, di Balaikota, Jakarta, Rabu (10/9/2014).</p>\r\n<p style="text-align: justify;">"Rapat itu ndak usah makan minum pun juga bisa. Makanya saya mau nanya dulu, itu rapat apaan bisa sampai segitu?" sambung Jokowi.</p>\r\n<p style="text-align: justify;">Menurut Jokowi, angka Rp 18 triliun untuk anggaran rapat kementerian terlalu tinggi. Jika resmi menjabat, ia akan meminta para menterinya nanti untuk mengoptimalkan fasilitas yang ada di kantor kementerian. Jokowi menilai, tak masuk akal jika ada penyelenggaraan rapat di hotel mewah. Padahal, ruangan di kementerian masih layak dipakai rapat koordinasi.</p>\r\n<p style="text-align: justify;">Ada pun, mengenai pemangkasan anggaran, kata dia, akan dialihkan untuk program prioritas seperti Kartu Indonesia Sehat, Kartu Indonesia Pintar, dan membangun infrastruktur di pedesaan.</p>\r\n<p style="text-align: justify;">"Hal seperti itu memang harus diefisiensikan. Apalagi cash flow kita ini dalam kondisi berat. Harus detail, sehingga penggunaannya logis atau tidak, nalar atau tidak," ujar Jokowi.</p>\r\n<p style="text-align: justify;">Sebelumnya, Pokja Tim Transisi Bidang Ekonomi menemukan angka Rp 18 triliun untuk anggaran rapat-rapat kementerian. Deputi tim transisi yang membidangi APBN Hasto Kristianto mengatakan, alokasi Rp 18 triliun itu dibagi untuk dua jenis rapat. Rapat dalam kota sebesar Rp 6,25 triliun dan rapat luar kota sebesar Rp 11,9 triliun. Selain anggaran rapat, lanjut Hasto, tim juga menemukan anggaran biaya perjalanan dinas pada RAPBN 2015 mencapai Rp 15,5 triliun.</p>\r\n</div>\r\n<div class="side-article mb20" style="text-align: justify;">&nbsp;</div>', 'Sabtu', '2014-09-13', '14:09:27', '3620140908_210028_jokowi-hadiri-peluncuran-lagu-indonesia-wow-milik-slank.jpg', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE IF NOT EXISTS `cabang` (
  `id_cabang` int(6) NOT NULL AUTO_INCREMENT,
  `kd_cabang` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `nama_cabang` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telp` text COLLATE latin1_general_ci NOT NULL,
  `pic` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_cabang`),
  UNIQUE KEY `id_cabang` (`id_cabang`),
  UNIQUE KEY `kd_cabang` (`kd_cabang`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id_cabang`, `kd_cabang`, `nama_cabang`, `alamat`, `telp`, `pic`) VALUES
(4, '002', 'BKS', 'Jalan Raya Bekasi', '0219275656', 'Ibrahim'),
(5, '003', 'JKT', 'Jalan Raya Jakarta', '0219289495', 'Buton'),
(6, '001', 'BGR', 'Jalan Raya Bogor', '0218921382', 'Pahmil');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE IF NOT EXISTS `cuti` (
  `id_cuti` int(4) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `tgl_permohonan` date NOT NULL,
  `tujuan_cuti` text COLLATE latin1_general_ci NOT NULL,
  `hp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jumlah_cuti` int(2) NOT NULL,
  PRIMARY KEY (`id_cuti`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `id_user`, `tgl_permohonan`, `tujuan_cuti`, `hp`, `jumlah_cuti`) VALUES
(1, '187', '2015-05-23', 'Pulang Kampung', '', 0),
(2, '194', '2015-05-15', 'Keperluan Keluarga', '', 0),
(3, '193', '2015-06-04', 'Pulang kampung', '0818972585', 2),
(4, '193', '2015-06-15', 'Betulin motor yang rusak', '0818972585', 3),
(5, '193', '2015-05-29', 'sakit perut', '90909', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `cutidetail`
--

CREATE TABLE IF NOT EXISTS `cutidetail` (
  `id_cutidetail` int(11) NOT NULL AUTO_INCREMENT,
  `id_cuti` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `tgl_cuti` date NOT NULL,
  PRIMARY KEY (`id_cutidetail`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cutidetail`
--

INSERT INTO `cutidetail` (`id_cutidetail`, `id_cuti`, `tgl_cuti`) VALUES
(1, '1', '2015-05-25'),
(2, '1', '2015-05-26'),
(3, '1', '2015-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE IF NOT EXISTS `dealer` (
  `id_dealer` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` text COLLATE latin1_general_ci,
  `kota` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `fax` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `salesmanager` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `servicemanager` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `npwp` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_dealer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`id_dealer`, `nama`, `alamat`, `kota`, `telp`, `fax`, `salesmanager`, `servicemanager`, `npwp`) VALUES
('03', 'CTU Bali', 'Jl. Uluwatu 1 No. 88 Jimbaran Bali\r\nDenpasar - Bali 80118\r\nIndonesia\r\n', 'Bali', '+62 361 709955', '+62 361 709956', 'Stefany Untariady', '', '01.160.756.9-014.000'),
('02', 'CTU Pondok Indah', 'JL.Sultan Iskandar Muda No.81\r\nArteri Pondok Indah\r\nJakarta Selatan\r\n\r\n', 'Jakarta Selatan', '+62-21-729 3337/38', '+62-21-729 1146 ', 'Suryo Kuspurwoko', '', '01.160.756.9-014.000'),
('01', 'CTU Head Office', 'JL.Sultan Iskandar Muda No.81Arteri Pondok IndahJakarta Selatan ', 'Jakarta Pusat', '+62-21-729 3337/38 ', '+62-21-729 1146 ', 'Dwi Yudha', 'aa', '01.160.756.9-014.000'),
('4', 'Astra Honda Pusat', '', 'DKI Jakarta', '09999', '0808218', 'Ridwan', 'Kamil', '91292192919');

-- --------------------------------------------------------

--
-- Table structure for table `dispenser`
--

CREATE TABLE IF NOT EXISTS `dispenser` (
  `id_dispenser` int(5) NOT NULL AUTO_INCREMENT,
  `kd_dispenser` varchar(4) NOT NULL,
  `id_pompa` varchar(5) NOT NULL,
  `id_tangki` varchar(5) NOT NULL,
  `nama_dispenser` varchar(30) NOT NULL,
  PRIMARY KEY (`id_dispenser`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dispenser`
--

INSERT INTO `dispenser` (`id_dispenser`, `kd_dispenser`, `id_pompa`, `id_tangki`, `nama_dispenser`) VALUES
(2, '1A1', '2', '2', 'Premium'),
(3, '1A2', '1', '2', 'Pertamax'),
(4, '1A3', '1', '3', 'Pertalite'),
(5, '1B1', '1', '1', 'Premium'),
(6, '1B2', '1', '2', 'Pertamax'),
(7, '1B3', '1', '3', 'Pertalite');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(3, 'Membuat Shopping Cart dengan PHP', 'shopping cart.pdf', '2009-02-17', 3),
(5, 'Skrip Captcha', 'captcha.rar', '2009-02-06', 2),
(1, 'Kalender Tahun 2009', 'kalender2009.rar', '2009-02-06', 8),
(8, 'Wallpaper PHP', 'PHP_weapon.jpg', '2009-10-28', 3),
(9, 'Slide  Pemrograman VBA Excell', 'Excell_VBA.ppt', '2009-11-03', 13);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(5) NOT NULL AUTO_INCREMENT,
  `id_album` int(5) NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(3, 12, 'Duduk di Sofa', 'duduk-di-sofa', 'Sekeluarga sedang duduk di sofa.', '27587family sofa.jpg'),
(4, 12, 'Didepan Rumah', 'didepan-rumah', 'Sekeluarga sedang berada di ladang.', '258819family field.jpg'),
(5, 12, 'Keluarga Bahagia', 'keluarga-bahagia', 'Si anak memperlihatkan lukisan.', '697448family.jpg'),
(7, 19, 'Lebah', 'lebah', 'Lebah besar terbang.', '322906lebah.jpg'),
(8, 17, 'Bangunan Jepang', 'bangunan-jepang', 'Bangunan khas jepang', '370422arche037.jpg'),
(9, 17, 'Candi Merang', 'candi-merang', 'Bangunan candi khas kerajaan', '346527arche014.jpg'),
(10, 18, 'Cukur Janggut', 'cukur-janggut', 'Bayi unik sedang cukur rambut', '892395macho4.jpg'),
(11, 18, 'Push Up', 'push-up', 'Bayi unik sedang melakukan push-up', '991546macho1.jpg'),
(12, 19, 'Kuda Nyengir', 'kuda-nyengir', 'Gini nih kalau kuda lagi nyengir.', '658447kuda.jpg'),
(13, 21, 'Super Mario Bross', 'super-mario-bross', 'Game klasik 3D Mario Bross.', '601318mario bros.jpg'),
(32, 21, 'Naruto', 'naruto', 'Kartun ninja jepang Naruto', '45440naruto.jpg'),
(15, 21, 'Superman', 'superman', 'Superman kecil mau beraksi', '689147superman.jpg'),
(27, 21, 'Sonic', 'sonic', 'Sonic and Friend', '152618sonic.jpg'),
(31, 21, 'Kungfu Panda', 'kungfu-panda', 'Jack Black', '550598panda2.jpg'),
(33, 21, 'Maskot Euro 2008', 'maskot-euro-2008', 'Trix dan Flix di Euro 2008', '816528mascot.jpg'),
(14, 21, 'Harry Potter', 'harry-potter', 'Game Harry Potter', '735687potter.jpg'),
(42, 21, 'Avatar', 'avatar', 'Eng si Gundul Avatar', '874877avatar.jpg'),
(16, 21, 'Shrek', 'shrek', 'Film 3D Shrek 2', '527801shrek06_800.jpg'),
(44, 21, 'Kenshin', 'kenshin', 'Kenshin Himura', '494110himura.jpg'),
(45, 21, 'Sun Goku', 'sun-goku', 'Goku Cilik', '266845goku.JPG'),
(46, 21, 'Virtual Girl', 'virtual-girl', 'Gadis Cantik 3D', '837921Girl.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(3) NOT NULL AUTO_INCREMENT,
  `kd_kategori` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `nama_kategori` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `id_kategori` (`id_kategori`),
  UNIQUE KEY `kd_kategori` (`kd_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kd_kategori`, `nama_kategori`) VALUES
(9, 'B01', 'RON 88'),
(10, 'B02', 'RON 92'),
(11, 'B03', 'CN 45'),
(12, 'B04', 'RON 90');

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `urutan` int(2) NOT NULL,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`id_main`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`, `urutan`, `level`) VALUES
(15, 'Berita', '#', 'Y', 3, 'admin'),
(5, 'Sales', '#', 'Y', 1, 'admin'),
(7, 'Finance', '#', 'Y', 6, 'admin'),
(8, 'Other', '#', 'Y', 9, 'admin'),
(9, 'Media', '#', 'Y', 10, 'admin'),
(10, 'Master Data', '#', 'Y', 0, 'admin'),
(14, 'Cuti Karyawan', '?module=cuti', 'Y', 12, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `masterbarang`
--

CREATE TABLE IF NOT EXISTS `masterbarang` (
  `id_barang` int(6) NOT NULL AUTO_INCREMENT,
  `kd_barang` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `nama_barang` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `satuan` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `harga_jual` decimal(12,2) NOT NULL,
  `kd_kategori` varchar(3) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_barang`),
  UNIQUE KEY `id_barang` (`id_barang`),
  UNIQUE KEY `kd_barang` (`kd_barang`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `masterbarang`
--

INSERT INTO `masterbarang` (`id_barang`, `kd_barang`, `nama_barang`, `satuan`, `harga_jual`, `kd_kategori`) VALUES
(1, 'SP1', 'Premium', 'L', '7400.00', '9'),
(2, 'SP2', 'Pertamax', 'L', '9300.00', '10'),
(3, 'SP3', 'Solar', 'L', '5600.00', '11'),
(7, 'SP4', 'Pertalite', 'L', '8300.00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `metronic`
--

CREATE TABLE IF NOT EXISTS `metronic` (
  `id_dealer` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` text COLLATE latin1_general_ci,
  `kota` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `fax` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `salesmanager` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `servicemanager` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `npwp` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_dealer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `metronic`
--

INSERT INTO `metronic` (`id_dealer`, `nama`, `alamat`, `kota`, `telp`, `fax`, `salesmanager`, `servicemanager`, `npwp`) VALUES
('03', 'CTU Bali', 'Jl. Uluwatu 1 No. 88 Jimbaran Bali\r\nDenpasar - Bali 80118\r\nIndonesia\r\n', 'Bali', '+62 361 709955', '+62 361 709956', 'Stefany Untariady', '', '01.160.756.9-014.000'),
('02', 'CTU Pondok Indah', 'JL.Sultan Iskandar Muda No.81\r\nArteri Pondok Indah\r\nJakarta Selatan\r\n\r\n', 'Jakarta Selatan', '+62-21-729 3337/38', '+62-21-729 1146 ', 'Suryo Kuspurwoko', '', '01.160.756.9-014.000'),
('01', 'CTU Head Office', 'JL.Sultan Iskandar Muda No.81\r\nArteri Pondok Indah\r\nJakarta Selatan ', 'Jakarta Pusat', '+62-21-729 3337/38 ', '+62-21-729 1146 ', 'Dwi Yudha', '', '01.160.756.9-014.000');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=202 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(167, 'Pelanggan', 'pelanggan.php', '', '', 'Y', 'admin', 'Y', 1, ''),
(163, 'Produk', 'produk.php', '', '', 'Y', 'admin', 'Y', 1, ''),
(151, 'Cuti', 'cuti.php', '', '', 'Y', 'admin', 'Y', 14, ''),
(150, 'Berita', 'berita.php', '', '', 'Y', 'admin', 'Y', 12, ''),
(149, 'Kontak', 'kontak.php', '', '', 'Y', 'admin', 'Y', 11, '');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE IF NOT EXISTS `operator` (
  `id_operator` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(45) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `id_cabang` varchar(6) NOT NULL,
  `id_atasan` varchar(6) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `level` varchar(45) NOT NULL,
  `email` varchar(75) NOT NULL,
  `blokir` varchar(1) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_operator`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id_operator`, `nama`, `alamat`, `kota`, `telp`, `id_cabang`, `id_atasan`, `username`, `password`, `level`, `email`, `blokir`, `foto`) VALUES
(11, 'saima', 'asdsa', 'asdsad', '123', '4', '10', 'saima', '844f9ee41a83411bb8464b0a0d02f1c6', 'supervisor', 'saima@gmail.com', 'N', ''),
(12, 'dani', 'mgt', 'bekasi', '0219275656', '4', '', 'dani', '5628dd6859640dc34bd2474bf56666c6', 'manager', 'asd@gmail.com', 'N', ''),
(10, 'fajrin', 'asdsad', 'asdsa', '121', '4', '', 'fajrin', '9c159f85b653cc709fc9cfe9894dfefb', 'sales', 'fajrin@gmail.com', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(8) DEFAULT NULL,
  `tanggal_orders` date DEFAULT NULL,
  `status` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `id_pelanggan`, `tanggal_orders`, `status`) VALUES
(1, 1, '2015-04-25', 'Baru'),
(2, 2, '2015-04-25', 'Baru'),
(4, 478, '2015-04-25', 'Baru');

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetail`
--

CREATE TABLE IF NOT EXISTS `ordersdetail` (
  `id_ordersdetail` int(5) NOT NULL AUTO_INCREMENT,
  `id_orders` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `id_produk` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `diskon` int(5) NOT NULL,
  `qty` int(5) NOT NULL,
  PRIMARY KEY (`id_ordersdetail`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `ordersdetail`
--

INSERT INTO `ordersdetail` (`id_ordersdetail`, `id_orders`, `id_produk`, `nama_produk`, `harga`, `diskon`, `qty`) VALUES
(26, '4', 14, 'Motorola RAZR V3m Red', 2500000, 2800, 0),
(27, '4', 15, 'LG Chocolate VX8550 Blue', 3450000, 1600, 0),
(28, '4', 16, 'Samsung FlipShot SCH-U900', 4500000, 3800, 0),
(29, '4', 18, 'Sony Ericsson W200i', 1100000, 1600, 20),
(30, '4', 17, 'Sony Ericsson W880', 2800000, 1400, 10),
(52, '2', 16, 'Samsung FlipShot SCH-U900', 4500000, 0, 2),
(32, '4', 23, 'Blackberry 8820', 3000000, 100, 10),
(33, '4', 24, 'Iphone 3GS', 4000000, 100, 10),
(34, '4', 25, 'Sony Ericsson C903', 2500000, 100, 10),
(35, '', 15, 'LG Chocolate VX8550 Blue', 3450000, 0, 2),
(36, '', 16, 'Samsung FlipShot SCH-U900', 4500000, 0, 2),
(37, '', 23, 'Blackberry 8820', 3000000, 10, 1),
(38, '', 24, 'Iphone 3GS', 4000000, 10, 1),
(47, '2', 14, 'Motorola RAZR V3m Red', 2500000, 0, 1),
(46, '1', 23, 'Blackberry 8820', 3000000, 10, 2),
(41, '1', 14, 'Motorola RAZR V3m Red', 2500000, 0, 2),
(42, '1', 16, 'Samsung FlipShot SCH-U900', 4500000, 0, 3),
(43, '1', 15, 'LG Chocolate VX8550 Blue', 3450000, 0, 2),
(44, '', 24, 'Iphone 3GS', 4000000, 10, 2),
(45, '1', 15, 'LG Chocolate VX8550 Blue', 3450000, 0, 3),
(48, '2', 15, 'LG Chocolate VX8550 Blue', 3450000, 0, 3),
(49, '', 6, '', 0, 0, 1),
(50, '', 6, '', 0, 0, 1),
(51, '', 6, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(8) NOT NULL AUTO_INCREMENT,
  `nama` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` text COLLATE latin1_general_ci,
  `kota` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `gsm1` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `gsm2` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `cdma` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1582 ;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `kota`, `telp`, `gsm1`, `gsm2`, `cdma`, `email`) VALUES
(34, 'PT. SUMMARECON AGUNG TBK', 'JALAN KAYU PUTIH NO 42 KEMERDEKAAN', 'JAKARTA ', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(33, 'PT KUFNER INDONESIA', 'JL. GD MEDIT RES RK /021/8', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(32, 'DADANG SUDRAJAT', 'KOMP.SHOFA MARWA NO.43 RT.07/06 MEKARSARI CIMANGGIS ', 'depok', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(19, 'INNOVATIVE PLASTIC P, PT', 'LETJEN S PARMAN SLIPI', 'JAKARTA BARAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(20, 'ITA YULIATI', 'Bona indah A VI/7 rt7/6', 'Jaksel', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(21, 'RE RUDY WIDJANARKA', 'TEBET BARAT DALAM IX -D/E4 RT2/8', 'JAKARTA SELATAN', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(22, 'ACHMAD NUSYIRWAN SUGONDO', 'RAGUNAN RT4/1 Ragunan', 'JAKARTA SELATAN', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(23, 'CV FAJAR INDAH', 'ARTERI PERMATA HIJAU', 'JAKSEL', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(24, 'BONDAN ', 'CASABLANCA MANSION', 'JAKARTA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(25, 'ALDABERTA INDONESIA , PT. ', 'JL. TB. SIMATUPANG KAV 1B RT9/3', 'JAKARTA SELATAN', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(26, 'SILMIYANTI SSI. MSI', 'KP SERANG RT011/06KEL SERANG KECAMATAN CIKARANG SLT', 'BEKASI', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(27, 'CAHAYA HARAPAN SATYA P, PT ', 'JL KEMURNIAN V /37 GLODOK', 'JAKBAR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(28, 'BHAVNA DILIP CHUGANI', 'KUTA RY NO 6 RT 17/7 KLP GADING', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(29, 'SILVIA IRANI', 'KOMP BANK MANDIRI RT05/01 REMPOA', 'TANGERANG SELATAN ', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(35, 'HJ.VENTY PRIMA PUTRI', 'JL.PESANTREN KELAPA DUA NO.2 RT.3/14 PASIR GUNUNG CIMANGGIS', 'DEPOK', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(36, 'TEDDY GUNAWAN', 'JL.SONGSI III/20 RT.7/6', 'JAKBAR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(37, 'TOMS ANWAR HIDAYAT', 'JL KEBON JAHE II / 17,, ABDUL MUIS', 'JAKARTA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(38, 'TJAHJONO NOTOSUROTO', 'JL.JANUR KUNING VII WL 1/14 RT.5/16', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(39, 'JHON ARNOLD THIE', 'PLUIT BRT VIII/35 RT 11/7, PLUIT', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(40, 'MUHAMMAD ADNAN ABADI', 'GRAHA KALIMAS JL . KWITANG IV BLK H21 RT032/009 SETIA DARMA BEKASI', 'BEKASI', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(41, 'PT ANDALAN CHRISDECO', 'JL. SAMANHUDI NO 43', 'JAKARTA ', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(42, 'ANDALAN KELAPA GADING ', 'KELAPA GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(43, 'ANGGINA TERESE', '', '', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(44, 'FARIZ FADHLILLAH', 'JL WARGA I/MA NO 10 RT 14/3 ', 'JAKSEL', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(45, 'REDIA', 'KAV POLRI B 4 NO.7 RT.2/3', 'JAKARTA SELATAN', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(46, 'YETTI YUSRI', 'JL . AL BARIYAH NO . 51 RT 11/4', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(47, 'PT DANORA AGRO PRIMA ', 'GDNG MEDITERANIA  RSD BLOK CC /2/36 HI,KELAPA GADING', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(48, 'UMAR  S.AG', 'PERUM BSI BLOK AB RT 3/5 DUREN MEKAR KEC. SAWANGAN DEPOK', 'DEPOK', '08189725000', '08189725000', '08189725000', '021-725000', '-'),
(50, 'NOVITA', 'GD PELANGI HIJAU IV B7 RT7/16', 'JAK-UT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(52, 'SANTOSA TJANDRA', 'BANDENGAN UTARA  40.H NO.5 RT.001/015 PENJARINGAN', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(53, 'DODY KHRINA PUJIANTO', 'NUSA LOKA SEKTOR 14 .6 BLOK RC 18 BSD', 'tanggerang', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(54, 'FIFI MARIA MARDALINA', 'JL PAD3EMANGAN III GG 14 RT 3/7 ', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(55, 'PT ATLAS PETROCHEM INDO/P ANTHONY', 'JL. KREKOT JAYA BLK A II NO 22', 'JAKP[US', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(56, 'SWANDI DJOHAN', 'TMN STR UTAMA STS BLK D1/3 RT 3/18', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(57, 'PT . JAGA KARYA MANDIRI', 'JL . KH HASYIM ASHARI 125GAMBIR', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(58, 'CHAN KIU TING ADA/MAKSURI', 'JL. KAJI NO 31 RT 3/7 PETOJO UTARA', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(59, 'BUDI SANTOSO TJOE', 'JL.KH.WAHID HASYIM /16 RT.6/7', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1, 'DANI YUSUF', 'JL. Mawar 4 No. 21 Perumnas I', 'Bekasi', '08189725000', '08189725000', '08189725000', '021-725000', 'daniyusuf@yahoo.com'),
(2, 'DENIS AHMAD', 'JL. Margonda Raya No. 77', 'Depok', '08189725000', '08189725000', '08189725000', '021-725000', 'denisahmad@gmail.com'),
(18, 'DANU SEPTIAN', 'JL. Sandubaya No. 47 Cakranegara', 'Jakarta Selatan', '08189725000', '08189725000', '08189725000', '021-725000', 'adikur20@gmail.com'),
(136, 'nama', 'alamat', 'kota', '08189725000', '08189725000', '08189725000', '021-725000', 'email'),
(137, 'NUSA BARA ABADI MAKMUR .PT', 'JL KREKOT JAYA C3 NO 4 PS BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(138, 'FRANSISCA WIRYASAPUTRA', 'JL. PANTAI SANUR IV/19 RT 7/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(139, 'YUNUS IKO FUTANTO', 'JL. JELAMBAR BARU 1/32 RT 5/7 JAKBAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(140, 'MA CHALIK EFFENDI, SE', 'RAFFLES HILLS BLK L3 NO 11 RT 22/25, SUKATANI-CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(141, 'SYAFRIL', 'KAWI-KAWI ATAS NO.3 RT.16/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(142, 'DIAN', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(143, 'JIMMY', 'TPI I NO 67L RT 1/7, PEJAGALAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(144, 'IR.ERWIN HADIYANTO', 'JL.CILANDAK I /30 RT.9/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(145, 'HENDRA WIJAYA', 'TRIMARAN PERMAI I/2A RT.7/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(146, 'DONNI PRANANTO', 'KALIBATA TENGAH RT 8/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(147, 'FARLY SETIAWAN', 'JL. PASEBAN TIMUR VII D 142 RT 7/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(148, 'DINO', 'JL.LAUTZE NO.18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(149, 'PT.ADIL MAKMUR FAJAR', 'JL.INDUSTRI RAYA KAV 1 DESA BUDI MULYA CIKUPA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(150, 'DR YUAMITAS S ANDRYANTO', 'JL. PULAU MATAHARI B6/12 RT 17/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(151, 'ANDRIKARSA', 'JL. PONDASI UJUNG 5 RT 10/10, KAYU PUTIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(152, 'PT.IMS LOGISTIK INDONESIA', 'JL.HUSEN SASTRANEGARA RT.04/02 BENDA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(153, 'BNPB', 'JL.IR H.JUANDA NO.36', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(154, 'PT.ANDALAN CHRISDECO', 'JL.RAYA SAMANHUDI NO.43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(155, 'DADANG SUDRAJAT', 'KOMP.SHOFA MARWA NO.43 RT.07/06 MEKARSARI CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(156, 'AMRIL MICHAEL SILABAN', 'JL.KRAMAT IV NO.10 RT.6/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(157, 'KURNIA DJUHARI', 'JL.S.KAMPAR III/4 RT.13/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(158, 'ABDUL AZIS/HANDAYANI', 'GG II BLK F NO 60 RT 4/7 SEMPER BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(159, 'DAVID ARIANTO', 'JL. KB JERUK IV/16 C RT 4/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(160, 'CHAIRUL RIZAL', 'TEBET TIMUR 111 N/18 RT.7/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(161, 'DIANA ZULVIKAR', 'JL.H.NAWI DALAM 1 NO.2 RT.3/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(162, 'JENNY RUSIAH', 'JL. SAMARINDA NO 31 RT 11/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(163, 'SONNY SOEHARDJIANTO', 'CITARA 2 EXT BLOK BF 1/ 51 RT014/005', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(164, 'IR. ATIK RETNO S', 'PONDOK UNGU PERMAI DD 6 NO. 14 RT010/010', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(165, 'PT.MARKAINDO SELARAS', 'JL.LODAN RY NO.80-81 KRLC C2-C3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(166, 'L FIAN KARTONO', 'VIKAMAS TENGAH IX BLK H V/6 RT 14/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(167, 'BAMBANG BUDIHANTORO', 'TAMAN SEMANAN INDAH D 8/38 RT. 10/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(168, 'JHONY', 'KH.HASYIM ASHARI NO.12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(169, 'PT ALDABERTA INDONESIA', 'JL. TB SIMATUPANG KAV 18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(170, 'DANIEL SITORUS', 'JL. SUNAN DEMAK NO 16 RT 10/15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(171, 'PT.CATUR DAYAMANUNGGAL', 'JL. MH THAMRIN KAV 57, MENTENG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(172, 'IWAN D.S', 'DANAU INDAH 3 BLOK A.15 NO.12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(173, 'KUSNADI KUNAWI', 'JL.MANDALA BARAT II/12 A RT 4/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(174, 'GUNARIO', 'PERMATA BEKASI II BLOK L 11 RT 05/08, DUREN JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(175, 'DJOHAN', 'CIRACAS RT 8/2 CIRACAS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(176, 'WASIDI', 'JL. PLUIS RT 3/14 GROGOL UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(177, 'LIN CHUNYING', 'JL. LODAN DALAM V1 RT1/1 JAKUT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(178, 'DONNY', 'KRISTAL TIMUR I NO 2, GADING SERPONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(179, 'ALI SANTOSO MONTANA', 'JL.PERNIAGAAN GG OPAK TK/4 RT.7/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(180, 'IR GUNAWAN HIDAYAT/JUWITA', 'JL. CAMAR PERMAI V NO 20, PANTAI INDAH KAPUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(181, 'SANTY', 'JL.SKIP I RT.13/2 SUNTER JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(182, 'TRI YULI ANDRIATI', 'TMN BUARAN INDAH IV LC 1/12 RT.6/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(183, 'DAFIP', 'HARAPAN INDAH BL/21', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(184, 'SRI SUMARNI', 'CANDRABAGA BLOK A R8/9 RT 28/19 BAHAGIA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(185, 'BUDHI SENTOSO RACHMAT K', 'BKT GDG MEDITERANIA AD-3 RT.5/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(186, 'KOPTAJASA QQ BRENDA R.A', 'JL TELAGA JAYA KAV 942 RT 21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(187, 'KOPTAJASA QQ BRENDA R.A', 'JL. TELAGA JAYA KAV 942 RT 21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(188, 'KOPTAJASA QQ BRENDA R.A', 'JL. TELAGA JAYA KAV 942 RT 21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(189, 'KOPTAJASA QQ BRENDA R.A', 'JL. TELAGA JAYA KAV 942 RT 21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(190, 'RAHMI HIDAYATI', 'GRAHA RAYA BINTARO JAYA RB 8/8, SERPONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(191, 'KOPTAJASA QQ BRENDA R.A', 'JL. TELAGA JAYA KAV 942 RT 21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(192, 'TJEN HARRY JULIUS', 'JL.TAMAN SARI RAYA NO.71A RT.12/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(193, 'MAMAN RUSMANA', 'JL.DUKU NO.11A KOMPLEK SEROJA RT.01/05 HARAPAN JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(194, 'ATANG SUHARDI', 'JL TANAH TINGGI GG VI/4E RT 10/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(195, 'PT WAHANA SATRIA ABADI/P KURNIAWAN', 'JL. KUSEN IV NO 23, KP AMBON', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(196, 'IR. SUDARMADI', 'JL. TENGGERI NO 35 RT 4/7, JATI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(197, 'SANTI ERIZA', 'KAV CIPAYUNG JL APEL BLOCK DD NO 5/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(198, 'ENDANG SRI HARDIYATI', 'JL. BENDUNGAN JAGO RT 3/3 SERDANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(199, 'PT ANDALAN CHRISDECO/P DICKY KLP GDG', 'JL. H SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(200, 'GRACIA XENIA / BP RICO', 'JL KAJI NO 3 RT 7/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(201, 'IDHAM KHOLID', 'JL.KAYU MANIS IX RT.007/009 KAYU MANIS MATRAMAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(202, 'SUSAN/HENDRA', 'JL LAUTZE NO 139 D RT 1/5 PS BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(203, 'NG ANNA/YUNGYUNG', 'JL. RAJAWALI SELATAN V/30 RT 8/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(204, 'NG ANNA', 'JL.RAJAWALI SELATAN V/30 RT.8/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(205, 'ANDRI YUNIARTO SETIADI', 'JL.CIPINANG JAYA GG 85-86 RT.2/7 JATINEGARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(206, 'PT.CAHAYA HARAPAN SATYA P', 'JL.KEMURNIAN V/37 GLODOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(207, 'BAMBANG WIJAYA', 'JL. TAMAN SARI XI/9 RT 8/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(208, 'TJAHJADI WONGSO', 'TMN RATU INDAH C-9/3 RT 3/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(209, 'DR.NORATUS HORAS', 'JL.JANUR ASRI I QL 3/1 RT.1/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(210, 'FENNI', 'JL. KAMAL RAYA NO 69 RT 004/003, CENGKARENG BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(211, 'HENDY WINATA', 'TELUK GONG JL.20/38 RT.7/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(212, 'ALI', 'JL UJUNG SULAWESI NO 1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(213, 'NICO KOSWANDI', 'JL. JANUR KUNING X WP 2/21 RT 8/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(214, 'IR.HERIANTO ATH , MBA', 'DEPOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(215, 'IR.AGUS P.SETIAWAN', 'KEMBANGAN SELATAN GG H.MAJUK 15 RT.2/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(216, 'JULYANTO PONNY SURYOPUTRO', 'PERUM PTB BLK II C/14 RT.2/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(217, 'SUGIARTO/AGUS', 'JL. BANDENGAN B SEL NO 80/2A RT 16/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(218, 'GOUWTAMA PERMANA', 'TMN SURYA V BLK HH-3/42 RT.2/17', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(219, 'FELICIA ERVIN', 'JL.OTISTA II RT.3/9 BIDARA CINA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(220, 'EDYSON', 'MEKARSARI PERMAI BLOK 7-4/02 RT 12/12, MEKAR SARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(221, 'YANTO', 'GUDANG ARANG 2 NO.2 RT.10/11 JEMBATAN LIMA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(222, 'ZISKA A E PESIWARISSA', 'JL.EMPU SENDOK NO.8 RT.8/3 SELONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(223, 'PT.MESA GEAR', 'JL.GALUR SARI TIMUR NO.20 LANTAI I RT.004/012 UTAN MATRAMAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(224, 'HENDRYLAIDI', 'PORIS INDAH BLOK F.2/32 RT.09/01 CIPONDOH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(225, 'IFAN HENRY', 'JL. JEMBATAN MERAH NO 141', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(226, 'LSM MERC', 'JL.KRAMAT LONTAR NO.J 157 SENEN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(227, 'JHON ARNOLD THIE', 'PLUIT BRT VIII/35 RT 11/7, PLUIT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(228, 'PT.MAJAMAKMUR SUKSES MANDIRI', 'JL.RAYA PERANCIS PERGUDANGAN 9 BLOK 9 AP RT.01/05 KOSAMBI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(229, 'YUDO WIJAYANTO', 'JL.PINANG PERAK X / 29 RT.10/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(230, 'NASRUL', 'JL.PERCETAKAN NEGARA NO.8 RT.011/007 JOHAR BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(231, 'PT SAMA SAMA SUKSES/MARTIN', 'JL. RY KAPUK KAMAL MUARA IV K1/17', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(232, 'LIAUW PRASETYO', 'JL. ST KIRANA VII AG/2 RT 19/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(233, 'TAN GIOK NIO', 'JL. DWIWARNA GG II NO 3 RT 9/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(234, 'MUHAMMAD ROMMY FAUZI', 'APARTMENT TAMAN RASUNA T 10 32B RT 1/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(235, 'PT.PURAMAYUNGAN', 'JL.HAYAM WURUK NO.4 F-H', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(236, 'KOTAJASA QQ YETTY GRACE', 'JL. TELAGA JAYA KAV. 942 RT 21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(237, 'KOPTAJASA/BRENDA R.A', 'JL.TELAGA JAYA KAV 942 RT.0031/01 SUNTER JAYA TANJUNG PRIOUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(238, 'KOPTAJASA QQ YETTY GRACE', 'JL.TELAGA JAYA KAV 942 RT.21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(239, 'WENDI WINDU WASONO', 'JL.LANGSAT 1/2 RT.2/1 KEBAYORAN BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(240, 'AMIN GUNAWAN TJHANG/JENTI CHANDRA', 'JL. SAWAH LIO V RT 09/06, JEMBATAN LIMA-TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(241, 'WARSINO', 'JL. PISANGAN LAMA III RT 8/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(242, 'SURAHMAN MUIN, DR', 'CEMPAKA PUTIH TENGAH 22/1/56 RT 014/004, CEMPAKA PUTIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(243, 'YANUAR WIJAYA SH', 'PD KARYA B/11 RT001/004 PELA MAMPANG - MAMPANG PRAPATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(244, 'BUDI ADITIAWARMAN', 'JL.TIMBUL IVC NO.5 RT.8/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(245, 'SURIYANI/THIN JAU KHIM', 'JL ZAMRUD 1/6 RT 5/4, KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(246, 'TJIENDAWATI SUTANTO', 'JL. PLUIT KARANG SARI I/28 RT 11/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(247, 'MULIANA TANUMIHARDJA', 'JL.ASSAFIIYAH GG UMI NO.116 CILANGKAP', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(248, 'PT TANGGUK MAS/P BONAR', 'JL. PEMUDA BLK B/3, JATI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(249, 'SUGIANTO', 'JL. PULO ASEM IV NO 28A RT 002/001, JATI PULO GADUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(250, 'KOPERASI TAKSI SEPAKAT', 'KAMPUNG CADAS RT.002/001 DESA KARET KEC SEPATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(251, 'MICHAEL HARTA DELIMA', 'JL.MUTUMANIKAM RT.004/011 BIDARA CINA JATINEGARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(252, 'DWI HARDIANTO', 'JL.KH.MAS MANSYUR NO.38 RT.001/007 KEBON KACANG TANAH ABANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(253, 'TAN LIEN KWI', 'KOND TAMAN ANGGREK TWR 8-41D RT.8/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(254, 'YENI KARDIKUSUMAH', 'BUMI ARYASENA B/02 JL RATNA RT 03/02 JATI ASIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(255, 'PSSU GFMRAP SEKJEN KEMENK', 'JL. WAHIDIN RAYA NO. 1 JAKPUS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(256, 'ANDY', 'JL. KEADILAN RAYA NO 20', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(257, 'DIPA SUSILA', 'KP. MELAYU BINATU RT 11/1, BIDARA CINAJI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(258, 'IVAN JEFRI PARDEDE', 'BLOK DUKU RT.012 / 010 CIKUKUS, CIRACAS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(259, 'MARINA', 'KOMP BEA CUKAI BLK I 5/10 RT.8/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(260, 'PT JAYA NURIMBA', 'KP. CIBUNTU BOJONG RT 001/002, GANDASARI-CIKARAN BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(261, 'MELITA', 'PADEMANGAN IV GG 31 RT.10/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(262, 'YUSUF HAM', 'TAMAN DUTA MAS BLOK E3/ 45 RT 015 RW 009', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(263, 'ELIS KUSMAWATI', 'JL. KRAMAT SENTIONG NO2 RT. 1 / 7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(264, 'RIKI INDRAWAN', 'JL. TANJUNG DUREN RAYA NO 7C RT 10/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(265, 'PT EAGLE ESAIDO/JOHAN', 'TAMAN PALEM LESTARI BLOK U NO 28', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(266, 'DR MA,MUR SJAFEI', 'JL. CEMPAKA PUTIH TIMUR RAYA NO 73 RT 1/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(267, 'HJ. NELWITA/BP EDI', 'JL. CEMPAKA NO 20 RT 4/3, KLP GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(268, 'IMRAN WIJAYA', 'JL. KAPUK KENCANA BLK B12 RT 02/03, KAPUK MUARA, PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(269, 'JOHANES', 'CITRA I BLK B2/9 RT 10/9, KALIDERES', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(270, 'YUN SENLITULANGI', 'JL. STR PARADISE 12/F19/5B RT 11/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(271, 'AGUSTINUS PRAYITNO', 'JL.KREKOT JAYA BLOK A-II NO.26 RT.4/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(272, 'BATAVIA MITRATAMA INSURANCE', 'JL. LET JEND SUPRAPTO NO 121 BLOK A/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(273, 'ARIEF KURNIAWAN', 'JL. JANUR KUNING V WK 2/9 RT 3/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(274, 'CHRISTIAN', 'JL. LAUTZE 55 A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(275, 'ELSAKRI', 'PERUM TATAKA PURI J-8A/6 RT.01/05', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(276, 'ARUN GEHE', 'SUNTER GARDEN BLK B6/23 RT5/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(277, 'JULIFA', 'JL.RAYA PANTAI INDAH SELATAN ,ELANG LAUT RESIDENT BLOK A NO.9 D', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(278, 'LIES ACHIROH', 'JATI WARNA INDAH BLOK K 18 RT.009/08 JATI RAHAYU PD MELATI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(279, 'MONA SAPTONO', 'GG.SENTOSA PEKOJAN III RT.002/009 PEKOJAN TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(280, 'ARHADI', 'JATINEGARA KAUM NO 57 RT 10/4 PULOGADUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(281, 'SUDJONO HARDJOSUWITO', 'JL. KENALI ASEM TERUSAN KAV 9 RT 01/18 CIPINANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(282, 'PT SURYA INTI PROPERTINDO', 'WISMA SMR LT  9, JL. YOS SUDARSO 89', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(283, 'LIE SUI FA/RAMLAN', 'AGUNG PERKASA VI NO 47 RT 5/14', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(284, 'IRAWAN REZA ISKANDAR', 'RAFFLES HILLS BLOK N-9 NO 25 RT 5/25 SUKATANI, DEPOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(285, 'SUKAMTO', 'KAMP UTAN RT 11/8, RAGUNAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(286, 'ASKARI ST', 'JL. LAGOA TRS GG V C II RT 10/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(287, 'DIRA SULANJANA', 'JL.AGUNG JAYA IV BLOK B 20/33 RT.13/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(288, 'ENGKOS NUGRAHA', 'JL.UTAN PANJANG III RT.13/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(289, 'IR,HESTRIATI', 'PAMULANG PERMAI  IA 53/07 RT,004/014 PAMULANG BRT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(290, 'CHUA FIE SAN', 'TANAH PASIR RT002/07', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(291, 'TOMMY ALI', 'JL. STR PERMAIJY 5/A4/22A RT 14/6 JAKARTA UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(292, 'TEDDY GUNAWAN', 'JL.SONGSI III/20 RT.7/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(293, 'RIDWAN ARIEF WIBOWO', 'JL. JATINEGARA BARAT 146 RT 8/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(294, 'NOVIAR RASYID', 'RWA BAMBU I JL G NO 4 RT 10/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(295, 'UDJANG MARJUKI LANI', 'GREEN GARDEN BLK C-1/19 RT.2/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(296, 'IAN YAPTO FU', 'JL.SONGSI III NO.20 RT.007/006 TANAH SEREAL TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(297, 'PETER LAYARDI LAY', 'JL TANJUNG DUREN UATARA VIII / GANG II /128 JAKARTA BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(298, 'IR BUDIMAN IDRIS MALAU', 'RUKO CEM MAS BLOK P NO 7 RT 0/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(299, 'PT DIVA MITRA BOGATAMA', 'JL. BOULEVARD RAYA BLK L 5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(300, 'SEPTI INDIAH RAHAYU', 'JL. AIRLANGGA NO.38 TMN ROYAL RT2/16 CIPONDOH KOTA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(301, 'IRA NILANDARI', 'TAMAN ASTER BLOK A 2/78 RT.13/07 TELAGA ASIH CIKARANG BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(302, 'FRISCILLIA LILIANA HALIM', 'JL. PELEPAH ELOK III QB IV/5 RT 2/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(303, 'BAYU WIDIANTO SE', 'JL. RAWASARI TIMUR IV/18 RT 3/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(304, 'ANGELA CHANDRA', 'JL. PARADISE BLK F 13/10-11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(305, 'PT DUTA HITA JAYA/JAYADI', 'JL. TMN PEGANGSAAN INDAH G2/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(306, 'JAN MANOPO', 'JL.KOMP DUTA MERLIN BLOK C/63 PETOJO UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(307, 'H.ZAINAL A', 'JL.SUNTER KARYA BLOK HA 6/3A RT.17/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(308, 'DAISY KATHARINA', 'JL.TAMAN RASUNA T 1712H RT.18/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(309, 'IR DESTRIAN', 'JL. SUNGAI LIPUT BLOK EG 2 RT 07/17, JATI MAKMUR PD GEDE', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(310, 'DESSY OKTARINA Y SE, MM/P. JOKO S', 'KP. CIKUNIR JATI KRAMAT RT 05/08', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(311, 'PT. GLOBAL TRNSPORTASI N/HADI', 'JL. IR H JUANDA III NO 25', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(312, 'CV.MITRA MILLENIUM MANDIRI', 'PERUM ALINDA KENCANA PERMAI  B 2/12A RT.16/21 KALIABANG TENGAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(313, 'FX CHRISTANTO', 'JL.UBI NO.109 C RT.10/1 TAMANSARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(314, 'AGUS SETIAWAN', 'PLUIT SAKTI III NO . 39 RT6/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(315, 'LINA KARMILA', 'KP. KALIULU RT 01/01 KARANG RAHARJA-CIKARANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(316, 'KANTOR PUSAT DITJEN KEKAYAAN NEGARA', 'JL.LAPANGAN BANTENG TIMUR NO.2-4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(317, 'PT.ANGGUN BAHARI', 'RKN ARTHA GDG NIAGA BLK B/36', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(318, 'JUSDI AKANG', 'PLUIT UTARA RAYA NO.20 RT.9/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(319, 'TENGKU SYARIFAH SHAFINA', 'PAMULANG PERMAI I BX 10/7 RT.04/12 PAMULANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(320, 'T I T O', 'JL. KEBON JERUK XIV NO 8 RT 14/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(321, 'AMIRUDDIN', 'VILLA BINTARO INDAH BLOK AG / 10B RT.05/11 JOMBANG CIPUTAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(322, 'DEDDY ANDRIYAN, SE', 'JL. PUSPA VIII/F/30 CKB RT 31/11, MEKAR MUKTI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(323, 'SANTO NURADI SUTANTO', 'BSD GIRI LOKA II BLOK S 2/23 RT.04/02 LOKA WETAN SERPONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(324, 'CHRISTIANTO SOEPARTO', 'JL. WARAKAS V GG VI/128 RT 005/09 WARAKAS, TG PRIOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(325, 'RIEVIA/P ANWAR', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(326, 'PT PRISMAS JAMINTARA', 'JL JEND SUDIRMAN KAV 25', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(327, 'DARWIN', 'JL. AGUNG UTR STS/H/28 STS RT 4/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(328, 'TONGAM SIHITE', 'TANJUNG BARAT SELATAN RT 3/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(329, 'ARNAUD STEPHANE CLARON', 'JL. KH MANSYUR KAV 126', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(330, 'WILLIAM', 'JL.BUNI NO.10 RT.8/2 PALMERAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(331, 'MALIKY CHANDRA', 'MUARA KARANG BLOK 5 SEL/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(332, 'SHELLY MARCELLINA', 'JL.KHM.MANSYUR NO.132 RT.001 / 004 TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(333, 'BUDI SANTOSO TJOE', 'JL.KH.WAHID HASYIM /16 RT.6/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(334, 'HJ.WIWI  USWATIYAH', 'JL.KESATRIAAN NO.1 RT.5/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(335, 'NABARI PANDIA SH', 'TEBET TIMUR DALAM VI G NO 9 RT 2/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(336, 'TJOKROWINARTO', 'JL.PLUIT RAYA 200 BLK II/16 RT.016/008 PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(337, 'TERESIA ANIE ROSTIAH', 'JL.PARADISE RY BLOK K/4 RT.009/019 SUNTER AGUNG TANJUNG PRIOUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(338, 'RUDI JAKSA SIMATUPANG', 'JL.MELATI I NO.13 RT.13/9  DURENSAWIT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(339, 'YUDHISTIRA SUMAD Y L', 'PLUIT SAKTI 9 NO.12 RT.008/007 PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(340, 'RICHED', 'JL.P.JAYAKARTA NO.8/G 12  RT.7/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(341, 'SUT JINTO KANIT', 'JL. NUSANTARA 1/ H19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(342, 'KEDDY IRAWAN', 'CIPINANG MUARA RT11/3 JATI NEGARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(343, 'LEE JUNG HEON', 'CLDK TWN HOUSE & VILLA KEMANG TMR/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(344, 'BHUSAN SURESH MELWANI', 'JL. DANAU AGUNG BLK E14/28 RT 7/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(345, 'CATRIN', 'JL.SUNTER JAYA VII A NO.1A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(346, 'SARDI', 'PONDOK BAMBU  RT.1/2 PONDOK BAMBU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(347, 'RONALDI SUHENDRA', 'GREEN VILLE A 1/23 RT.3/14', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(348, 'RAYMOND NOVERIYANTO S', 'JATINEGARA KAUM RT.1/3 JATINEGARA KAUM', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(349, 'DIAN DAMAYANTI/ARYANTO', 'GIRI LOKA , BSD', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(350, 'PURNAMAWATI SAMSURYA', 'JL.BANDUNG NO.14 RT.13/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(351, 'HJ.MUKTI HIDAYATI', 'JL.BOROBUDUR RAY  D.148RT.05/09 JAKASAMPURNA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(352, 'TOMI KRISMONO SEKTI', 'JL.TELUK SARERA NO.1 RT.3/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(353, 'TOTO TUA MP.ST', 'JL.BELANAK RAYA NO.17 RT.009/007 JATI PULO GADUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(354, 'BANK DANAMON IND', 'JL. PROF DR SATRIO KAV E IV NO 6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(355, 'HUI JEN', 'JL. P JAYAKARTA 44/9 RT 14/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(356, 'RIDUAN', 'JL.P.JAYAKARTA 141 /F8 RT.9/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(357, 'ITA ROSITA ARMAN SE', 'JL. CILITAN KECIL RT 5/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(358, 'NOVAN HARDANA', 'JL. TUTUL VII/530 RT 6/11 PD BAMBU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(359, 'IR.DICKY HENRIA NUGRAHA', 'KBN SIRIH BARAT DLM NO.7 RT.3/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(360, 'PT MULTI POWER ADITAMA/KURNIAWAN', 'JL. KR ANYAR PERMAI 53-54 BLK E 15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(361, 'PT.LAMBANG INTI KREASI', 'JL.RASUNA SAIDKAV B-1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(362, 'RAMA', 'JL.BULAK III NO35 CEMPAKA PUTIH REMPOA CIPUTAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(363, 'PT.DIANMATRA STANSINDO T', 'KOMP RK SUNTER PERMAI BLK E NO.17-18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(364, 'TJAHJONO NOTOSUROTO', 'JL.JANUR KUNING VII WL 1/14 RT.5/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(365, 'PT.SUMATRA RAYA', 'JL.LENTONG NO.9 NAROGONG RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(366, 'DONNY CHRISTIANTO', 'CITRA 2 EXT BLK BG-2G RT.8/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(367, 'MAYA DAMAYANTI', 'JL. MATRAMAN DLM II/2 RT 9/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(368, 'PT SARI GAPERI/P TANTO', 'JL. SURYOPRANOTO NO 2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(369, 'PT.SUMATERA RAYA', 'JL.RAYA NAROGONG  KM.6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(370, 'PT.SUMATRA RAYA', 'JL.LENTONG NO.9 NAROGONG RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(371, 'PT.SUMATRA RAYA', 'JL.LENTONG NO.9 NAROGONG RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(372, 'PT.KARUNIA PRATAMA S', 'KOMP RUKAN ARTHA GADING NIAGA BLK E/22', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(373, 'PT.SUMATRA RAYA', 'JL.LENTONG NO.9 NAROGONG RAYA KM.6BOJONG RAWALUMBU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(374, 'DAVID', 'TUNJUNG RAYA 36 TOMANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(375, 'P JHON', 'CLUSTER NICE B-29, DELTA MAS, RT 005/003, SUKAMAHI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(376, 'PT.SUMATRA RAYA', 'JL.LENTONG NO.9 NAROGONG RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(377, 'JO. COMCE MPS', 'WISMA INDOCEMEN L. 18 JL. JENDRAL SUDIRMAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(378, 'IRWAN', 'JEMBATAN V 206 A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(379, 'DJUNJUNGAN PANJAITAN', 'JL.CENDANA NO.18 RT.2/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(380, 'DANNY KUSUMA WARDHANA', 'JL. KAYU PUTIH V11 C/9 RT 1/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(381, 'KO KOK MING', 'CITRA I BLK F3/11 RT 7/9, KALIDERES', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(382, 'WIHAN KUSTONO', 'JL. PLUIT SAKTI 7 NO 9 RT 002/007, PLUIT PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(383, 'DR.HELENA M SUNARDI', 'JL.SUMMAGUNG II KF/1 RT.5/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(384, 'GUSTI RANDI', 'JL PERCETAKAN NEGARA II A RT 112/11 JOHAR BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(385, 'SAUT OTTOMAN', 'RK ARTHA GD NIAGA BLK E/22 RT.3/21', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(386, 'KOPTAJASA/BRENDA R.A', 'JL.TELAGA JAYA KAV 942 RT.21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(387, 'ADITYA JANIS JARTUNI', 'KP MELAYU KECIL I RT 11/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(388, 'RAHMAT WIJAYA', 'KP BARU JAYA RT.8/13 KALIDERES', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(389, 'WIBOWO ANTONO', 'JL. KEADILAN II NO 8 RT 8/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(390, 'YANTI', 'JL.MELAWAN NO.123/60 RT.7/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(391, 'MOHAMAD INDRA MULUK LUBIS', 'JL. TMN AMIR HAMZAH NO.IIA RT.8/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(392, 'AGUS BAHARI', 'DUTA HARAPAN INDAH BLK NN/20 RT.8/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(393, 'KOPTAJASA', 'JL. TELAGA JAYA KAV 942 RT 2/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(394, 'PT.MAJA AGUNG ELEKTRINDO', 'JL.INDUSTRI III BLOK AD NO.3 CIKUPA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(395, 'LAURA', 'JL.MANGGA BESAR I NO.31 RT.03/04', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(396, 'LORA NURYANI SURYA', 'JL.KALI BARU TIMUR V RT 4/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(397, 'ACHMAD JANUAR', 'JL.SELON NO.24 PECENONGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(398, 'SANTI', 'JL.RAJAWALI SELATAN 1 NO.1B RT.17/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(399, 'JOHANITA/SUROSO', 'JL. P JAYAKARTA NO 72-74 BLOK D4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(400, 'PT ANDALAN CHRISDECO', 'JL SAMANHUDI NO 43 PSR BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(401, 'CHARLES DICKENS GULTOM', 'WISMA HARAPAN BLOCK G 1/20 RRT01/20MEKAR SARI DEPOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(402, 'PT BUKIT MAKMUR MANDIRI U', 'JL. JEMB DUA BLK A/36 RT 1/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(403, 'WICAKSONO', 'JL.MINANGKABAU NO.13 RT.006/008 PASAR MANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(404, 'JENNY CAROLIA/SANDI', 'CIPINANG KEBEMBEM III NO 13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(405, 'KOPTAJASA/BRENDA R.A', 'JL.TELAGAJAYA KAV 942 RT.21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(406, 'LIDWIN SAPUTRA', 'TANJUNG BARAT RT 2/4, TG BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(407, 'LIM DICKY', 'TAMAN SARI RAYA NO 56 NE RT 12/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(408, 'JAESEN WIJAYA', 'JL. DURI B IX NO 47A RT 11/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(409, 'LOTUS AMARTA HALIM', 'JL.PECENONGAN NO.82 E  RT.2/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(410, 'PT BUKIT MAKMUR MANDIRI UTAMA/ANANG', 'JL. JEMBATAN DUA BLK A/36 RT 1/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(411, 'FEBRIAN HARRY ANDARU WICAKSONO', 'JATI ASIH GARDEN NO D.6 JL.BINAASIH 2 JATI ASIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(412, 'KO NEN KHI ONG', 'KP KRENDANG RT 12/1 DURI UTARA  JAK BAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(413, 'IR.ABRAHAM MANDAHWI G', 'TAMAN PEGNGSAAN INDAH BLK O/24 RT 6/19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(414, 'PT.SUMATERA RAYA', 'JL.RAYA NAROGONG KM.6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(415, 'IR.HALIM HARJONO', 'JL.JANUR ASRI 1 QJ 11/22 RT.8/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(416, 'HELENA TJAHJADI', 'JL JANUR INDAH VII LA 19/3 KLP GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(417, 'JANUAR', 'KELAPA CENGKIR BARAT XII FT 2/4 KELAPA GADING TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(418, 'JENTI TJANDRA/AMIN GUNAWAN', 'JL.SAWAH LIO V RT.9/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(419, 'PT.TOPINDO ATLAS ASIA', 'JL.GARUDA  NO.32 KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(420, 'JOENG HANDOYO', 'JL.PLUIT TIMUR CC UTARA NO.16 RT.010/009 PLUIT PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(421, 'ORLENA', 'JL.MANGGA BESAR IV E/4 RT.5/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(422, 'PT.MULTI PANEL INTERMITRA MANDIRI', 'JL.INDUSTRI UTARA 4 BLK SS NO.6 C KAWASAN INDUSTRI JABABEKA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(423, 'SRI SOERTINI TANOJO', 'JL KREKOT BUNDER IV NO 127 RT 05/06', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(424, 'ANTO SUNARTO', 'JL.JEND BASUKI RAHMAT RT.1/2 JATINEGARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(425, 'SINTONG MANGANDAR MUDA', 'JL. JOHAR BARU V/II NO 11 RT 13/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(426, 'RULLY APRIYADI', 'SALEMBA TEGALAN VIII/143 RT 10/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(427, 'BEGIN TROYS', 'JL. PEMUDA IV RT 5/3, RAWAMANGUN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(428, 'LUKMAN WIDJAJA', 'CITRA I BLK C3/6 RT 2/16, KALI DERES', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(429, 'RITA SUTANTO', 'SUNTER HIJAU IX K 4/8 RT 17/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(430, 'IDRIS TJEN', 'PORIS INDAH BLOK C / 642 RT.011/006 CIPONDOH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(431, 'YUDI HARYMUKTI SE', 'TEBET UTARA I A/28 RT 9/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(432, 'YUDI HARYMUKTI', 'TEBET UTARA 1 A/28 RT 9/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(433, 'CAHYO', 'KOMP. ZENI AD NO 39 RT 1/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(434, 'JAY', 'JL. KREKOT BUNDER NO. 5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(435, 'LIMGANI EFFENDY', 'THE SUMMIT APT ALPEN 1/12C RT.013/018 KELAPA GADING TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(436, 'WILYN', 'JL.PEPLEPAH RAYA WU 1/12A RT.1/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(437, 'JUMEN LINARDY TJOENG', 'JL.LANTANA II H 1/26 A RT.021/008 SUNTER JAYA TANJUNG PRIUOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(438, 'SYAIFUL AKANG', 'PLUIT UTR RY/20 RT 9/5, PLUIT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(439, 'PT.EDWARD GARMINDOTAMA', 'KP.PENGASINAN RT.3/3 PERIUK JAYA PERIUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(440, 'BISMAN LUBIS', 'JL TERATAI XIII BLK P.9 TBI RT.003/002TANJUNG BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(441, 'BENYAMIN', 'JL. PULO MACAN VIII/15 RT005/005, TOMANG GROGOL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(442, 'PRIORINA', 'TAMAN KEBON JERUK IV/2 RT.7/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(443, 'AHMAD MADHIF THOYYIBIN', 'KP.KAPUK NO.16 RT.04/04 LEBAK BULUS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(444, 'ANDRE JUNAIDI', 'JL. PTB ANGKE/101 RT 11/4 TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(445, 'ANDRI', 'KARANG POLA 1 N0.2 PEJATEN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(446, 'PT EAGLE ESAIDO/RUDY', 'JL. TAMAN PALEM LTR RUKO FANTASY U/28', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(447, 'BAMBANG', 'JL.PURWAKARTA NO.2 A RT.8/3 MENTENG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(448, 'DRS.BRATA ANTAKUSUMA', 'JL.GADING KUSUMA RAYA GK 12/1 RT.001/021 KELAPA GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(449, 'WAHYU DWI SASONGKO', 'PODOK GEDE INDAH BLK D  I/1-2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(450, 'PT ANGSA PUTIH KURNIA K/HADI/NELY', 'JL SAMANHUDI NO 47, PS BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(451, 'MATIUS TANDAROESMAN', 'JL. CEMPAKA PUTIH TENGAH XV/26 RT 2/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(452, 'IRENE KUSUMA/GANI', 'JL. MANGGARAI SELATAN RT 010/001, BUKIT DURI-TEBET', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(453, 'PT.PENAPELA LESTARI', 'JL.JEND SUDIRMAN NO.21 RT.01/13 KRANJI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(454, 'PETER LORE', 'JL.KAYU BESAR RT.1/12 KALIDERES', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL);
INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `kota`, `telp`, `gsm1`, `gsm2`, `cdma`, `email`) VALUES
(455, 'BADAN PUSAT STATISTIK/P PARNO/SUMARNA', 'JL. DR SUTOMO 6-8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(456, 'YOHANES FELIX HELYANAN', 'JL. MERUYA UTARA RT6/1 KEMBANGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(457, 'BADAN PUSAT STATISTIK/P HARNO/P ALI', 'JL. DR SUTOMO 6-8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(458, 'IRPIN TANOTO', 'TMN GRISENDA BLK F6/3 RT.7/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(459, 'NATALIA SUTRISNO/BENNY', 'JL. BUKIT DURI TANJAKAN 108 B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(460, 'GUNAWAN ALIWARGA', 'JL.KARET PASAR  RT.3/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(461, 'YANWAR SUNARYO', 'JL.SAWO JAJAR NO.12 RT.001/002', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(462, 'SOFIATKO HENDRO', 'JL.MUNCUNG DALAM BLOK K GG  II/5 RT.003/013 LAGOA KO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(463, 'DR MS MARKUM', 'JL.A YANI 1-C9 RT.17/6 PISANGAN TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(464, 'DIRA SULANJANA', 'JL. AGUNG JAYA IV BLK B 20 / 33 RT 13 /10 SUNTER AGUNG TANJUNG PRIOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(465, 'THUNG FANG LIE', 'JL.RAYA KELAPA GADING PERMAI J1/8 RT.10/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(466, 'I WAYAN KARTA WIJAYA', 'TMN RAFLESIA BLK B NO.16 RT.06/06JATIMULYA TAMBUN SELATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(467, 'GAD MEYER M LIMBONG', 'JL BUKIT CINERE KAV 45 C RT 023/006, GANDUL-LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(468, 'ANIEK KUSWARDHANI / HANDOYO', 'KP.TENGAH RT.003/008 TENGAH KRAMAT JATI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(469, 'JOHAN', 'PURI BOJONG LESTARI RT 01/04 BOGOR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(470, 'RUKMINIWATI', 'JL.BANGKA RAYA GG SATRIA NO.32 RT.009/011 PELA MAMPANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(471, 'THOMAS HERMANTO', 'JL. TAMANSARI X/89 RT8/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(472, 'DEDDY RENDRA', 'VILLA GADING INDAH BLOK F/17 RT.1/14', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(473, 'SUGIHONO', 'JL. KALIANYAR VIII RT 4/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(474, 'SUGIHONO', 'JL. KALI ANYAR VIII RT 4/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(475, 'DANIEL LAURENS', 'JL. STR PARADISE 16 BLK J/27 RT 4/19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(476, 'IR.IVAN JEFRI PARDEDE', 'LEGENDA WISATA , NAPOLEON E3/32 RT.01/15 CIBUBUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(477, 'SUNARTO HASAN', 'VILLA MELATI MAS BLOK B-1/6 RT 50/08, JELUPANG-SERPONG UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(478, 'ADE SURAHMAN', 'KEBON JERUK RT.8/11 KEBON JERUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(479, 'DJOKO HARRY PRAKOSO', 'JL TULODONG BAWAH VIII/45', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(480, 'VINA', 'JL. PEMBANGUNAN III/8 RT 4/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(481, 'GAYUH KINANTI', 'JL. KAYU PUTIH DUA RT 2/8, PULO GADUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(482, 'PT SURYA SUDECO', 'JL. KAPTEN TENDEAN NO 15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(483, 'DIANO EKO MUSMARIANTO', 'JL. KEBON KACANG XI RT 11/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(484, 'BENNY', 'MUARA KARANG BLK B  X U/2 RT.1/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(485, 'PT SURYA SUDECO', 'JL KAPTEN TENDEAN NO 15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(486, 'HELMY ROTUA BUTAR-BUTAR', 'JL. RAJAWALI I NO 6 RT 7/2, KAYURINGIN JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(487, 'LYANA TEJANINGSIH', 'KOMP.PT.HII BLK B/11 RT.4/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(488, 'MARIYANI ISWARA', 'KOMP DDN  II  BLOK I  NO.19 RT.7/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(489, 'SUARDI ASMIN', 'TELUK GONG JL. B/14A RT 11/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(490, 'INDRAWAN B', 'METRO PERMATA II D-5/9 RT.02/13 KR MULYA KARANG TENGAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(491, 'GUSTI RANDY', 'JL.PERCETAKAN NEGARA II-A RT.12/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(492, 'PITER GUNAWAN', 'JL MANGGA BESAR RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(493, 'JUTI WITARSA', 'KARET BELAKANG RT 01/02 JAKSEL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(494, 'IMRON PRASETIO', 'JL. SUNTER PARADISE 13 BLK R/13 RT 1/19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(495, 'YENNY SAPTONO', 'KAV POLRI BLOK A X/234 RT.3/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(496, 'PT.OMYA INDONESIA', 'JL.KH.HASYIM ASHARI 125', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(497, 'DEP HUB RI BADAN LITBANG', 'JL. MERDEKA TIMUR NO 5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(498, 'ICE LILIYANTI', 'TAMAN MODERN BLOK D4 NO.16 RT.009/006 UJUNG MENTENG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(499, 'DRG.ANDI RISMAYANTI', 'JL.KALIBARU TIMUR GG V/7 RT.007/005 BUNGUR SENEN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(500, 'ARAHMAN', 'ASRAMA BRIGIF 1 PIK/JS RT.4/8 KALISARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(501, 'RR.YULISTYORINI TRI WARDANI', 'JL.NILAM BLOK D 337 BEKASI BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(502, 'TIWIK HERMAWATI/TEGUH', 'PURI GADING BLOK C6 NO 24 RT 03/10, JATI MELATI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(503, 'ALEXANDER LAY', 'KEPA DURI MAS BLK JJ / 6A RT 3/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(504, 'TJONG MUI MUI', 'JL. PENGUKIRAN II/20 RT 9/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(505, 'DIMAS RIZKI', 'JL. J NO 72 RT 8/1 KEBON JERUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(506, 'DR.SURAHMAN MUIN', 'CEMPAKA PUTIH TENGAH 22A NO.56 RT.14/04', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(507, 'INDRIANI PUTRI', 'JL BANGKA X/9 RT 4/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(508, 'PT.SUMATRA RAYA', 'JL.LENTONG NO.9 NAROGONG RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(509, 'SHINTA DWI KORANI', 'KOMPLEK PT.INREMCO NO.5 RT.7/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(510, 'ZAYDUL KHAIR', 'JL.ZAMRUD RAYA 15 RT.001/004 SUMUR BATU KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(511, 'LUKMAN HENDRA', 'JL. KREKOT JAYA BLOK AC/31 RT 3/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(512, 'HERI SUSANTO', 'JL.GARNISUN NO.8 RT.5/4 SETIABUDI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(513, 'VIVIAN/FREDY', 'JL. MG BESAR VI SELATAN 102 A RT 5/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(514, 'PT.SUMATRA RAYA', 'JL.LENTONG NO.9 NAROGONG RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(515, 'PT BANK DANAMON IND,TBK/AGUS RULLY', 'JL. PROF DR SATRIO KAV E IV NO 6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(516, 'ERWIN', 'JL.SURYA WAHANA I BLOK III Q/31 RT.007/002 KEDOYA SELATAN KEBON JERUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(517, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(518, 'SERINANI', 'JL. GRIYA INDAH BLK M/11 RT 3/20', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(519, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(520, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(521, 'PT.BERASTU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(522, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(523, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(524, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(525, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(526, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(527, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(528, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(529, 'PT INDOVICKERS FURNITAMA', 'JL. CIPINANG MUARA II NO 29', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(530, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(531, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(532, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(533, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(534, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(535, 'CHARLES', 'MUARA KARANG BLOK R 5 SEL/02 RT.10/17', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(536, 'FELIA MULYANTI/RAMON', 'JL. MUSIK RAYA B 23 RT 1/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(537, 'PT UNIPOWER PRATAMA/HENDRA', 'JL. EMPANG BAHAGIA RAYA NO 2C', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(538, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(539, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(540, 'BONG LUN KONG', 'JL. ANGKE JAYA III/37, ANGKE-TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(541, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(542, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(543, 'HENNY HERAWATI HUSIN', 'BSD GIRI LOKA II BLOK S2/23 RT 04/02 LK WETAN SERPONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(544, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(545, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(546, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(547, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO,35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(548, 'PT.UNIPOWER PRATAMA', 'JL. EMPANG BAHAGIA RAYA NO 2 C', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(549, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(550, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(551, 'IMELDA GANI', 'KOMP. PAKUWON BLK A NO 14 RT 7/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(552, 'PT BERSATU AMAN SEJAHTRA', 'JL LIMO RAYA NO 35 RT 006 RW 001 KEL LIMO KEC DEPOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(553, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(554, 'REGINA SITURU K', 'JL. DANAU AGUNG 3 NO 12 RT 1/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(555, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(556, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(557, 'ANDI', 'JL.PEMBANGUNAN 3 NO.3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(558, 'EDY NUGROHO', 'JL.TAMAN BENDUNGAN JATI LUHUR II NO.6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(559, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(560, 'MONA SAPTONO', 'GG.SENTOSA PEKOJAN III RT.002/009 PEKOJAN TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(561, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(562, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(563, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA  NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(564, 'ARYANU DWI RAHMAT', 'JL.KERJABAKTI RT.7/4 MAKASAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(565, 'ARYANU DWI RAKHMAT', 'JL.KERJABHAKTI RT.7/4 MAKASAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(566, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(567, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(568, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(569, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(570, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(571, 'MEIJANI WIBOWO', 'JL.DENPASAR BARAT C7/10 RT.8/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(572, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(573, 'PT.BERSATU AMAN SEJAHTERA', 'JL.IMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(574, 'WITA PANDOJO L', 'JL. MANGGA BESAR 93 P RT 15/1 TANGKI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(575, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(576, 'ANDY SUKAMTO', 'JL. ANGKE JAYA IX/9 RT 8/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(577, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(578, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(579, 'ALIN SANTOSO', 'JL.GADING KIRANA TIMUR 1 B2/46 RT.8/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(580, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(581, 'PT.SATRIA PUSAKA DHARMA', 'PRINCE CENTRE LT.7 JL.JEND SUDIRMAN KAV  3-4 KARET TANAH ABANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(582, 'LINDA LIDO', 'MUARA KARANG BLOK G 6 T/40 RT.1/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(583, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(584, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(585, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(586, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(587, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(588, 'BAMBANG HADIYANTO', 'SUNTER HIJAU VIS D1/3 RT 17/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(589, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(590, 'WAHID', 'JL. MESJID RT 006/07, SUSUKAN-CIRACAS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(591, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO,35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(592, 'PT. PRINTECHNINDO RAYA UTAMA', 'KAWASAN SENTRA BISNIS ARTHA GADING BLOK A7A NO. 30, KELAPA GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(593, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(594, 'KANTOR PUSAT DITJEN KEKAYAAN NEGARA', 'JL. LAPANGAN BANTENG TIMUR NO.2 - 4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(595, 'CARNEN', 'JL.WALET INDAH 3 NO.11 RT.14/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(596, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(597, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(598, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(599, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(600, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(601, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(602, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(603, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(604, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(605, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(606, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(607, 'NEVILLE LOREEN', 'JL.ANDARA 17 KOMP ANDARA NO.5 RT.3/1 PKL JATIBARU LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(608, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(609, 'ANDY YAW', 'JL .KESATRIAAN MARINIR RT 12/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(610, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(611, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO,35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(612, 'DEWNTORO KOSASIH', 'JL.GG SEMEN NO.10 RT.9/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(613, 'HERLINA SETIAWATI', 'JL. KHM MANSYUR RT 2/2, DURI SELATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(614, 'IR . REYMOND RENALDY', 'JL. JAKARTA  A 16 BLOK L RT 01/09 CINERE', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(615, 'HENDRIK THIO', 'JL. JANUR ELOK X QG 9/15 RT 4/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(616, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(617, 'LISA SUSANTY/AGUS', 'CITRA V BLK B 1/23 RT 4/10, KAMAL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(618, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(619, 'LISTA ADRIANI', 'JL. KELAPA MOLEK VI S 2/14 RT 10/19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(620, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006.001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(621, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(622, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(623, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(624, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(625, 'SETIO PURWANTO', 'JL.INPRES 19 NO.95 RT.02/09 LARANGAN SELATAN LARANGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(626, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(627, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(628, 'EDISJAH', 'SUTERA DELIMA V NO 8 RT 004/010, PONDONG JAGUNG-SERPONG UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(629, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(630, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(631, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(632, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(633, 'IR.ARI SUDIJANTO/BPK YONGKIE', 'VILLA BI9NTARO INDAH BLOK BX1 RT.05/11 JOMBANG CIPUTAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(634, 'LIE THWAN HIAN', 'JL. PULO MAS UTARA III D/11 RT 1/14', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(635, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(636, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(637, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(638, 'MULIAWARMAN', 'JL. JANUR HIJAU XII TP2/21 RT 4/15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(639, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(640, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(641, 'WIN ZENDY TEDJA', 'JL. KEBON JERUK XVIII NO 57 RT 2/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(642, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(643, 'ABDUL HAKIM SALEH', 'KOMP. PEMDA BLOK C3 RT 08/11 NO 56 K, JATI ASIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(644, 'PT.QUADRA SOLUTION', 'JL.HR.RASUNA SAID KAV B 9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(645, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(646, 'JOHAN RUSLI', 'MUARA KARANG BLOK F 3B/15 RT.004/018', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(647, 'HANS EVERHARD KANTOOR/KRIS', 'MUARA KARANG BRT 26 A RT 6/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(648, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(649, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35.RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(650, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(651, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(652, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(653, 'DJOHAN SUWANTO', 'PLUIT KARANG II/56 RT12/8 JU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(654, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(655, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO DEPOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(656, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(657, 'PT.MULTIGUNA BANGUNJAYA', 'TMN PALEM LESTARI RK GALAXI  BLOK O NO.51 CENGKARENG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(658, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(659, 'BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(660, 'FIRMAN', 'JL. KRAMAT (PALPUTIH) NO 192', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(661, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(662, 'IR.ENDRAS SETIAWAN', 'JL.KEMUNING IV/71 RT.10/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(663, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(664, 'JEFRY GREYMALDO', 'BANJAR WIJAYA B3/6 RT.03/13 PORIS PLAWAD INDAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(665, 'ANDI LO/PONO', 'JL ANGKASA DLM I NO 50 H RT 13/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(666, 'RINI WULANDARI, SE/RAHMAN', 'JL. IR H JUANDA III NO 11 RT 7/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(667, 'SUFRENI, SP/TUNAS USE CAR', 'CAKRA WIJAYA V RT 6/12, CIP MUARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(668, 'YUNNYTA', 'JL. KRENDANG TIMUR GG IV RT 4/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(669, 'SONI', 'JL.LETJEND SUPRAPTO NO.L20 RT.1/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(670, 'JAP SOON KIE/ACHMAD NASIRI', 'JL.RAWA PAPAN RT.9/6 BINTARO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(671, 'ANDI LO', 'JL. ANGKASA DLM I NO 50 H RT 13/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(672, 'K.P DIJEN KEKAYAAN NEGARA', 'JL.LAPANGAN BANTENG NO.2-4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(673, 'JUARTO TJANDRA', 'VILLA TMN KARTINI E-1/9 RT 8/23, MARGAHAYU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(674, 'PT.FORTINDO', 'JL.JEMBATAN III KOMPLEK CARINA SAYANG II D-1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(675, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(676, 'SUKAMTO TJIA', 'MUARA KARANG BLK E8 U/31 RT.3/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(677, 'ADIANTA', 'JL.MELAWAN NO.69 C RT.007/007 MANGGA DUA SELATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(678, 'ISMIYATI', 'PEJATEN BARAT RT 3/7, PEJATEN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(679, 'DR. AGUS LIMARTA', 'TMN HARAPAN INDAH BLK M NO 1 RT 7/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(680, 'MOHAMMAD MUNIF AMIN', 'TAMAN MANGGIS PERMAI BLOK R/9 RT.4/29 SUKAMAJU SUKMAJAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(681, 'ANTHONY ALI', 'JL. KAYU BESAR RT 5/8 TEGAL ALUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(682, 'IVAN ARYADI', 'GADING ELOK UTR 3 FX 2/1 RT 8/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(683, 'BUDI S/KIKI FAJAR', 'JL.RAYA BEKASIKM 27', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(684, 'JUNIJATI TANZIL', 'JL. MANGGA BESAR VI/26 RT 9/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(685, 'FONDA PRAWIRA SETIADY', 'JL. KEADILAN RAYA NO 46', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(686, 'MARIYATI', 'JL.KOMP BEACUKAI BLOK I 5/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(687, 'BADAN PUSAT STATISIK/PARNO/P. MAMAN', 'JL DR SUTOMO NO. 6-8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(688, 'BADAN PUSAT STATISTIK/P. HARNO/P. MARIN', 'JL. DR SUTOMO 6-8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(689, 'JOHN ARTONO TJITRASMORO', 'JL. KEMANGGISAN UTAMA RAYA/7, RT 002/007, PALMERAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(690, 'P VIJAY/MANU', 'JL. AGUNG JAYA VII BLK D/3 RT 20/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(691, 'ANDRI/IDA', 'CITRA RAYA BLK E2/34 RT 08/02, CIKUPA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(692, 'MARIHOT GULTOM', 'WISMA HARAPAN BLOK G I/20 RT.1/20 MEKARSARI CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(693, 'MAMUR', 'JL.GN MAHAMERU NO.6 TAMAN SIMPRUK LC RT.4/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(694, 'PT MULTI PRIMA ENTAKAI', 'JL. MANGGA BESAR VIIINO 20 RT 1/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(695, 'DIRJEN IND LOGAM M E & A/YULIUS', 'JL. JEND GATOT SUBROTO KAV 52-53', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(696, 'PT.WIHADIL CHEMICAL INDUSTRI', 'JL.DIPATI UNUS NO.29 RT.01/01 CIBODAS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(697, 'PT.AGUNG CONCERN', 'JL.CUT MEUTIAH NO.5 CIKINI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(698, 'PT ANDALAN CHRISDECO', 'JL. SAMANHUDI NO 43, PASAR BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(699, 'K.P DITJEN KEKAYAAN NEGARA', 'JL.LAPANGAN BANTENG TIMUR NO.2-4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(700, 'PT. SOUTHERN UNION ENRGY', 'JL. DR. SUSILO RAYA NO C 5 RT 1/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(701, 'SAMUDRA HENDRA/IBU SISKA', 'JL. DUTA BUNTU RT 01/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(702, 'K.P DITJEN KEKAYAAN NEGARA', 'JL.LAPANGAN BANYENG TIMUR NO.2-4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(703, 'INDAH BERLIANTI', 'Jl. CEMARA ANGIN BLK Z/27 RT 7/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(704, 'BETTY JULIAANTJE PARUNUSSA', 'JL.JATILUHUR RAYA DB NO.2 RT.02/12 JAKA SAMPURNA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(705, 'PT SOUTHERN UNION ENERGY', 'JL. DR SUSILO RAYA NO C 5 RT 1/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(706, 'DUFIN SALAMON QUI', 'GG.JAMBLANG INDAH 2 NO.3 RT.013/002 DURI SELATAN TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(707, 'LIN HOK KHIUN', 'JL.PADEMANGAN II GG 4 /40 RT.9/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(708, 'RHINO TANDO TJHIN', 'JL. TSS RAYA RT 3/4 , DURI UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(709, 'R AGUNG DEWANTO', 'DEPOK MAHARAJA BLK B1/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(710, 'PT SAMA BAHAGIA PERKASA/WIDODO H', 'JL. CAMAR ELOK 7/8 RT 12/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(711, 'SUNG AGUSTINUS', 'JL. DURI SELATAN RAYA NO 42 G H RT 3/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(712, 'ERLIYANTI ZAINAL ABIDIN', 'GD KIRANA TMR VIII H8/12A RT 3/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(713, 'IR.SHAUKAT ALLY CH', 'JL.MANGGIS I NO.28 RT.8/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(714, 'DRS.HARIANTOS SIAHAAN/CRISTIAN', 'KP PLERET RT03/11 PEDURENAN KR TENGAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(715, 'PT. DATASCRIP', 'KWS NIAGA SELT BLK B/15/9 KMY JP', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(716, 'PARK MYEONG SOO', 'APT AMARTAPURA LIPPO KARAWACI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(717, 'PT GRAND TRANSPORTASI SE JAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI ,Jakarta', '+6221', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(718, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(719, 'APRIANI RUSDAMIN SE', 'ERAMAS 200BLK A9 /15 RT 2 / 15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(720, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(721, 'DEP.KEUANGAN R.I', 'JL.LAPANGAN BANTENG TIMUR NO.2-4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(722, 'DHARSONO', 'JL.PULAU PARI BLK L-1/57 RT.10/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(723, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(724, 'PT. GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(725, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(726, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(727, 'PT. GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(728, 'PT, GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(729, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(730, 'BAMBANG', 'JL. AUP PS MINGGU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(731, 'HERLINA DJAYADI', 'TPI II BLK M/25 RT.13/15 PEJAGALAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(732, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(733, 'SHAFIQ MULJANTO', 'JL.TRIDHARMA NO.4 RT.12/08', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(734, 'PT.GRAN TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANADRA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(735, 'PT. GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(736, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(737, 'PT.GRAND TRASPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(738, 'SZE NGAI CHAN', 'JL.MANGGA DUA ABDAD F 78', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(739, 'BADAN PUSAT STATISTIK/P. PARNO/ TONY', 'JL. DR SUTOMO NO 6-8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(740, 'PT.GRAND TRASPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(741, 'PT.GRAN TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(742, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(743, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA  MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(744, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(745, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(746, 'PT. GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G DAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(747, 'PT. GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(748, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(749, 'PT.ANDALAN CHRISDECO', 'JL.SAMANHUDI NO.43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(750, 'HERMAN BENYAMIN/SURYADI', 'JL. DANAU AGUNG 19 F 12 RT 8/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(751, 'TONY', 'KP KEBON KELAPA RT.003/04 PASAR KEMIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(752, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(753, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDAR MAS BLOK  G  KEDAUNG WETAN NEGALASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(755, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(756, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(757, 'HARIADI AGUSTONO SOENARJO', 'VERMONT PARKLAND BLOK G 7/6 BSD RT 01/08 LK, GUDANG SERPONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(758, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(759, 'PT MULTI TEKNIK ABADI', 'RUKAN EKSKLUSIF BGM PIK BLOK G 023 RT 004 RW 003 KAMAL MUARA-PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(760, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(761, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(762, 'DR. MA MUR SJAFEI', 'CEMPAKA TIMUR RAYA 73/ RT 1/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(763, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN  NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(764, 'ALEXANDRE', 'JL. LEWA RT 5/10, PEKAYON', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(765, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'JAKARTA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(766, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(767, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(768, 'MURDIYANTO', 'JL.ENIM NO.85 RT.8/2SUNGAI BAMBU TANJUNG PRIOUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(769, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(770, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(771, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(772, 'TOMMY', 'TAMAN MODERN BLOK D 4 NO 16 UJUNG MENTENG BEKASI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(773, 'PT. GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G DAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(774, 'MAYA ALATAS', 'JL. TUTUL VII 546 BLOK Q RT 3/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(775, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(776, 'PT.GRAND TRANSPORTASI  SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G DAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(777, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(778, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(779, 'SHILPA PERKASH/RAVI', 'JL. AGUNG TENGAH XI BLK I 8/1 RT 12/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(780, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(781, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(782, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(783, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(784, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(785, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(786, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(787, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(788, 'PT.GRAND TRANSPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGLASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(789, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006.001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(790, 'KANTOR PUSAT DITJEN KEKAYAAN NEGARA', 'JL.LAPANGAN BANTENG TIMUR NO.2-4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(791, 'KOPIN PEGAWAI PT PLN', 'JL. SULTAN ISKANDAR MUDA NO 88', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(792, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(793, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL);
INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `kota`, `telp`, `gsm1`, `gsm2`, `cdma`, `email`) VALUES
(794, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(795, 'PT.INKOASKU', 'JL.GAYA MOTOR SUNTER II', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(796, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(797, 'RONNYANTO HIMAWAN', 'JL.DURI KENCANA XI/15 RT.4/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(798, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(799, 'SEINI NOVA', 'JL. PADEMANGAN I GG 13 RT 13/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(800, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(801, 'WIYANDI GUNADI TJHIN', 'SUNTER HIJAU IX/O 2/9 RT 17/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(802, 'SUGANDI SANTOSO', 'KAEMANGGISAN UTAMA V KAV 298 RT.7/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(803, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(804, 'ERNY KOJONGIAN/LATIEF', 'JL. HIJAU DAUN C 2/27 RT 11/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(805, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(806, 'RADEN RORO DEWI ANGGRAENI', 'PERUM PURI INSANI 1 BLOK F 1/12 RT.07/04 SUKMAJAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(807, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(808, 'ROBIN', 'JL.P.JAYAKARTA 123/2 RT.6/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(809, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(810, 'DRS. GANDHI SURYOTO', 'P LOKA A/C 12 A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(811, 'DR.BARLINA', 'JL.RAWASARI BARAT II E.29 RT.2/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(812, 'BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(813, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(814, 'AGUS', 'JL. H NALIM RT 02/08, SRENGSENG SAWAH-JAGAKARSA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(815, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(816, 'LAY KET HIN', 'GG.TRIKORA NO.20 A RT.10/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(817, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(818, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(819, 'PT BERSATU AMAN SEJAHTERA', 'JL. LIMO RAYA NO.35 RT 006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(820, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMORAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(821, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(822, 'NGAMINO', 'TAMAN CIPULIR D II/12 RT 03/08, CIPADU JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(823, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(824, 'DRA. NANIJ WIDJAJA SURJANI', 'KAV POLRI BLOK E-II/1301 RT 2/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(825, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(826, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(827, 'DAL INTAN, SE/ ADE', 'JL. JAYA MANDALA I/8 RT 10/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(828, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(829, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(830, 'YANTO SUSILO', 'BINONG PERMAI C-7/2 RT.3/1 BINONG CURUG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(831, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(832, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(833, 'MOCH.FAJAR ARI FIANTO', 'KEMBANG PERMAI IV I.2/1 RT.1/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(834, 'BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(835, 'INDRA', 'JL. LOKAPALA III NO 7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(836, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(837, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(838, 'AHMAD ZUHRI  SE', 'KOMPLEK INREMCO RT.7/2 CIPULIR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(839, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(840, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(841, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(842, 'RUDIYANTO', 'JL. SENTUL JAYA II RT.01/17 HARAPAN JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(843, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(844, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(845, 'BARITA SILALAHI', 'JL. TERNATE NO 3 RT 01/05 CIMONE JAYA KARAWACI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(846, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(847, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(848, 'NENI YUSNAINI / NANA RUHYANA', 'JL.PANCORAN BARAT III RT.2/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(849, 'NANA RUHYANA', 'JL. PANCORAN BARAT III RT 2/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(850, 'WIDODO  GOENANTO', 'JL.ASEM 1 NO.323 RT.2/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(851, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(852, 'RIKIANTO SATYADHARMA', 'KAYU PUTIH UTR I C NO 90 RT 1/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(853, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(854, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(855, 'HERMAN', 'RUSUN PLUIT PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(856, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(857, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(858, 'DENNY ABBAS,SI', 'JL. TAMAN AYUN NO 11 RT 004/016 PENGGILINGAN CAKUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(859, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(860, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(861, 'KANTOR PUSAT DITJEN KEKAYAAN NEGARA', 'JL.LAPANGAN BANTENG TIMUR NO.2-4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(862, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(863, 'J KADIR TAKAR', 'JL. REMBIGA BLOK N/3 RT8/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(864, 'PT.BERSATU AMAN SEJAHTERA', 'JL.LIMO RAYA NO.35 RT.006/001 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(865, 'PT.SAN PUTRA SEJAHTERA', 'PT.P KEMERDEKAAN KOMP PTK PULOMAS/XII/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(866, 'SUBANDI', 'SUNTER PERMAI JY II/4 RT 14/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(867, 'SUGIARTO JUDARTA', 'JL. GG GEDE NO 107 RT 03/03 BENCONGAN INDAH-CURUG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(868, 'ANDRY IDEWAN SE AK', 'JL PULO MAS IIIC / 2 RT 5 /12 KAYU PUTIH JAKARTA TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(869, 'CHRISTOF TOREH', 'APARTMEN KELAPA GADING FRENCH WALK DICE GARDEN 18 A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(870, 'H. IMAM PRANOTO', 'JL. DAMAI IV/50 RT 6/2 CIPETE UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(871, 'HIRWAN TJAHYADI', 'KREKOT BUNDER 4/47 RT.6/6 PASAR BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(872, 'PT.GRAND TRASPORTASI SEJAHTERA', 'PERGUDANGAN BANDARA MAS BLOK G KEDAUNG WETAN NEGALASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(873, 'SURYA', 'KOMP.DUTA MUARA IND BLK C/8 RT.15/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(874, 'BUDHI UTAMA', 'TAMAN KEBON JERUK V-1/16 RT 11/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(875, 'WILLIAM TABAH', 'JL.SINAR HATI VI NO.168 RT.03/02 SUKAJADI KARAWACI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(876, 'PT MULTICON INDRAJAYA', 'JL. PANAITAN NO 7 TG PRIOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(877, 'EFI RAYA UTAMI', 'JL. FLAMINGO RAYA JC 17/3 RT 01/13 PD PUCUNG PD AREN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(878, 'HERU SUSANTO', 'KEMYORAN RUSUN TAHAP 3 LT 4 NO.10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(879, 'PT CORE MEDIA TECH', 'JL. MATRAMAN I/9 RT 015/001, KEBON MANGGIS, MATRAMAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(880, 'SRI MELANI', 'TAMAN PLUIT BARAT I NO 2 RT 16/7, PLUIT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(881, 'CATRI ANGGRAYANI', 'JL.GORONTALO V NO.12B RT.6/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(882, 'SIGIT PRAWOTO, SE', 'JL. KREMUNA NO 7 RT 7/6, CIPETE', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(883, 'PT GARISHINDO BUANA F I/TRIWIBOWO', 'JL. MENTENG RAYA NO 29, MENTENG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(884, 'DEP.KEUANGAN RI', 'JL.DR.WAHIDIN NO.1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(885, 'HASAN DJINGGA', 'RSN PLUIT TIMUR BLK NO.401 RT.5/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(886, 'PT.IVO MAS TUNGGAL', 'JL.MH,THAMRIN KAV 22', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(887, 'ADI MARTHA KUSUMO', 'SUNTER GARDEN BLOK D III 14-15 RT.5/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(888, 'DITTO HARNANDO', 'JL.KEBAGUSAN RAYA 39 A KAV DELTA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(889, 'BUNARTO WIDJAJA', 'APART ROXY MAS 702 RT 1/8 GAMBIR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(890, 'EDYSON', 'PULO ASEM', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(891, 'ARON', 'PLUIT TMR H U NO 37/741', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(892, 'JOHN SUHANTO', 'JL. PINANGSIA I/16 FF RT 8/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(893, 'BUNARTO WIDJAJA', 'APARTEMENT ROXY MAS 702 RT 001/08, CIDENG-GAMBIR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(894, 'PERRY C.PARLUHUTAN,SH', 'JL.TEBET TIMUR DALAM II NO.26 RT.1/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(895, 'PT ANDALAN CHRISDECO', 'JL.SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(896, 'PT ANDALAN  CHRISDECO', 'JL. H. SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(897, 'PT MARGASETA UTAMA/ALBERT', 'JL UTAN KAYU NO 100, SALEMBA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(898, 'JIMMY K', 'AGUNG UTARA I BLOK E 29 SUNTER', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(899, 'GULSHAN LAKSMAN S PUNJABI/MICHAEL', 'GRIYA AGUNG PERMAI RT 15/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(900, 'PT BANK NISP, TBK /RASTODI', 'JL. PROF DR SATRIO KAV 25', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(901, 'POERWOKO ARBOETOMO S IR M', 'PURI BINTARO BLOK PB 12/9 RT02/09 CIPUTAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(902, 'ADJID GUNAWAN', 'JL. KH ZAINUL ARIFIN 27 A RT 2/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(903, 'MGS IR TONNY', 'JL.TEBT BARAT VIII/15 RT15/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(904, 'BP BRAM', 'JL GAHARU I/26A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(905, 'IR.RAHMAWATI HARTANTO', 'JL.CIPINANG CEMPEDAK  IV/14 RT.6/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(906, 'I GUSTI AYU TRISNA P DEWI N', 'TMN BUARAN INDAH III 83/22 RT.6/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(907, 'MOHAMAD INDRA MULUK LUBIS', 'JL.TMN AMIR HAMZAH NO IIA RT8/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(908, 'PT. TRIMITRA SWADAYA', 'JL. GUNUNG SAHARI BLOK  B6 NO 60-63, GUNUNG SAHARI SELATAN-KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(909, 'RUTH DARMAWAN', 'JL. WALET ELOK 4 NO 16 RT 15/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(910, 'PT ATLAS PETROCHEM INDO/P ANTHONY', 'JL. KREKOT JAYA BLK A II NO 22', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(911, 'SUMARTO TJIPUTRA', 'JL. JEMBATAN III/25 RT2/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(912, 'ANGELA CHENDRA', 'JL. PECENONGAN RAYA 72 RT 2/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(913, 'SYAH ARDIYANTO BOGAR', 'JL.NAROGONG BLOK RAYA C 6/3  RT.3/10 PENGASINAN RAWALUMBU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(914, 'PETERUS BUDIMAN SE', 'JL.E UJUNG NO.12 A RT.7/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(915, 'DHEERAJ NANIK V', 'JL PANGANDARAN IX/44 PADEMANGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(916, 'SUHERI KUSTIAWAN', 'JL.BANGKA II RT.11/2 PELA MAMPANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(917, 'RIZQI A/N RIKA MAYA SARI', 'RAWA SIMPRUG 1B RT 2/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(918, 'DIAN', 'PINTU AIR 2 NO.35', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(919, 'JOHNNY AKHYAR', 'JL. MAWAR RAYA 24 RT 12/10, KALISARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(920, 'ANDRE CARNEGTE', 'JL. KUBIS II UJUNG NO 9 RT 03/03, MEGA KUNINGAN, MENARA PRIMA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(921, 'PT INDO FUJI ENERGI/P. LUKMAN', 'JL BUNCIT RAYA NO 2 RT 11/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(922, 'J.R KOROMPIS', 'JL.TEBET TIMUR DALAM VIII/33 RT.010/006 TEBET TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(923, 'KOPTAJASA QQ SINURMALA M', 'JL.TELAGA JAYA KAV 942 RT.21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(924, 'TOFIAN GUNARDI', 'REGENSI MELATI MAS BLK F 10/3, RT 65/11, JELUPANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(925, 'TIMBUL SINAGA', 'JL. MALAKA 2 NO 1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(926, 'EDDI ERSAN', 'JL.RE MARTADINATA S6 ANCOL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(927, 'HARIJANTO GUNAWAN', 'JL. PERMATA BIRU I H 6/1A RT 2/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(928, 'RICKO A A TARUNNG', 'JL BUKIT BARISAN / 8 RT 2 / 8 CIBUBUR JAKTIM', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(929, 'SOETJAHJA', 'JL. NIRWANA SUNTER ASRI TAHAP III BLOK C NO 3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(930, 'FRANGKY VOLANTINO RAMBING', 'PESONA DEPOK BLK AH NO 3 RT 1/26, MEKARJAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(931, 'TONNY GOSAL', 'BULEVAR HIJAU BLOK H 1/8 RT 02/24, PEJUANG MEDAN SATRIA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(932, 'DEDY', 'PETOJO VIY II 11 B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(933, 'JACOB HALIM', 'JL. CAMAR INDAH IV NO 2 RT 5/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(934, 'CHALID HENDRA', 'JL PANGANDARAN II /16  RT   ANCOL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(935, 'CHRISTINA ISTI GALUH C', 'PERUM JATI JAJAR BLOK D.6/11 RT.2/12 JATIJAJAR CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(936, 'RISMA SIMANJUNTAK', 'KOMP KODAM RT 03/08 KEBAYORAN LAMA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(937, 'DEWI/HASAN', 'SUNTER AGUNG NIAGA VI GVI/39 RT.14/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(938, 'NOVITA FITRIANTY', 'MUTIARA DEPOK BLOK NA 5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(939, 'PT.NAGA SAKTI', 'JL.MANGGA BESAR VIII/32-32A RT.2/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(940, 'PT.GM/BENYAMIN S SARMANELLA', 'JL.P ANTASARI NO10 RT5/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(941, 'IVAN D.I SOEMANTORO', 'JL. MELATI NO 24 KOMP. KODAM JAYA RT 02/07, JATI WARNA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(942, 'DJOHAN', 'GRIYA TUGU ASRI BLOK C 4 NO.15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(943, 'YULIUS', 'BUNGUR BESAR GG.20-19A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(944, 'NERO PIARDY', 'JL. BHINEKA II BLOK W/466 RT 008/009, CIPINANG CEMPEDAK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(945, 'TINA NASTASIA/INDRA', 'JL.D.I NO.8 KOMP POLRI RT.3/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(946, 'ELLY SURYANI', 'JL. CIPINANG ASEM RT 6/11, KEBON PALA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(947, 'KTI', 'JL.TANAH MERDEKA  NO.104 RT.9 / 5 SUSUKAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(948, 'YOHANES JIMMY MEIDI, SH', 'JL. KH H ASHARI 125-11/14 RT 1/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(949, 'PHILIPS MARDIANTO', 'JL. SUMANGGUNG I AB 15 RT 007/017, KLP GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(950, 'H.DHANI MUHAMAD', 'CEMPAKA PUTIH TENGAH XXXII / 5 RT,009/007', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(951, 'KURNIAWAN', 'BEJI PERMAI BLOK R NO 31', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(952, 'VENTJE JAN REFNAS', 'PESONA ANNGREK BLOK A12/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(953, 'PT WADUK MAS PERSADA', 'JL. DHARMAWANGSA VI/25 RT 5/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(954, 'NA LIWAYATY/P ASWY', 'MUARA KARANG BLK I 1 U/77 RT 20/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(955, 'YULIUS YONATHAN', 'KP. BEND MELAYU RT 1/1 TUGU SELATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(956, 'BP DODY KHRINA PUJIANTO', 'NUSA LOKA SEKTOR 14 .6 BLOK RC 18 BSD', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(957, 'WINI WULANDARI', 'JL CIP JAYA 1 BLK S NO 68 RT 3/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(958, 'MARIADY WIDJAJA/ACAY', 'JL PLUIT TIMUR BLK ZS/6 RT 7/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(959, 'DRS.ANTONIUS SUKRISWANTO', 'JL.BAMBU ASRI II/33A RT.7/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(960, 'SYAHRUL ALAMSYAH', 'A.PURI JL PEPAYA A4/1 RT12/10 JATI MEKAR,JATI ASIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(961, 'CAHYONO', 'JL.MATAHARI RAYA BLOK M 4/12A RT.04/04 WANASARI CIBITUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(962, 'JANTI SUTJIPTA/FRANS', 'PULO MAS III H/15 RT 2/2 KY PUTIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(963, 'LENDRY SUSENO MARTIO', 'TMN VILLA MERUYA E 3/25 RT 5/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(964, 'DRS. BAMBANG TRIONO', 'JL. GUNUNG SAHARI NO 40', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(965, 'HESTY SAWIDJI', 'JL. PEMUDA I BS BLK K/23 RT 4/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(966, 'ANDALAN', 'JL. SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(967, 'ANDALAN SAMANHUDI', 'JL SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(968, 'JUDI GEORGE WIDAGDO', 'JLN. MANGGIS NO 37 A RT 004/004, PESANGGRAHAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(969, 'GAYUH KINANTI', 'JL KAYU PUTIH DUA RT 002/008, P GADUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(970, 'MELITA', 'JL. BISMA II BLK B5 NO 23, TAMAN SUNTER AGUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(971, 'H DIDIN AMARUDIN', 'JL. DUREN III SELATAN NO 11, RT 01/02, KALIBATA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(972, 'ANDALAN BANDUNG,JL. SETIABUDI NO 20', 'Jakarta', '+62222030567', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(973, 'OKTAVIANTO LISTIOHADI', 'JL. KAYUMANIS BARAT 79, RT 001/007', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(974, 'LIDIA CRISTIANTY', 'JL.PULOMAS BARAT IX/2 RT.3/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(975, 'SUDARTO', 'PESONA KHAYANGAN BLK CK/9 RT 5/27', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(976, 'ABDUL BARRY,SE', 'KAYU PUTIH UTARA NO,7 RT.11/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(977, 'PT BUKIT MAKMUR MANDIRI U', 'JL. JEMB DUA BLK A/36 RT 1/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(978, 'PT.DUTA CINEMA MULTIMEDIA', 'JL.KH ZAINUL ARIFIN 31 E', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(979, 'CITA LESTIJATI', 'JL. H MOH NAIM 1/17 RT 5/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(980, 'AMINULLAH BURHAN, SE', 'JL. NUSANTARA RAYA B1/12 A RT 01/07 AREN JAYA, BEKASI TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(981, 'DRA. TETI MULYATI', 'JL. LEMAHABANG NO 67 RT 001/001, MEKAR MUKTI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(982, 'LISA OCTAVIANA S', 'BUKIT INDAH BLOK D4/11 RT 01/06', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(983, 'ANDALAN SAMANHUDI', 'JL SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(984, 'ATJUK SUGANDA', 'KP BENDUNGAN MELAYU RT 006/01, TUGU SELATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(985, 'WILLIAM ANTO', 'JL. PLUIT DALAM BLK A8 S RT 15/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(986, 'KOPTAJASA QQ BRENDA R.A', 'JL. TELAGA JAYA KAV 942 RT 21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(987, 'SUGIANTO', 'KP SERUA INDAH BLOK C1 RT 001/003, CIPUTAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(988, 'SELPINA', 'PISANGAN LAMA RT 004/003, PISANGAN TIMUR, PULO GADUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(989, 'BENNY ARIFIN', 'STR PARADISE 8/F13 NO 11 RT 8/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(990, 'PT CAKUNG PRIMA STEEL/BU DAISY', 'JL. P JAYAKARTA 117 BLK A1-2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(991, 'FENDI MULJADI', 'JL.KEBON JERUK XIV NO.5 RT.003/008 MAPHAR TAMAN SARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(992, 'ISNARTO', 'PETOJO VIY 3 NO 20', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(993, 'LINGGA PHOE', 'MUARA KARANG BLK G X S/20 RT 4/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(994, 'INDRAWATI, SE/BP. DAFI', 'TEBET MAS INDAH IV/32 RT 9/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(995, 'TAHAR', 'JL. REMBIGA BLOK N/3, KOMP ANGKASA PURA, KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(996, 'PT SMART MULTI FINANCE/BP SURYANTO', 'JL. GN SAHARI RAYA NO 2B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(997, 'NAOMY MARIE TANDO', 'BSD SEKTOR IV/3 BLOK W23 RT 02/03 SERPONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(998, 'YONERIUS', 'JL. KAHARU BLK AA/4B RT 4/6, KOJA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(999, 'IR. RADIATMONO', 'PURI SRI WEDARI BLOK G/07 RT 004/012, hARJAMUKTI-CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1000, 'GOLDEN TAXI', 'BEKASI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1001, 'TARSO WIDJAYA', 'JL. JEMBATAN DUA RAYA II/11 I RT 2/2, PEJAGALAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1002, 'JOSI', 'JL. BALIKPAPAN NO 22', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1003, 'YULI EKO NUGROHO, SE', 'PERUMAHAN BANDARA MAS BLOK J NO 2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1004, 'BAMBANG', 'JL.BANGKA NO.12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1005, 'PT.DIVATEL PRATAMA', 'JL.SUNTER KARYA SELATAN V/B I/27 RT 11/13 SUNTER AGUNG-TANJUNG PRIOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1006, 'TIMBUL SINAGA', 'JL. MALAKA II NO 1 RT 12/6, DUREN SAWIT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1007, 'SHELLY SUYONO', 'JL PELEPAH INDAH I LB 2/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1008, 'EL SUHAN', 'JL.KRAMAT RAYA NO.95 RT.16/1 PASEBAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1009, 'MULIAWAN LESMANA/DENNY', 'JL. LAUTZE NO 61 RT 016/001, KARANG ANYAR-SAWAH BESAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1010, 'IR.ALBERT P KUHON', 'JL.R.C VETERAN NO.6 RT.9/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1011, 'ZAYDUL KHAIR', 'JL. ZAMRUD RAYA 15 RT 1/4, KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1012, 'PINAWATI  MANCUNG/EDI', 'JL.GUNUNG CEREMAI NO. 11 RT 2/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1013, 'KHATARINA LAWIRA', 'MUARA KARANG BLK K X S /30 RT.6/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1014, 'ENRIQ', 'JL. KP MANGGA RT 9/1 KOJA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1015, 'PT.BANK OCBC NISP TBK', 'JL.PROF.DR.SATRIO KAV 25', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1016, 'LILY', 'TMN ARIES BLK G.6/9 RT.12/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1017, 'KOPTAJASA QQ BRENDA R.A', 'JL. TELAGA JAYA KAV 942 RT 21/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1018, 'DRS SUFYAN SYARIF', 'JL.', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1019, 'MUKIAT SUTIKNO', 'JL BOGENVILLE PERMAI 3 NO 23', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1020, 'DEANTI NURAFNI', 'BOING 1 A NO.312 RT.1/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1021, 'BDN METEOROLOGI&GEOFISIKA', 'JL. ANGKASA I NO 2, KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1022, 'LITA PURNOMO', 'JL. SURYA UTAMA RAYA BLOK V/15,SUNRISE GARDEN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1023, 'TITI ANGGRAENI', 'ARIA PUTRA  KEDAUNG PAMULANG KOTA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1024, 'DIDI SUMANTRI', 'GG. PILOT NO 26, RT 013/013, DURI KOSAMBI, CENGKARENG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1025, 'PT CATUR DAYA MANUNGGAL/IBU LIFI', 'JL. M.H THAMRIN KAV 3,KP BALI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1026, 'STOCK ANDALAN/IR LUSIANA', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1027, 'NANDA SANTRI', 'RAYA HOUSING A/10 RT 3/1, PD GEDE', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1028, 'MARA BAGINDA ELANSHORI', 'CIBUBUR RT 012/005, CIRCAS,CIBUBUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1029, 'YUSMAN', 'JL. PANGANDARAN NO 36 RT 1/08, SEPANJANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1030, 'PT.ARTHA MITRA INTERDATA', 'JL.DR MAKALIWE I NO.24 D', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1031, 'IRWAN GUNAWAN LIE/RAMLAN', 'JL. PLUIT KARANG XII D5 RT 4/17', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1032, 'NOVEL', 'JL.MANGGA BESAR 4P N0.36', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1033, 'TJEN KIN NIE', 'JL. MANGGIS NO 2 E RT 3/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1034, 'ADIL SATRIA GUNA', 'JL.TASIKMALAYA NO.23 RT.1/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1035, 'OKTAVIANTO LISTIOHADI', 'JL. KAYU MANIS BARAT 79 RT 1/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1036, 'KAS BUDIMAN', 'JL. MUNDU LUAR BLK K/75 RT 3/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1037, 'YENNY HAW/RONNY', 'JL. C NO 7A RT 01/03, KARANG ANYAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1038, 'BP PETRUS', 'KALI BARU TIMUR V JL MERANTI NO I', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1039, 'ARIEF WIBOWO', 'JL. GARUDA NO 103 RT 11/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1040, 'YONG KUSUMO', 'JL.PINTU AIR V NO.49 RT.6/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1041, 'PT.BANK OCBC NISP TBK', 'JL.PROF DR SATRIO KAV 25', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1042, 'PT.SARANA MITRA   A', 'JL.MANGGA BESAR RY NO.42 EE RT.2/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1043, 'PT SUPLAI CHAININDO S', 'JL. MT HARYONO KAV 22, CAWANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1044, 'M.D.J  THOMAS,SAY', 'JL.DANAU TOBA BLK A NO.46 RT.3 / 4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1045, 'HERMAWATI', 'JL.RANCHO INADAH RT.9/2 TJ BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1046, 'KANWARJIT SINGH BEDI', 'JL. PINTU AIR I NO 7 RT 13/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1047, 'AWALUDIN BASRIYANTO GANTO', 'JL.HOS COKROAMINOTO NO.19 RT.1/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1048, 'PT.SATYA AGRINDO PERKASA', 'TMN PALEM LESTARI JL.KAMAL RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1049, 'ERNA', 'JL.BUKIT GOLF BLOK QG 2-12 RT.01/06 CIPETE PINANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1050, 'EDY BONG', 'JL.F2 NO.2 RT.5/10 KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1051, 'KOPKAR JASINDO', 'JL.MAMPANG PRAPATAN RAYA NO.108', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1052, 'PT.TRIHAMAS FINANCE', 'GD MAL AMBASADOR RUKO NO.18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1053, 'CV. ELANTRA MAS', 'RUKO GREEN GARDEN BLOK I/9 NO. 44, KEDOYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1054, 'ITA ROSITA ARMANI, SE', 'JL. DEWI SARTIKA NO 11 RT 05/013, CILILITAN KECIL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1055, 'TAN GIOK NIO', 'JL. DWI WARNA GG II NO 3 RT 009/010, KARANG ANYAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1056, 'I MADE SUABA', 'JL. PERUM BUKIT CENGKEH II BLOK F3/5B RT 07/16, CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1057, 'AUTO 93', 'JAKARTA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1058, 'LUWINA', 'SUNTER DANAU AGUNG BLOK E2 NO.12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1059, 'ALFIN  KHAIRUDIN', 'JL. H UNG NO 126 RT 005/004, KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1060, 'TRI RAMADI/JOHAN', 'TAMAN SURYA 5 BLOK OO 2/6 RT.7/17', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1061, 'ERNEST CHRISTIANTO', 'JL.ALUR LAUT NO.486 RT.002/001 RAWA BADAK UTARA KOJA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1062, 'LISTIANAN HIDAYAT', 'JL.PELEPAH ELOK IX/QF 2/18 RT.1/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1063, 'DIANO EKO MUS MARIANTO', 'JL. KEBON KACANG XI RT 011/001, KEBON KACANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1064, 'LIM ROBBET', 'SUNTER INDAH VII BLOK HI 1/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1065, 'G. SUGRAHETTY DYAN K', 'PURI BINTARO PB 12/18 RT 004/009 SAWAH BESAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1066, 'GERRY ADI CHANDRA', 'JL BUDI MULIA RT9/7 PADEMANGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1067, 'PT. HIBAINDO ARMADA MOTOR', 'JL. RAYA BEKASI KM 17 RT1/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1068, 'YUNI AMRI', 'KOMP HARMONI MAS RT 001/003, PEJAGALAN PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1069, 'NICO', 'APARTEMEN SUDIRMAN PARK TOWER B LT 31 CH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1070, 'PT.HAMMER SAKTI', 'JL.BPULEVARD RAYA WA 2/19 KELAPA GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1071, 'RASMI SARAGIH', 'JL,PEMBINA B/405 RT.08/05 PENGASINAN RAWALUMBU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1072, 'SUROTO', 'JL. PETOJO SELATAN I/5 RT 15/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1073, 'HJ.VENTY PRIMA PUTRI', 'JL.PESANTREN KELAPA DUA NO.2 RT.3/14 PASIR GUNUNG CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1074, 'VIJAY', 'KMKG TOWER B-5 05 RT 2/21', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1075, 'AMMARILIS MURASTAMI AKBAR', 'KP. PEDURENAN, JL. PUTRI TUNGGAL NO 59 RT 6/3, HARJAMUKTI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1076, 'YANDI', 'JL BONGO RAYA BLOK F 10, KLP GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1077, 'WAWAT', 'KACA-KACA NO.5 PASAR BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1078, 'PAUL', 'KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1079, 'DAVID B GINTING', 'TMN SURYA III BLOK F-1/33 RT 3/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1080, 'KOPKAR JASINDO', 'JL. MAMPANG PRAPATAN RAYA NO 108', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1081, 'PT INSAN TEKNOLOGI SEMEST/HILMAN FAISAL', 'JL MAMPANG PRAPATAN RAYA NO 100', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1082, 'ALI', 'JL. PETAMBURAN III NO 35 A RT 5/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1083, 'PT WADUK MAS PERSADA', 'JL. DHARMAWANGSA VI NO 25 RT 5/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1084, 'ALI', 'JL. PETAMBURAN III NO 35 A RT 005/004, PETAMBURAN-TANAH ABANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1085, 'CHAN KIU TING ADA/MAKSURI', 'JL. KAJI NO 31 RT 3/7 PETOJO UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1086, 'USMAN ISMAIL', 'JL. JATI KENCANA V BLOK C2/11 RT 04/08, MUSTIKASARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1087, 'ANDRITA', 'JL.DN MANINJAU A/70 RT.4/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1088, 'HJ.SURYATIN JAYA,SE', 'PERUM PRIMKOPTI RT.4/2 SETU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1089, 'IR.HERU BUDIARGO', 'TMN.PULO INDAH BLOK Q 3/18 RT.5/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1090, 'SELPINA', 'PISANGAN LAMA RT.04/03 PULOGADUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1091, 'EDWARD ARIEF HIDAYAT', 'Jl. KH M MANSYUR NO. 58 RT 4/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1092, 'BAGUS WARDANA SISWA P', 'TAMAN ARIES E 3/8 RT 2/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1093, 'ANTONIUS H SIBIYANTO', 'APARTEMAN TAMAN RASUNATMR 06-05D RT.1/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1094, 'SUYADI SETIAWAN', 'KP KAPUK RT 1/4 LEBAK BULUS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1095, 'ROBBY', 'JL.ROSMALA NO.10 RT.017 /001 JATI PULO PALMERAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1096, 'HANDOYO', 'JL.TAMAN FLUIT KENCANA SELATAN NO.33 RT.004/006 PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1097, 'FRA. ANISA  W', 'APARTEMEN  TAMAN RASUNA TOWER  9 LANTAI 28 C RT.010/011 MENTENG ATAS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1098, 'RIZKY IRENA ANANDA', 'JL NO 38 RT 001/001 KEBON JERUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1099, 'PUTU DEASY DEWINTA S', 'PERUM B CENGKEH II BLK F3/5B RT07/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1100, 'DEEPAK RAMCHAND HEMNANI', 'JL BATU TULIS 17 NO 69 RT 2/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1101, 'WIDAJA IWAN', 'JL.B/173 TELUK GONG RT.7/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1102, 'DESI NURHIKMAH', 'JL. G NO 6 RT 4/3, SLIPI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1103, 'MALDI ZACKI CARMENDI', 'CIP KEBEMBEM RT 10/12 PISANGAN TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1104, 'STEVENT WILLIEM', 'JL.PANGANDARAN II/6 RT.5/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1105, 'TJAKRA BRATAKUSUMO', 'JL. PANTAI SANUR IV/3 RT 7/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1106, 'HJ SUNDARI', 'KOMP IKPN BLOK D NO 2 RT 03/04, PESANGGRAHAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1107, 'WAHYU PAPAT JUNI R', 'KALIANYAR RT 005/004, KALI ANYAR-TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1108, 'ZAENAL ARIFIN', 'JL. SULTAN AGUNG NO 20 RT 5/6, BOGOR TENGAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1109, 'HENNY HERAWATI HUSIN', 'BSD GIRILOKA II BLOK S.2/23 RT.04/02 LENGKONG WETAN SERPONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1110, 'NORMAN FANANI', 'JL.', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1111, 'EDY BONG', 'JL. F2 NO 2 RT 005/010, CEMPAKA BARU-KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1112, 'BUSTANUDDIN I B', 'ASR POLSEK CIRACAS RT.2/5 RAMBUTAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1113, 'PT MILLENIUM PENATA FUTUR', 'JL. KEBON SIRIH 17-19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1114, 'WYNN REYNER BAURA', 'JL.KOMANDO IV/13 RT.12/2 KARET', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1115, 'BUDI HARTAWAN PANJAITAN', 'JL.PERHUBUNGAN V NO.34 RT.1/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1116, 'PT.GM/BRATA R RAFLY', 'KOMP BILLY & MOON CH I/16 RT6/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1117, 'HILMAN SASTRADIPUTRA', 'PGS INDAH BRT IIB O 14 RT 1/16,', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1118, 'YOKIE PANCA CIPUTRA', 'JL. ORPA NO 19 C RT 9/3 TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1119, 'DESI PUSPITASARI', 'JATIWARINGIN ASRI 2 R NO 5 RT 2/5, JATIWARINGIN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1120, 'DJONO', 'JL. BAND UTARA B1 4/41 RT 09/16, PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1121, 'VERA TETY TAMPUBOLON/ARI', 'JL. PULO ASEM UTARA XII/41', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1122, 'RIDWAN JAZID', 'JL. KR KWITANG I NO 48 RT 4/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1123, 'DIRJEND HUBLA DEPHUB/AGUS/UJANG', 'JL.MERDEKA BARAT NO.8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1124, 'DEDE SURYANI HUJAENI', 'KOMP MIGAS 44 RT 4/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1125, 'FAHMI SHAKIR RANGKUTI', 'JL.PERKICI I BLK EA 2/58 RT.02/10 JURANG MANGU TIMUR PD AREN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1126, 'ESTHER TOREH', 'JL. PULO MAS BARAT 11 NO.22', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1127, 'BONG SI HOI', 'JL.ANGKE JY XIII GG 12/38 RT.4/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1128, 'WINA KUMARI', 'SUNTER GARDEN BLOK B6/23 RT.5/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1129, 'PT OSRAM/P ANDI', 'JL. SILIWANGI KM 1 DS. KERONCONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1130, 'SUSAN HASAN', 'JL. BT AMPAR III/2A RT 11/4, KR JATI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1131, 'NUR RACHMAT', 'JL. BINTARO UTAMA RAYA EA 1/25 RT 01/10, JURANG MANGU TIMUR-PONDOK AREN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1132, 'DRS. SYAM ABDU AK', 'JL. GAHARU II/40 RT 4/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1133, 'SUMEDI', 'CEMPAKA PUTIH BARAT VII NO 17 B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1134, 'DRA PURINI SAPTARI', 'KOMP DEPPEN BLOK EE/12 RT 02/11 HARJAMUKTI CIMAGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1135, 'MARYANI', 'METRO PERMATA I BLOK D 2/N02 KARANG MULYA CILEDUG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1136, 'SARWEDI HARLIM/ANTONIUS', 'MUARA KARANG R2,5/5 RT1/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1137, 'SAMSUDIN', 'JL.UJUNG MENTENG RT.07/05 CAJUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1138, 'DRA THERESIA MELIAWATI', 'DANAU INDAH XII BLK B3 RT 8/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1139, 'ANTON SUGIARTO', 'JELAMBAR RT.1/6 PEJAGALAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1140, 'IR.BASARI AJI HAMBYOTOMO', 'KOMP DEPPEN C-2 CIMANGGIS RT.01/13 CISALAK SUKMAJAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1141, 'PT INDOKARTA / Bp Pranolo', 'JL ALAEDRUS NO 64 B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1142, 'DJONO', 'JL BANDENGAN UTARA B1 4/41 RT 09/16, PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1143, 'HARYO SENO BUDI SANTOSO', 'PERDEP BERLIAN I BLOK D.4 NO.15 RT.5/6 PD JAYA PANMAS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1144, 'DIAN ABDUL HAKIM', 'PATRA TOMANG III/51 RT.8/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1145, 'HADELINA PANDIA/GUNAWAN', 'JL. KECUBUNG 37 RT 1/10, KAYU PUTIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1146, 'RICHARD HALIM', 'MEDITERANIA BOULEVARD NO 68, PIK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1147, 'FERDINAND MANUA', 'JL PLUIT SELATAN VII / 12 RT 16/06', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1148, 'DRS.BAGINDA SIANIPAR', 'JL.KRAMAT KOSAMBI 1/9 RT.1/17', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL);
INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `kota`, `telp`, `gsm1`, `gsm2`, `cdma`, `email`) VALUES
(1149, 'EDI MULIA', 'KAV POLRI BLK F III/1475A RT.5/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1150, 'MACHMAN', 'KP BARU RT 7/3, SUKABUMI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1151, 'PT PANACIPTA SEINAN COMPONENTS/MEIDA', 'KWS INDUSTRI GOBEL JL. RAYA BEKASI CIBITUNG KM 29', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1152, 'BUDI HANDOYO GOZALI', 'JL.AGUNG PERMAI  XI / 11A RT005/011 SUNTER AGUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1153, 'PT.SINAR GRAHA PARAMITA', 'TMN PALEM LESTARI BLOK A 16 NO.17', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1154, 'JEFFREY PRIBADI', 'PERMATA BUANA BLOK C8 NO 1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1156, 'LINA SOFYAN', 'JL. TERNATE NO 19 RT 12/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1157, 'LIANI GANI', 'JEMBATAN 3/38 BLK B/15 RT.14/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1158, 'NUGROHO', 'GD BNI LT 10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1159, 'MELDA TAGORE/P. SIGIT', 'JL. RAWASARI TIMUR RT 12/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1160, 'JULIUS', 'AGUNG INDAH IV BLOK L1 NO.13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1161, 'FREDRIEK BENYVARD SARIDA', 'JL.ENGGANO NO.10 RT.6/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1162, 'DODDY ANGDRAWAN', 'LEGENDA WISATA CLUSTER REMBRAN CIBUBUR H1 NO 9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1163, 'BP MUKIYAT (GM)/ERLIYANTI ZAINAL ABIDIN', 'GG KIRANA TIMUR VIII H 8/12A RT3/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1164, 'IRAWAN/LIM LENNY', 'JL.TANAH PASIR RT.4/11 PENJARINGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1165, 'LULU DIANY ZUHDIYYA/GILANG', 'JL. BANGO III/25 RT 8/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1166, 'MADI PRADANA', 'JL.CIDODOL RY NO5A RT9/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1167, 'MADI', 'JL.', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1168, 'DIAN RATRI KARTIKA SARI', 'CIPULIR PERMAI BLOK Y2 RT7/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1169, 'YANI SURYANI', 'BALI MATRAMAN RT 4/7 MANGGARAI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1170, 'CHARLES', 'RUKO GREEN GARDEN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1171, 'EKRY HALIM KUSNADI', 'JL. BATU CEPER V/57 RT 13/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1172, 'RICHARD', 'JL.MANGGA BESAR 13 -A NO.39', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1173, 'ARMADA MOTOR', 'JL.CIAWI RAYA NO.391', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1174, 'CHANDRA GUNAWAN', 'JL TAMAN GOLF XVI CG 6/15 RT 01/14 PORIS PLAWAT INDAH KOTA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1175, 'ADE', 'JL. CILIMAN NO 3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1176, 'ANNA SUSIANA', 'JL. KUNINGAN MADYA KAV 5-6 RT 6/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1177, 'ZACHRA ASIANI GAMESTI', 'JL. KEMIRI NO 21 RT 4/3, GONDANGDIA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1178, 'PT INDRASARI/P DAUD', 'JL GUNUNG SAHARI NO 40', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1179, 'SURYANTO', 'GG BATAS RT.9/1 KUNINGAN TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1180, 'NOVEL WILYANTO', 'JL. ABDUL MUIS NO 46', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1181, 'H.LUKMAN ABUNAWAS', 'KH.MAS MANSYUR BLK 20-31 RT.10/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1182, 'IMELDA IRAWATI SUMULE', 'KEMANG UTARA D/2 RT6/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1183, 'PT ASTA KARSA INDAH/IBU SISIL', 'JL. RAYA KALIMALANG NO 4B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1184, 'DR. R. PRACAHYO WIBOWO', 'JL. MANDAR UTAMA DD 1 18, BINJAY RT 02/10, PD AREN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1185, 'SARJONO', 'JATINEGARA BARAT IV NO 5 RT 7/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1186, 'NUR SUTANTO', 'JL. TAMAN SARI VIII/84 RT 6/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1187, 'SISWINANGSIH', 'PURI BOJONG LESTARI RT.9/14 BOJONG GEDE', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1188, 'MARTHIN MATURBONGS/OMAN SURYAMAN', 'KP CIBURUY 001/001 DESA CINTAKARYA, SINDANG KERTA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1189, 'MANGARA', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1190, 'PT SOHO INDUSTRI PHARMASI', 'JL PULO GADUNG NO 6-KIP', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1191, 'EVY THEMA', 'JL. KREKOT JAYA E/18 RT 2/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1192, 'LILI SUWARNI BIN NUARDI/SULINGKAR', 'JL. JEMBATAN BESI II/45 RT 5/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1193, 'SANTO', 'JL. KARANG ANYAR UTARA NO 10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1194, 'NY RULANDA', 'JL. KAYU BARAT NO 3 RT 2/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1195, 'KANG BUEM WON', 'JL.KINTAMANI NO.9 LIPPO KARAWACI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1196, 'ARIAWAN WIJAYA', 'JL.PAL MERIAM NO.22 RT.5/5 MATRAMAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1197, 'HERBERT SITORUS', 'JL. TAMIYANG NO 2 KOMP. HAUR JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1198, 'ROBBY', 'JL. BATU CEPER RAYA NO 85B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1199, 'SEMAN SENJAJA', 'JL. DURI UTARA III, TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1200, 'JIMMY', 'JL. KEBON KOSONG NO 1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1201, 'SITI FARAH ROSDIANA', 'JL.KEMUNING NO.170 RT.2/14', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1202, 'P. AYUB', 'PERUM BEKASI TIMUR REGENCY BLOK M 10/12A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1203, 'NURMANI,BCHK', 'KRAMAT SENTIONG MESJID RT.10/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1204, 'LEON BONI VENTURA KUSUMODIARJO', 'PRIMA HARAPAN REGENSI L 11 NO.12 RT.01/12 HARAPAN BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1205, 'SOEKARSO/PT SENSHINDO', 'JL. GUNUNG SAHARI XII NO 44', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1206, 'SUSANTI SALIM SH', 'RAFFLES HILLS BLK A2/2 RT 4/2 RT 4/5 CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1207, 'RAYNALDI HARJANTO', 'JL.KESEHATAN VIII/22 RT 9/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1208, 'JOHAN', 'JL.GUNUNG SAHARI NO.9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1209, 'ANHAR S AB', 'JL. MENTENG SUKABUMI 51 RT 10/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1210, 'LINAWATI', 'KARANG ANYAR JL D NO 12A RT 12/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1211, 'SURESH/SONU', 'AGUNG JAYA 23 BLOK D11/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1212, 'FEKA JEFEKA WIDJAYA/IAN', 'JL. BOUGENVILLE 3 BLOK F3/17 RT 02/13 SPJ JAYA, RAWALUMBU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1213, 'BP. H.  SYAHRIAL', 'KOMP IPTN BLOCK D 111 HARJA MUKTI CIBUBUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1214, 'PARMAN', 'DURI BARU RT6/7 JEMBATAN BESI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1215, 'AURENA', 'JL. DURI UTR I/10 RT 6/7, TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1216, 'PT CENTURY INVESTMENT/P. HARIS', 'JL. GAJAH MADA NO 3-5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1217, 'RUSDYANTO J SUGIRI', 'JL. SUNTER GARDEN D1/18 RT 5/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1218, 'BP. FAHMI', 'RSN TN ABANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1219, 'HARRY HARYODIAN MUSADI', 'JL. BDN I/45 RT11/13 CILANDAK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1220, 'MELDA P', 'TEBET UTARA IV - A7 RT 1/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1221, 'UNTUNG YUWONO', 'DEPOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1222, 'EKO SETIAWAN', 'GG LANGGAR RT 7/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1223, 'LUSI THERESIA', 'KARET PASAR RT 8/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1224, 'LIANA/HARY', 'JL. KLP KOPYOR RY M 1/14 RT 17/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1225, 'YUMI KARUNIA', 'JL.ANGGUR BARAT III NO18 RT5/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1226, 'REO', 'TAMAN RATU DAHLIA II/D4 NO 22', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1227, 'EVI ROSA SUHARTANA/ HENDRA', 'JL. BISMA 10 BLK 8 12/3  RT 4/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1228, 'PT SMART MULTI FINANCE', 'JL GN SAHARI RAYA NO 2B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1229, 'ADIL SATRYAGUNA/JUNAEDI', 'JL. TASIKMALAYA NO 23, MENTENG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1230, 'ANDI ISMAIL MACKULAU', 'WISMA CAKRA BLK K NO.11 RT.3/11 LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1231, 'IRWAN', 'JL. JELAMBAR ILIR NO 30 RT 14/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1232, 'SETIANINGSIH', 'JL ANGGUR 4 BLOCK XH 17 RT 01 / 20 MEDAN SATRIA  BEKASI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1233, 'INDRIYANI SUSANTO', 'JL.', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1234, 'ANDALAN CHRISDECO/BP DAVID', 'JL SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1235, 'YERFY SANDRA/EDWIN', 'JL. T S I BLOK F 6/31 RT 12/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1236, 'HO HADIANTO', 'KAPUK KENCANA BLK C/7 RT 2/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1237, 'HERIYANTO GUNAWAN', 'ANGKE JAYA VIII NO 3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1238, 'J SUJANTO BASUKI/ANDY', 'JL. KLP CENG TMR III EH I/14 RT 18/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1239, 'ARTI SUSILOWATI/ AGUS', 'JL. MENTENG NO 49 B RT 1/17', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1240, 'NURWAHYU SABRINA P', 'JL.TEBET RAYA NO.2 RT.13/3 TEBET', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1241, 'ENDANG HARNANI,BSC', 'JL.TJ LENGKONG /46 RT.1/7 BIDARA CINA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1242, 'DIPA HAMDI PUTRA', 'JL.ENIM NO.24 RT.1/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1243, 'HUNTJE MARCELLA', 'JL.PULOMAS I H NO.11 RT.9/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1244, 'PRAHARSA AKMAJA CHAETA / IBU LIDYA', 'PANGKALAN JATI NO 7 RT8/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1245, 'JULIANA FUDJIARTA', 'JL. ORPA MALAKA II NO 7 B RT 9/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1246, 'WILLY SENJAYA', 'JL.DR.MAKULAWE 1 NO.15A RT.11/08 GROGOL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1247, 'APRI', 'KOMP. RUKO DAAN MOGOT BARU BLOK LA 14 NO 2, KALIDERES', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1248, 'BAMBANG', 'JL.', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1249, 'DEWI DAMAYANTI', 'JL. KENARI II RT 9/4, SENEN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1250, 'INTAN BAYU GAYASHANTI', 'JL. CEMPAKA WARNA RT 20/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1251, 'ANDREW LIONARDI', 'JL.KOPI NO,17 TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1252, 'PT CITRA ASRI BUANA', 'PD CIBUBUR BLK E/20 RT 3/8, CISALAK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1253, 'TATANG DHARMAWAN', 'JL. GEDONG NO 35 RT 2/2 MANGGA BESAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1254, 'HERMAN SOFAN/JOLI SAPUTRA', 'JL. DANAU INDAH II/A-20 RT 5/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1255, 'SATRIO BUDIYONO, SH', 'JL. BHAKTI IV NO 27 RT 3/9, PALMERAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1256, 'MOMO', 'JEMBATAN V TANAH SEREAL 10 NO 6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1257, 'EPPI PASARIBU', 'JL. RAYA DELIMA NO 34 RT 4/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1258, 'ETTY GITARI', 'JL. LETJEND SUPRAPTO NO 32, PONCOL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1259, 'DESI', 'JL. NIAGA 2 D9, KEMANG PRATAMA I', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1260, 'HUSIN KURNIA', 'TSI BLOK A-1/33 RT.11/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1261, 'DANIL', 'JL.TAMBAK NO.25', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1262, 'ELITA', 'JL.', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1263, 'PT.ANDALAN CHRISDECO', 'JL.SAMANHUDI RAYA NO.43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1264, 'ANDRIANI DWI KHARISMA N', 'JL. KEB JERUK I/42 RT 7/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1265, 'WISNU WARDANA', 'JAKARTA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1266, 'PT BANK DANAMON/P SAMUEL', 'JL. PROF DR. SATRIO KAV E IV NO 6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1267, 'DANIEL H. SIMANJUNTAK', 'GELONG BARU UTR II G/44 RT 11/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1268, 'DRS A DALIL SH', 'JL.RAYA MABES ABRI RT.1/1 CILANGKAP', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1269, 'JAYADI', 'JL. PULO KENANGA VI NO 16A KEMANDORAN I', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1270, 'SURYA MULIA WIJAYA', 'JL. KRUKUT PASAR NO 22 U RT 1/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1271, 'JUNIAR', 'JL. AMPERA II RT 6/9, PADEMANGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1272, 'PT GM AUTOWORLD INDONESIA', 'JL. RAYA BEKASI KM 27', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1273, 'YULI', 'PARANGTRITIS 6 NO.12 A ANCOL BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1274, 'ERIKHA TANIA/IRSAN', 'JL. KLP PUYUH III K I/4-5 RT 2/19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1275, 'BACHTIAR PARMUS', 'JL. PD BARU I NO 8A RT 7/11, CIJANTUNG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1276, 'PT SMART MULTI FINANCE', 'JL GN SAHARI RAYA NO2B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1277, 'KURNIAWAN/MERRY', 'APRT MEDITERANIA PALACE LT 19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1278, 'HADI WIDJAJA/IBU DEDE', 'JEMB II SINAR BUDI RT 3/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1279, 'RULY FARULIAN MBA', 'JL. MUSHOLLAH NO 2A RT 4/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1280, 'IR.GEDE DARMAWAN', 'JL.PAPANGGO I C NO.23 RT.2/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1281, 'PT. FANTASI REKASEMBADA/FRANS', 'JL. RAYA HANKAM NO 8 RT 06/09, JATIWARINGIN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1282, 'PT.ANDALAN CHRISDECO', 'JL.RY KBY LAMA NO8-9 ARTERI PD.INDAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1283, 'AMERIZA LASE', 'PERUM KOMP BAHAGIA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1284, 'AMIRUDIN/ADE', 'JL. PENJERNIHAN I NO 37', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1285, 'HALIM', 'JL.RAYA BOGOR KM.40,4 CIBINONG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1286, 'HERMAN', 'BENDUNGAN JAGO NO.1 KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1287, 'PT UNIVERSAL ABRASIVINDO/IBU IVANA', 'JL. MUSI NO 3 A-B', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1288, 'HARYO SENO', 'JL DEWI SARTIKA NO 313', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1289, 'EDY BONG', 'JL.F2 NO.2 RT.5/10 KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1290, 'ELLY WIJAYA/EDY', 'JL. TELUK INDAH BLOK Q NO 37', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1291, 'AGUS YADI KIUNG/ SANDI', 'JL.AMPERA V /30 RT.7/9 PADEMANGAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1292, 'FU JAN LIONG', 'JL. BETET DALAM K I RT 1/6, TAMBORA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1293, 'WASIMIN', 'JL. B GG VCII/27 RT 15/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1294, 'RAHAMAT HIDAYAT', 'KEPU DALAM X NO 39A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1295, 'RATNA JUWITA CICILIANA U', 'JL.TAMAN SARI III/4 RT.3/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1296, 'SITI RAHAYU/P AUDI SAMANHUDI', 'JL. SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1297, 'IMELDA HALIM', 'JL.TANJUNG DUREN UTARA VII/9 RT.12/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1298, 'ABDUL HARIS', 'JL.BAUNG NO.29 RT001/003 PASAR MINGGU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1299, 'EEM SAGITA', 'JL.KRENDANG GARUDA BARAT RT.10/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1300, 'MAY MAY', 'TAMAN SARI RAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1301, 'LILIK BINTORO TRIPOERNAOMO', 'JL.ABDUL MUIS NO44 RT9/8 GAMBIR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1302, 'PT SMART MULTI F/BP IWAN K', 'JL GN SAHARI RAYA NO 2B SWH BESAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1303, 'ENDY PRASETYO', 'KRAMAT KWITANG I G NO 78', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1304, 'DR. H. RIZALSYAH FAHLEVIE', 'JL.', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1305, 'MEGA S VERA HUTAGAOL/FERI', 'JL. SAABA RY-9 RT 1/3 MERUYA SELATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1306, 'HOK SUN', 'JL. M KARANG BLK H1 U/147 RT 21/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1307, 'RITA PURNOMO', 'JL. PEJUANG RT 15/10 KB JERUK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1308, 'DANIEL/ FAJAR', 'JL.LODAN DALAM 1 C NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1309, 'BAMBANG', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1310, 'CHRISTINE/CAHYADI', 'JL. AMPERA VI RT 9/9 PADEMANGAN BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1311, 'NELY/ROY', 'JL. CEMPAKA MAS BLK D 1/20', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1312, 'TAAT TRIBOWO', 'JL. CEMPAKA WARNANO 7, CEMPAKA PUTIH TIMUR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1313, 'HASANUDIN', 'JL.MENTENG KECIL NO.27', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1314, 'DRS. IRDIANTO, AAAIK', 'KOMP. PLN RT 1/9, CILILITAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1315, 'J. HARIS MANON HS', 'JL. PEJOMPONGAN IV/31', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1316, 'SUNARNO', 'MG BESAR VI RT/7/4 TAMAN SARI JB', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1317, 'JULISTIAN IRWATI/ELIAS', 'JL.PLN II NO.7 RT.2/9 KEMANGGISAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1318, 'NUR SETYAHAYU/SUPRI', 'KRAMAT SENTIONG KAWI-KAWI ATAS RT 15/008 NO 13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1319, 'KEMAL ABRAHAM', 'JL. BANTAR JATI RT 8/2 SETU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1320, 'TATY SUKMAYATI LUCKY R', 'JL.DUTA  PERMAI BLOK C.4/13 RT.06/09 PISANGAN CPT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1321, 'IWAN W ADINATA', 'KALIBATA TENGAH XI/H-32 RT 8/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1322, 'SIE SHINTA DEWI/ALEX', 'JL. PECAH KULIT DALAM 27A RT 5/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1323, 'HERMAN', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1324, 'IR.HELYUZAR', 'VILLA PAMULANG BLOK DF 1/16 RT6/19 PAMULANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1325, 'LIDYA', 'WGP A-12/16 RT.2/20 KELAPA GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1326, 'LYNDA PERMATASARI', 'VILLA JATI BENING  TOL BLOK BE NO.8 RT.08/03 JATIBENING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1327, 'SUHARTONO', 'KP.DUKU RT7/5 KBY LAMA UTR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1328, 'SILVIA NUGRAHWATY', 'JL. TEGAL PARANG SELATAN I/16 RT 1/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1329, 'BHAVNA DILIP CHUGANI/SISILIA/GIANTO', 'KUTA RY NO 6 RT 17/7, KLP GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1330, 'AGUS BUDIMAN', 'JL. TAVIP V/6 RT 3/13, TANAH SEREAL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1331, 'SITI HOLIAH', 'JL. AGUNG PERMAI I/33 B24 RT 6/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1332, 'SYLVIA WILSINKY', 'M KARANG E3 S/4 RT 6/18 PLUIT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1333, 'SUGANDA', 'JL KARANG ANYAR G 9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1334, 'TATANG HENDRIO', 'CITRA GARDEN I BLK E-3/27 RT 6/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1335, 'P. SAGALA', 'JL. PARAPAT II NO 3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1336, 'HARRY', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1337, 'SIRAIT', 'TAMAN BOGENVIL BLOK B2 NO.9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1338, 'ARI SURYANDA ISAPUTRA/GM', 'TMN ASTER BLOK A2/78, RT 13/07, TELAGA ASIH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1339, 'CHINDRA LIE', 'CITRA I EXT BLK AB 2/9 RT 4/15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1340, 'ANDRE', 'JL TERUSAN BANDENGAN UTR KOMP 89 NO 29', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1341, 'SUGANDA', 'PERUM JATIJAJAR BLOK C 4/13 CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1342, 'TERESA', 'JL. AGUNG UTARA 6 B BLOK A9 NO 46, SUNTER', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1343, 'RUDY SETIADI', 'JL. HIJAU  DAUN  I  11 RT 8/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1344, 'PT KODI ELECTRONIC/KIM SANG HYUN', 'JL. BOULEVARD BRT RK INK BLK A/53', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1345, 'FERY WIJAYA/BP JOHAN', 'JL. ANGGREK NELIMURNI II A C/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1346, 'CI MEI', 'TAMAN SARI RAYA NO.3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1347, 'RINALDA THEODORA UTEH', 'KP BALI PESING RT 2/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1348, 'TAN ESTHER', 'SUMUR BATU II BLOK I/16 RT 16/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1349, 'NEHEMIA LAWATA', 'MAHOGANY RESIDENSE BLOK G/16 HARJAMUKTI CIMANGGIS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1350, 'ARPIN', 'CEMPAKA PUTIH BARAT II-H/7B RT.10/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1351, 'PT BERKAT NIAGA DUNIA/BP RAIS', 'JL CIDENG BARAT NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1352, 'CHA ANTON SUCIPTO', 'JL JELAMBAR BARU RAYA 4 OU RT 4 / 1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1353, 'DONY DJAJA', 'KARET TENGSIN RT 8/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1354, 'DJATI NUGROHO', 'KOMPLEK POLRI BLOK 0/2 RT 11/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1355, 'BP. EMIR', 'JL. PETOJO ENCLEK 7/1 A RT 5/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1356, 'AHMAD OLII', 'JL. J NO 55 RT 8/10, KEBON BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1357, 'PT BOEHRINGER INGELHEIM I', 'JL. JEND SUDIRMAN KAV 33-A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1358, 'MARULI TUA G P MANURUNG', 'BLK RAMBUTAN NO 12 RT2 / 4 CIPAYUNG DEPOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1359, 'JAMAL', 'JL.PERUM CITRA 2 B.2/8 RT.2/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1360, 'MERIE LIMANTO', 'TMN SURYA 3 BLK F2/4 RT.3/18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1361, 'LIM TJHAI HOEA', 'JELAMBAR KB PALA RTm1/7', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1362, 'EMMA SARI', 'KOMPLEK DKI SUNTER A./17 RT 7/13 JAK UT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1363, 'IR.SUTRISNO', 'JL PLN GG SELON NO 65 GANDUL RT  12/3 GANDUL LIMO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1364, 'MARLINA', 'JL.BANDENGAN SELATAN NO.11 RT.6/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1365, 'EMMA SARI', 'KOMP DKI SUNTER A1/17 RT 7/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1366, 'NURSAIDA/PANDAPOTAN', 'JL. LONTAR LUAR NO 1 RT 004/004, TUGU UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1367, 'SUTRISNO', 'JL. MARDANI RAYA RT 3/13 CEMPAKA PUTIH BARAT', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1368, 'MAIMUNAH HARAHAP', 'JL. .KEBON PALA III NO 115 RT 7/13', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1369, 'YANNE', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1370, 'TANTO MESTAKA', 'JL. SUNTER AGUNG UTARA BLOK A NO 14, KOMP STS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1371, 'BUARI', 'KOMP BINTARA 111A/36 RT.06/07 BINTARA JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1372, 'WENNY CHANDRA SOEGIYANTO', 'PERUMAHAN GADING ARCADIA I/35 RT 16/19', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1373, 'MELINA', 'PERUMAHAN LIPPO CIKARANG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1374, 'AYU WULANDARI / EDY', 'BINTARO SEKTOR IX', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1375, 'LILI YULIANA SUSETIOWATI', 'JL.SUKAMULYA I/5 RT.12/6 KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1376, 'INDAH WATI HARTALI', 'CEMPAKA PUTIH TMR 24 NO20', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1377, 'JOLINDA JOHART', 'JL.DR.LATUMENTEN III BRT/46 RT.6/11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1378, 'HARUN TATANG', 'JL. GG ALFU NO 24 RT 3/1, MAPHAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1379, 'ELSAKRI', 'PRM TATAKA PURI J 8A/6 CURUG', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1380, 'IRA FEORANI', 'CILEGON', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1381, 'EKAYOGI SALIM', 'JL. PASEBAN TMR IX NO 175 RT 113', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1382, 'YULIANA', 'GREEN GARDEN A12 NO 22', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1383, 'ANDALAN KLP GADING/DICKY', 'JL. RAYA BOULEVARD', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1384, 'HASBI', 'JL. JATI MAWAR NO 16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1385, 'EDDY WIDJAJA', 'APT KUNINGAN PLACE I 10 B 7 RT 005 /  002 MENTENG ATAS , SETIA BUDI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1386, 'FENMAR THENRUN', 'JL. RAMBUTAN TIMUR III/29, RT 001/004', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1387, 'CANDY', 'KARANG ANYAR JL. A. GG 12/29 RT 15/07', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1388, 'SUGIYANTO AMIJANTO', 'JL KESELAMATAN II NO 18', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1389, 'ELDI TOMO BONG', 'KAV POLRI D-IX/1056 RT.3/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1390, 'PT MLA CHEMICALS INDONESIA/HENDRY', 'JL. MILLENIUM A-23/7 KAWASAN INDUSTRI MILLENIUM BUD,CIKUPA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1391, 'VICTOR', 'JL. BUNI NO 10 RT 8/2 PALMERAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1392, 'SUKIUNTO SUHAKAM', 'JL. PERDAGANGAN I/28 RT 7/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1393, 'DANDI PERMADI', 'KOMP PT HII B-10 RT 003/005, KLP GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1394, 'TOMMY PAULUS S', 'KP.RAWA SAWAH RT.6/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1395, 'BP KINSIN', 'JL. GUNUNG SAHARI NO 312', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1396, 'YOGIE SUBIYAKTO', 'KEBAGUSAN WATES RT 8/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1397, 'ARIEF', 'JL. MANGGA NO 21A KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1398, 'NG SUWITO', 'JL.TAMAN  DUTA MAS BLK E.4/7 RT.8/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1399, 'DJAAN', 'KP.BULAKAN RT.10/04 BITUNG JAYA CIKUPA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1400, 'MARSONO', 'PONDOK UNGU PERMAI BLOK E20/13 RT 09/14, KALIABANG TENGAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1401, 'PRAWIJANTO', 'CEMPAKA PUTIH TENGAH 23/9 RT.12/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1402, 'TRI DANARTO', 'JL.BURITAN 469 RAWA BADAK UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1403, 'RUDY LUWANTO LOO', 'JL. KATALIA RAYA NO 25 RT 4/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1404, 'BPK HARI', 'JL.KEMAJUAN RT,9/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1405, 'BP YADI', 'TOMANG RAWA KEPA IX/71 RT8/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1406, 'JIU KIONG', 'TAUFIK RAYA NO 30, JEMBATAN V', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1407, 'PAUL', 'JL. KLARINET 63/30, CINERE', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1408, 'SUGIANTO', 'PETOJO BARAT VII NO 25', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1409, 'RR HERIN RATNA I', 'JL KEMBANG RAYA NO.6A RT.3/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1410, 'H.AHMAD HURAERA NURHANI', 'JL MNGUNSARKORO 12 RT.1/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1411, 'ARIANO SITORUS', 'KAV POLRI BLK E IV/1335 RT 3/2', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1412, 'HUSSEIN PANGESTU', 'KPL TMN KB JERUK J II/15 RT 3/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1413, 'P. RUDY KASAN', 'JL. JEND A YANI NO 32, BY PASS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1414, 'BP SILALAHI', 'JL SALAK A.5 RT1/3', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1415, 'BP SINGGIH', 'JL GEDONG PANJANG NO 33 F RT 13/10', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1416, 'RIAN', 'JL', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1417, 'MARGOT SIWALETE', 'PATRIA JAYA 9/145 RT 4/13 JATI RAHAYU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1418, 'PHANG NYIT PHIN', 'JL. KALIANYAR RAYA RT 8/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1419, 'GERRY ALVIANTO', 'JL. SIKAS HIJAU F EXT 3/15 RT 1/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1420, 'ERIC EKAPUTRA CHANDRA', 'MUARA KARANG P 9 U/27 RT.8/15', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1421, 'SANDY RIZAL TEDJOKUSUMO', 'KONDOMINIUM MNR KLP GADING B 902 RT.2/21', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1422, 'HENDRI', 'DUTA BUMI 3 NO.25 HARAPAN INDAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1423, 'HERRY IRAWAN USMAN', 'JL.G.NO.19 KOMPLEK BI RT.10/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1424, 'SULISTIO', 'PERUM PERTAMINA PD.RANJI BINTARO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1425, 'AGUS', 'DEPOK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1426, 'SISILIA', 'TAMAN SURYA BLOK C-27 RT.19/02', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1427, 'CHAN HOEI AY', 'GREEN GARDEN BLK B-VIII/9 RT.12/03', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1428, 'SHANTY GOZALI GOW', 'JL.GEDUNG RUBUH RT.10/2 SUNTER JAYA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1429, 'MOHANDAS MENON', 'JL. TEBET BARAT V-B/9 RT 16/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1430, 'WULAN ARIYATI', 'APT TMN KEMAYORAN LT 5F/07 RT 9/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1431, 'ANDRY MONDANG', 'JL KEMBANG MOLEK 6 BLK J 11 / 2 PURI INDAH', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1432, 'D JODI PRASETYO', 'JL. ROKET NO.2 RT 2/5 SUMUR BATU JP', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1433, 'YOGESH K NANDWANI', 'JL.DANAU AGUNG 9/E4 /16A RT.2/16', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1434, 'RAM RAMESH KALWANI', 'TAMAN KEMAYORAN KONDOMINIUM, WISMA CENDANA LT 21/E RT 009/012, KEBON KOSONG-KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1435, 'PT NOVELVAR', 'JL. GARUDA NO 96 RT 4/8, KEMAYORAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1436, 'RICO YORIS LIANGGI', 'JL. HIJAU DAUN C 2/27 RT 11/10, KLP GADING', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1437, 'HADI WIJAYA', 'JL BATU CEPER PERMAI BLK J / 11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1438, 'HJ. JOYCE SETYAWATI. DR', 'JL. MATAHARI III B NO 464 RT 2/10, JAKA SETIA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1439, 'BASUKI SAMSUDIN', 'RUKO PURI INDAH BLOK A/1 RT.1/8', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1440, 'PAULUS', 'CITRA II BLOK B 9 NO 16, PEGADUNGAN-KALIDERES', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1441, 'TAHIRUDIN JOGJA', 'PANTAI MUTIARA BLOK SD/9 JAKARTA UTARA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1442, 'DRA RUSMAIDA MANURUNG/TAHIRUDIN', 'CITRA RAYA BLK V 11/9 RT 06/02 CIKUPA', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1443, 'GAN GIOK SIU SH/KARIM', 'JL. PASAR BARU NO 22 RT 15/4', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1444, 'PT.ANDALAN CHRISDECO', 'JL.H.SAMANHUDI NO.43 PASAR BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1445, 'PT.TEKINDO', 'JL.', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1446, 'NURLELA/RIDWAN', 'PETAMBURAN RT 6/9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1447, 'PT.ANDALAN CHRISDECO', 'JL.SAMANHUDI NO.43 SAWAH BESAR', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1448, 'MONICA GUNAWAN', 'JL RAJAWALI SELT III/5', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1449, 'SUNARIES SUTONO', 'JL. JANUR ELOK X QG 8/2 RT 6/6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1450, 'PT MINNAPADI INVESTAMA/WIJAYA M', 'TANAH ABANG 1/11, PETOJO SELATAN', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1451, 'ABU HARIPIN', 'JL.MANGGA BESAR IX/A/7 RT.2/1', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1452, 'DJAROT WIDIYANTO', 'PUP BLOK AM26 NO 1 RT 05/12', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1453, 'AMERIZA LASE', 'PERUM KOMP BAHAGI PERMAI  B III /32 JAKASAMPURNA KRANJI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1454, 'PT. AKINO WAHANAMULIA/P EFFENDY', 'JL. H SAMANHUDI NO.30 A PS BARU JAKPUS', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1455, 'HENDRA', 'JL.RUKOMANGGAII MALL NO 41', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1456, 'ANDALAN SAMANHUDI', 'JL. SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1457, 'ANDALAN SAMANHUDI', 'JL. H SAMANHUDI NO 43', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1458, 'lingga phoe', 'muara karang blk gx 5/20', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1459, 'PT.ANDALAN CHRISDECO', 'JL.H.SAMANHUDI NO.43 PASAR BARU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1460, 'ANTONI SATRIA', 'JL. JEND SUDIRMAN NO 364', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1461, 'ALEKA ZULFIKAR', 'JL.PELATUK NO.A 28 BLOK 4 RT.34', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1462, 'AHMAD YUSRAN', 'JL. SALEMBA TENGAH I NO 211 A', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1463, 'MUSTA;IN', 'JL.U SUROPATI GG SEPAKAT NO.03', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1464, 'MUSTA;IN', 'JL.U SURAPATI GG SEPAKAT NO.03', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1465, 'KURNIAWAN', 'GRIYA PERMATA C1 NO 30', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1466, 'JAMALUDIN YUSUF', '22 HDM BARAT RT.28/11 BARAT METRO', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1467, 'PT BANK DANAMON INDONESIA, TBK', 'JL. PATTIMURA NO 2-4 BETUNG DALAM', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1468, 'IR.ANDI SYAMSAIMUN', 'JL.RADEN SALEHNO.29/30 RT.03/01', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1469, 'YANTO', 'PERUMAHAN VILLA AZHAR C 11 RT.028/009', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1470, 'SYAHRIAL', 'GEDUNG KWARNAS LT 8, JL MERDEKA TIMUR NO 6', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1471, 'HERLING KASENDA', 'JL.HM.YUSUF NASRI LR PELITA NO.36 RT.002', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1472, 'PINTOR', 'JL. RIAU NO 57', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1473, 'NOVIA', 'GEDUNG MENARA EKSEKUTIF JL. MH THAMRIN KAV 9', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1474, 'EDIYUS.HZ', 'KOMP MERAPI 77 PEMATANG PUDU', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1475, 'KUMPUL LUBIS', 'JL.GAJAH MADA NO.11', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1476, 'R. SINAGA/ ROBIN DARMAWAN', 'JL. PINISI PERMAI IV NO 8, PIK', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1477, 'DONI', 'JL.PEMUDA NO.9A RT.002/010 SENJANG BUKIT BESTARI', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', NULL),
(1478, 'B 8966 AK', '', '', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1479, 'YULIANTI', 'CASAGOYA RESIDENCE D NO 11 RT 2/9 ', 'JAKBAR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1480, 'JULIARNI', 'PLUIT KRG PERMAI VI ( E9B / 15 ) RT3 /15 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1481, 'TEST1', 'TEST1', 'TEST1', '08189725000', '08189725000', '08189725000', '021-725000', 'TEST'),
(1482, 'HARIANTO WIDJAJA', 'JLN TAMAN PINUS II/2 RT 1/14 CAKUNG', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1483, 'BORNEO MANALU', 'CIKETING SELATAN RT 01/07 CIKETING GUDIK BANTARGEBANG', 'BEKASI', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1484, 'WILLY CHANDRA', 'JLN CISANGIRI I NO 14 RT 19/4 ', 'JAKARTA SELATAN', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1485, 'FAISAL SITOMPUL', 'JLN WIBISANA BLOK I/22 RT 12/8 KELAPA GADING ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1486, 'PT. BINA GUNA KIMIA', 'JL. HR. RASUNA SAID B4 KARET', 'JAKARTA SELATAN', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1487, 'DRS FRANSISKUS DARMANTO', 'GD KIRANA BRT VIII E 9/42 RT 17/8 ', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1488, 'PT CONVERPARK IND', 'JL.H BENYAMIN SUEB BLK A 6,THE BOUTICE OFFICE PARK BLOK A 16', 'JAKPUS', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1489, 'KWEE EDDY KRISTIAN', 'JL.DR MAKALIWE II NO 20 RT1/6 ', 'JB', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1490, 'PT.JULI RAHAYU', 'JL.ENGGANO RAYA RUKO ENGGANO', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1491, 'CV. NUSA COOLINDO UTAMA', 'JL DR SAHARDJO NO 63', 'JAKSEL', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1492, 'RADEN ANDRI HERIMAN', 'PERUM GN INTAN BLOK B NO 1 RT 7 RW 7 LARANGAN HARJAMUKTI ', 'CIREBON', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1493, 'DANI YUSUF', 'JL. Mawar 4 No.21 Perumnas I', 'Bekasi', '08189725000', '08189725000', '08189725000', '021-725000', 'daniyusuf@yahoo.com'),
(1494, 'FITRI', 'JL BETUNG VIII/325 RT 8/8 PD BAMBU', 'JAKTIM', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1495, 'ALBERT LOLO', 'CITRA 2 EXT BLK BH 09/31 RT 10/8', 'JAKARTA BARAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1496, 'KEMENTRIAN PERDAGANGAN R I ', 'JL. M .I RIDWAN RAIS NO.5', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1497, 'LISHARYANI', 'JLN BUNGUR BESAR GG XI/A RT 11/1', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1498, 'HENDY WIJAYA SH', 'JL JANUR INDAH V LA 16/12 RT 01/17 KELAPA GADING ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1499, 'FRISCILLIA LILIANA HALIM', 'JLN PELEPAH ELOK III QB IV /5 RT 2/6', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1500, 'ERI OKTOBRI WULANTARI, SH', 'JLN GUNUG CERMAI BLOK BC/231 RT 5/13 KAYU RINGIN JAYA', 'BEKASI', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1501, 'UJANG S, IP', 'JLN HUTAMA RAYA NO. 8 RT 10/13 JATI MULYA TAMBUN SELATAN', 'BEKASI', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1502, 'UJANG S, IP', 'JLN HUTAMA RAYA NO. 8 RT 10/13 JATI MULYA TAMBUN SELATAN', 'BEKASI', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1503, 'HANA LIM', 'JLN CSABLANCA VII BLK BQ 3 RT 11/16 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1504, 'JOSEPH PURBA', 'JLN BAEDURI BLK 0-371 RT 13/2', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1505, 'KANTOR ADM PELABUHAN', 'JLN PADEMANGAN NO 4 TANJUNG PRIOK', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1506, 'MARIA FITRIANINGSIH', 'KP PERTANIAN SELATAN NO 13 RT 9/3 ', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1507, 'SURYANTO JAYA', 'PERUM GADING ARCADIA 1/20 RT 8/22', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1508, 'DANNY KUSUMA WARDHANA', 'JLN KAYU PUTIH VII C/9 RT1/6 ', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1509, 'IMAM SANTOSO', 'JLN KELAPA CENGKIR RAYA WF2 NO 7 KLP GADING', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1510, 'EDDIE PRAYTINO', 'KLP PUAN TIMUR III NB 4 RT 3/12 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1511, 'HERTY EKA SALIM ', 'JLN AGUNG PERMAI I RT 1/11', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1512, 'FAJAR OKTAVIANUS', 'PADEMANGAN IV GG 19 RT 15/8', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1513, 'ELIZABET WIDARTA', 'JLN SANUR HIJAU V TF 1/8 RT 5/1', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1514, 'LILYANA', 'JLN KELAPA  LILIN VI BLK NG12/3 RT 20/12 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1515, 'RUSDI LEMAN', 'JLN JANUR ASRI 2 QK 5 NO.8 KELAPA GADING', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1516, 'PDT MONANG P SILALAHI', 'JLN A RAYA NO. 1A  RT 12 JATI', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1517, 'PT DANA PAINT INDONESIA', 'JL PEMUDA PULO GEBANG ', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1518, 'PT PUALAM KENCANA G.', 'JL RAYA PLUIT SELATAN KAV 1 ', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', '');
INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `kota`, `telp`, `gsm1`, `gsm2`, `cdma`, `email`) VALUES
(1519, 'DRA IKE AVIANTI', 'JL LODAN II 8 RT 15/5 JATI', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1520, 'HAVDRIANTO KURNIAWAN', 'JL PUITH MELATI BLK D 5/28 RT 14/10', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1521, 'MARTOHADI WONGDODIRDJO', 'PERLIS SELATAN 23 KEC PEBEANCANTIAN', 'SURABAYA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1522, 'IR HAMKA MM', 'JL BALAI RAKYAT V NO 12 RT /RW 06/03 TUGU SELATAN JKOJA', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1523, 'PT. WIJA ARUNGPONE SEJATI', 'JLN RW.BADAK BARAT NO. 34 RT 6/11 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1524, 'MARVIN LOIS', 'JL.GADING AYU I RA 28/3 RT11/15', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1525, 'PT BUMI CAHAYA UNGGUL ', 'JL. RAWA KEPITING NO.3 KIP RAWA TERATE CAKUNG', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1526, 'PT  KAJIMA CORPORATION', 'JL ASIA AFRIKA BO 8 GELORA BUNGKARNO', 'JAKARTA SELATAN', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1527, 'MELKI BUDI FERDIAN', 'JLN KELAPA HIBRIDA VI RB-12/8 RT 18/15 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1528, 'PT PM CONTROL SYSTEM', 'SENTRA BISNIS ARTHA GD/A7-C/25 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1529, 'TESTING', 'Jakarta', 'Jakarta', '08189725000', '08189725000', '08189725000', '021-725000', 'www'),
(1530, 'NA', 'NA', 'NA', '08189725000', '08189725000', '08189725000', '021-725000', 'NA'),
(1531, 'NA', 'NA', 'NA', '08189725000', '08189725000', '08189725000', '021-725000', 'NA'),
(1532, 'NA', 'NA', 'NA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1533, 'HANSEN', 'KOMPLRK GADING ARCADIA BLOK F NO 33 ART 14/19', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1534, 'EDDY SOETRISNO S.SOS', 'DANAU ASRI BLOK D III/5 RT 11/13 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1535, 'BASUKI DARMAWAN ', 'JL MIMOSA BLK D2/20 RT 15/08', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1536, 'M C DAISY WIBOWO', 'JL KRAMAT PULO GG IXD/3 RT 5 / 4', 'JAKPUS', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1537, 'ANDITA', 'VILLA GD IDH BLK C/38 RT 1/14 ', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1538, 'PT. GLOBAL INDOSP AREPARTS DIESEL', 'JL . P JAYA KARTA  135  BLK  C NO -17 MG  2 SELATAN  SAWAH BESAR ', 'JAKPUS', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1539, 'HERMAN TANUDJAJA', 'JL ROSELA RAYA RT 7/04 WIJAYA KUSUMA GROGOL PETAMBURAN', 'JAKBAR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1540, 'SILVIA LIAUW ', 'JL . KOSAMBI DALAM  NO . 50 RT2/ 2 JATI PULO  PALMERAH ', 'JAKARTA  BARAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1541, 'CHEN CHUN NAN', 'JL . KARTINI RAYA64A BLOK E2', 'JAKPUS', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1542, 'PT ALDABERTA INDONESIA', 'JL. TB SIMATUPANG KAV 18', 'JAKSEL', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1543, 'PEMKOT AMBON', 'JL KEBON KACANG RAYA NO 20', 'JAKARTA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1544, 'DYAH KUSUMATI SOESELO', 'KOMP HARMONI PLAZA BLK E/24 RT 4/8', 'JAKPUS', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1545, 'M . APRIDJAH SARI WAHJOETI', 'JL . NUSANTARA V BLK 1/31 RT9/17 ', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1546, 'DRG JENNIFER SERA CAUMEN', 'JL . B RAYA NO 12 RT8/4 ', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1547, 'FELICIA RIA WIDJAJA', 'TMN KEB JERUK BLK W 5/3 RT 1/3', 'JAKBAR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1548, 'PT.PENDOPO MULTI KARYA', 'PERUM JATIJAJAR BLOK D 24-27 RT 006/12 JATIJAJAR', 'DEPOK', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1549, 'PT INDO KEMIKA JAYATAMA', 'JL.CACING KP BARU RT 7/8', 'jJAKTIM', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1550, 'VERANIKA DARMIDY', 'TLK GONG JL 20 NO 19A RT 14/8', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1551, 'STEVEN WIRYA ', 'JL.P JAYAKARTANO 59 RT 2/2', 'JAKBAR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1552, 'DODY KHRINA PUJIANTO', 'NUSA LOKA SEKTOR 14 .6 BLOK RC 18 BSD', 'SERPONG', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1553, 'IRMAWATY', 'KP .  MAURA BAHARI RT 5/12', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1554, 'DODY SEMIARTO', 'JL . PERALATAN  K -3 RT8/8CIPINANG MELAYU ', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1555, 'HANAFIE JUNUS', 'JL DWI WARNA PASAR NO 17 MANGGA BESAR', 'JAKPUS', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1556, 'RUDI KURNIAWAN', 'JL. SALEMBA UTAN BRT RT 14/7', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1557, 'MARRINY HIMAWAN', 'JL KEBON JERUK IX NO 20 RT 2/7', 'JAKBAR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1558, 'YUDHI ARDIANSYAH ', 'JL . BUNGGUR BUNTU  RT2/5 BANGKA  ', 'JAKARTA SELATAN ', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1559, 'ANDRIANUS ADRITOMO B.S', 'KAV AGRARIA BLOK E /10 RT 2 /16 KALI MALANG', 'JAKTIM', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1560, 'EDI MULYONO', 'JL .PETOJO SELATAN 2 NO . 33 RT 005/005', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1561, 'HJ.VENTY PRIMA PUTRI', 'JL.PESANTREN KELAPA DUA NO.2 RT.3/14 PASIR GUNUNG CIMANGGIS', 'DEPOK', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1562, 'PT INDO KEMIKA JAYATAMA', 'JL.CACING KP BARU RT 7/8', 'JAKTIM', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1563, 'MANHAR SIMANJUNTAK', ' BUMI MULIA  NO 55 RT 007/012 PADEMANGAN ', 'jakut', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1564, 'PT SARI GAPARI', 'JLN.SURYOPRANOTO NO.2 GAMBIR', 'JAKARTA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1565, 'CLARISSA LAURENTIA ', 'BM JAYALKARTA INDAH C-47 RT17/11 ', 'JAKRTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1566, 'DODY KHRINA PUJIANTO', 'NUSA LOKA SEKTOR 14 .6 BLOK RC 18 BSD', 'TANGGERANG', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1567, 'ALBERT NICHOLAS SADELI', 'JL.KEBON JERUK IV NO 6 RT 4/4', 'JAKBAR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1568, 'AGUSTINUS', 'CITRA GARDEN 5 F 4 NO 7 JAKARTA BARAT', 'JAKARTA BARAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1569, 'BUDIMAN LATIF', 'MANGGA BESAR IV M  NO .5B RT3/3', 'JAKARTA BARAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1570, 'DELLA ERIKA KOROMPIS', 'MEDITERANIA BOULEVARD ROMEV /28', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1571, 'PT.LION MENTARI AIRLINES', 'JL . GAJAH MADA NO . 7  PETJO UTARA GAMBIR', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1572, 'RABUN PETER SEBAYANG', 'JL JATIMULYA RAYA BLK H NO 270 RT 08/12 JATIMULYA ', 'BEKASI', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1573, 'ADRIANUS ADRITOMO .B.S', 'KAV. AGRARIA  BLOK E/10 RT.002 RW.016 KEL . DUREN SAWIT', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1574, 'ANGLELINA WIJAYA', 'JL . WALET PERMAI 3 NO 42 RT. 012/006PENJARINGAN', 'JAKARTA UTARA', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1575, 'RIZQIYAH HASANAH', 'KP . SUKASARI  NO . 18 RT . 005/004 KEL . HARAPAN MULIA KE. KEMAYORAN', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1576, 'PT.BAHTERA MITRA  TRADA', 'JL . KARANG ANYAR D NO . 4 A', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1577, 'ZACHRI BEN  KUMORING', 'JL/PLAMBOYAN RAYA NO 35 RT 002/010 MENTENG DALAM', 'JAKSEL', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1578, 'FRANKY TANUWIJAYA', 'JL KLP PUAN TMR IV NC 5/25 RT4/12', 'JAKUT', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1579, 'RENSCA CESSNA IRMANTI', 'JL . DWIKORA RAYA /1 RT7/12 HALIM PERDANA KUSUMA', 'JAKARTA TIMUR', '08189725000', '08189725000', '08189725000', '021-725000', ''),
(1580, 'VIMAL KUMAR PREM  BAHARWANI', 'JL . MANGUN  SARKORO NO .36 RT1/7 ', 'JAKARTA PUSAT', '08189725000', '08189725000', '08189725000', '021-725000', '');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `id_penjualan` int(6) NOT NULL AUTO_INCREMENT,
  `kd_dispenser` varchar(4) NOT NULL,
  `id_op` varchar(6) NOT NULL,
  `meteran_awal` decimal(12,2) NOT NULL,
  `meteran_akhir` decimal(12,2) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `jam_mulai` varchar(5) NOT NULL,
  `jam_selesai` varchar(5) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `qty` int(5) NOT NULL,
  `hpp` decimal(12,2) NOT NULL,
  `harga_jual` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `cash` decimal(12,2) NOT NULL,
  `kupon` decimal(12,2) NOT NULL,
  `kredit` decimal(12,2) NOT NULL,
  `debit` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `kd_dispenser`, `id_op`, `meteran_awal`, `meteran_akhir`, `tgl_penjualan`, `jam_mulai`, `jam_selesai`, `kd_barang`, `qty`, `hpp`, `harga_jual`, `total`, `cash`, `kupon`, `kredit`, `debit`) VALUES
(1, '1A2', '11', '5000000.00', '5001000.00', '2015-10-01', '06:00', '18:00', 'SP1', 1000, '5000.00', '7400.00', '7400000.00', '0.00', '0.00', '0.00', '7400000.00'),
(11, '1A1', '10', '5000.00', '6000.00', '2015-11-18', '06:00', '18:00', 'SP1', 1000, '5000.00', '6000.00', '6000000.00', '10000.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE IF NOT EXISTS `po` (
  `id_po` int(11) NOT NULL AUTO_INCREMENT,
  `id_supplier` varchar(4) NOT NULL,
  `tgl_po` date NOT NULL,
  `jumlah_total` decimal(12,2) NOT NULL,
  `id_cabang` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `s1` varchar(1) NOT NULL DEFAULT 'T',
  PRIMARY KEY (`id_po`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `podetail`
--

CREATE TABLE IF NOT EXISTS `podetail` (
  `id_podetail` int(6) NOT NULL AUTO_INCREMENT,
  `id_po` int(11) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_beli` decimal(12,2) NOT NULL,
  `qty` int(3) NOT NULL,
  PRIMARY KEY (`id_podetail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pompa`
--

CREATE TABLE IF NOT EXISTS `pompa` (
  `id_pompa` int(5) NOT NULL AUTO_INCREMENT,
  `id_tangki` varchar(5) NOT NULL,
  `nama_pompa` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pompa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pompa`
--

INSERT INTO `pompa` (`id_pompa`, `id_tangki`, `nama_pompa`) VALUES
(1, '', 'Pompa 1'),
(2, '', 'Pompa 2');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `produk_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(14, 11, 'Motorola RAZR V3m Blue', '', 'The Motorola Red RAZR V3m for Sprint combines powerful technology and chic style with social activism in a cell phone that makes a strong statement to the world.<br />\r\nFeatures: Bluetooth Wireless Technology, 1.3 Megapixel Digital Camera Takes Print-quality Stills or Video Clips, Less Than 1/2-inch Thick With Feather-touch Precision Crafted Keypad,Â  Built-in Music Player With Removable, Expandable Memory Card Slot, Stunning Red Shell Is Made From Aircraft-grade Aluminum, Motorola Will Contribute A Portion Of The Red Razr Proceeds To Help Fight Aids In Africa, Watch On-demand Sprint TV or Listen To Streaming Music With Sprint Music Store.<br />\r\n', 2500000, 24, '0.50', '2009-05-25', '9motorola_razr.jpg', 28, 0),
(15, 5, 'LG Chocolate VX8550 Blue', 'lg-chocolate-vx8550-blue', 'The LG Chocolate VX8550 for Verizon Wireless - now available with a chic &quot;blue ice&quot; color scheme - is the first Verizon Wireless phone with a soft-touch keypad, external graphic equalizer, streaming or downloadable music from VCAST, and the capability to transfer music to and from your PC (USB cable required).<br />\r\n<br />\r\nFeatures:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp; * Advanced Voice Dialing Lets Your Operate Your Phone Without Pre-training<br />\r\n&nbsp;&nbsp;&nbsp; * 1.3 Megapixel Camera Takes Print-quality Photo And Hour-long Video Clips<br />\r\n&nbsp;&nbsp;&nbsp; * High-speed Data Downloads Let You Watch TV Or Listen To Streaming Music<br />\r\n&nbsp;&nbsp;&nbsp; * First Phone To Play Either Downloaded V CAST Music or PC-transferred Music Files<br />\r\n&nbsp;&nbsp;&nbsp; * Stylish Slider Design With Soft-touch External Controls<br />\r\n&nbsp;&nbsp;&nbsp; * Huge, Vibrant Color Display<br />\r\n&nbsp;&nbsp;&nbsp; * Wirelessly Stream Music To A Stereo Bluetooth Headset\r\n', 3450000, 43, '1.00', '2009-06-02', '39lg_vx8550.jpg', 16, 0),
(16, 7, 'Samsung FlipShot SCH-U900', 'samsung-flipshot-schu900', 'The Samsung U900 for Verizon Wireless is the update to the flagship Samsung A990. Features: Advanced Voice Activated Dialing Requires No Phone Pre-training, Advanced Bluetooth Wireless Technology With Streaming Stereo Music Support, Huge Color Main Display and Color External Display, Built-in Music Player Lets You Download From V CAST Music Service, One of the Best Digital Camera/Camcorders In A Mobile Phone Today, Next Generation (EV-DO) Technology Gives You Downloads At Near-Broadband Speeds, Watch On-demand TV or Listen to Music Via Verizon V CAST, Take Extra-long Video Clips With Very Good Resolution.\r\n', 4500000, 28, '0.50', '2009-06-02', '21samsung_u900.jpg', 38, 0),
(18, 3, 'Sony Ericsson W200i', 'sony-ericsson-w200i', 'The Sony Ericsson specially Phone for Walkman - now available with a chic &quot;blue ice&quot; color scheme - is the first Verizon Wireless phone with a soft-touch keypad, external graphic equalizer, streaming or downloadable music from VCAST, and the capability to transfer music to and from your PC (USB cable required).<br />\r\n<br />\r\nFeatures:<br />\r\n<br />\r\n    * Advanced Voice Dialing Lets Your Operate Your Phone Without Pre-training<br />\r\n    * 1.3 Megapixel Camera Takes Print-quality Photo And Hour-long Video Clips<br />\r\n    * High-speed Data Downloads Let You Watch TV Or Listen To Streaming Music<br />\r\n    * First Phone To Play Either Downloaded V CAST Music or PC-transferred Music Files<br />\r\n    * Stylish Slider Design With Soft-touch External Controls<br />\r\n    * Huge, Vibrant Color Display<br />\r\n    * Wirelessly Stream Music To A Stereo Bluetooth Headset<br />\r\n', 1100000, 44, '0.50', '2009-09-28', '36se_w200i.jpg', 16, 20),
(17, 3, 'Sony Ericsson W880', 'sony-ericsson-w880', 'The Sony Ericsson w880 specially Phone for Walkman and Business - now available with a chic &quot;blue ice&quot; color scheme - is the first Verizon Wireless phone with a soft-touch keypad, external graphic equalizer, streaming or downloadable music from VCAST, and the capability to transfer music to and from your PC (USB cable required).<br />\r\n<br />\r\nFeatures:<br />\r\n<br />\r\n    * Advanced Voice Dialing Lets Your Operate Your Phone Without Pre-training<br />\r\n    * 1.3 Megapixel Camera Takes Print-quality Photo And Hour-long Video Clips<br />\r\n    * High-speed Data Downloads Let You Watch TV Or Listen To Streaming Music<br />\r\n    * First Phone To Play Either Downloaded V CAST Music or PC-transferred Music Files<br />\r\n    * Stylish Slider Design With Soft-touch External Controls<br />\r\n    * Huge, Vibrant Color Display<br />\r\n    * Wirelessly Stream Music To A Stereo Bluetooth Headset<br />\r\n', 2800000, 35, '0.50', '2009-09-28', '97se_w880.jpg', 14, 10),
(19, 3, 'Sony Ericsson w910', 'sony-ericsson-w910', 'The Sony Ericsson w910 specially Phone for Walkman and Business - now\r\navailable with a chic &quot;blue ice&quot; color scheme - is the first Verizon\r\nWireless phone with a soft-touch keypad, external graphic equalizer,\r\nstreaming or downloadable music from VCAST, and the capability to\r\ntransfer music to and from your PC (USB cable required).<br />\r\n<br />\r\nFeatures:<br />\r\n<br />\r\n    * Advanced Voice Dialing Lets Your Operate Your Phone Without Pre-training<br />\r\n    * 1.3 Megapixel Camera Takes Print-quality Photo And Hour-long Video Clips<br />\r\n    * High-speed Data Downloads Let You Watch TV Or Listen To Streaming Music<br />\r\n    * First Phone To Play Either Downloaded V CAST Music or PC-transferred Music Files<br />\r\n    * Stylish Slider Design With Soft-touch External Controls<br />\r\n    * Huge, Vibrant Color Display<br />\r\n    * Wirelessly Stream Music To A Stereo Bluetooth Headset\r\n', 2500000, 0, '1.00', '2009-12-25', '12se_w910.jpg', 22, 0),
(23, 6, 'Blackberry 8820', 'blackberry-8820', '<p>\r\nResearch In Motion memperkenalkan BlackBerry terbaru yang mampu sediakan akses suara dan data nirkabel melalui jaringan seluler dan Wi-Fi. Presiden dan Co-CEO RIM, Mike Lazaridis, menyebutkan perhatian chief executive Apple Inc., Steve Jobs, dan produk iPhone Apple yang telah membawa keuntungan bagi RIM.\r\n</p>\r\n<p>\r\nBlackBerry baru ini bertajuk 8820 dan merupakan smartphone blackberry pertama yang memiliki kemampuan dual mode dengan desain tipis dan full keyboard. Push email RIM juga memungkinkan pelanggan untuk mengakses surat elektronik mereka langsung ke perangkat secara realtime.\r\n</p>\r\n<p>\r\n8820 juga dilengkapi dengan navigasi satelit GPS, hiburan multimedia musik dan video. Sayangnya kemunculan RIM baru mencakup Amerika saja dengan kerja sama operator AT&amp;T. \r\n</p>\r\n', 3000000, 20, '1.00', '2011-05-27', '35blackberry-8820.jpg', 1, 10),
(24, 2, 'Iphone 3GS', 'iphone-3gs', '<p>\r\nThe iPhone 3GS is the third generation of iPhone designed and marketed by Apple Inc. It was introduced on June 8, 2009 at the WWDC 2009 which took place at the Moscone Center, San Francisco.\r\n</p>\r\n<p>\r\nIts features primarily consist of faster performance, a camera with higher resolution and video capability, voice control,[7] and support for 7.2 Mbit/s HSDPA downloading (but remains limited to 384 kbps uploading as Apple had not implemented the HSUPA protocol).[8] It was released in the U.S., Canada and six European countries on June 19, 2009,[2] in Australia and Japan on June 26, and internationally in July and August 2009.\r\n</p>\r\n<p>\r\nThe iPhone 3GS runs Apple&#39;s iOS operating system, as is used on the iPad and the iPod touch. It is primarily controlled by a user&#39;s fingertips on a multi-touch display.\r\n</p>\r\n', 4000000, 15, '1.00', '2011-05-27', '73iPhone_3GS.jpg', 1, 10),
(25, 3, 'Sony Ericsson C903', 'sony-ericsson-c903', '<p>\r\nJadilah pembidik jitu dengan kamera 5 megapiksel mengesankan dari Sony Ericsson C903 Cyber-shot&trade;. Dengan deteksi wajah, lampu kilat foto yang cerah dan teknologi khas kami, Smile Shutter&trade;, Anda tidak lagi akan meluputkan bidikan sempurna dengan telepon kamera yang gaya ini.\r\n</p>\r\n<p>\r\nGunakan aGPS untuk menemukan arah dan tandai foto Anda menurut tempat pengambilannya. Aktifkan kamera dan nikmati kemampuan layanan berbasis lokasi pada telepon Anda. Mengambil gambar di mana saja dan memberi label informasi tentang lokasi Anda.\r\n</p>\r\n', 2500000, 5, '2.00', '2011-05-28', '12se_c903.jpg', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE IF NOT EXISTS `stok` (
  `id_stok` int(6) NOT NULL AUTO_INCREMENT,
  `kd_barang` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `jumlah_stok` int(6) NOT NULL,
  `kd_cabang` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `harga_awal` decimal(12,2) NOT NULL,
  `hpp` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id_stok`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id_stok`, `kd_barang`, `jumlah_stok`, `kd_cabang`, `harga_awal`, `hpp`) VALUES
(1, 'SP1', 4939, '002', '5000.00', '5000.00'),
(2, 'SP2', 4986, '001', '5000.00', '5000.00'),
(3, 'SP3', 14998, '001', '5000.00', '5000.00'),
(4, 'SP1', 4970, '001', '5000.00', '5000.00'),
(5, 'SP4', 4980, '001', '5000.00', '6000.00');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `urutan` int(3) NOT NULL,
  `level` varchar(200) NOT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`, `aktif`, `urutan`, `level`) VALUES
(11, 'Users & Password', '?module=users', 10, 'Y', 0, 'admin'),
(4, 'Service', '?module=servis', 3, 'Y', 0, 'admin'),
(5, 'Pelanggan', '?module=pelanggan', 5, 'Y', 0, 'admin'),
(6, 'Menu Utama', '?module=menuutama', 10, 'Y', 0, 'admin'),
(14, 'Sub Menu', '?module=submenu', 10, 'Y', 0, 'admin'),
(16, 'Berita', '?module=berita', 1, 'Y', 1, 'admin'),
(17, 'Modul', '?module=modul', 10, 'Y', 0, 'admin'),
(18, 'Asuransi', '?module=asuransi', 3, 'Y', 0, 'admin'),
(80, 'Pelanggan', '?module=pelanggan', 5, 'Y', 1, 'sales'),
(56, 'Dealer', '?module=dealer', 8, 'Y', 24, 'admin'),
(47, 'Kategori Berita', '?module=kategori', 1, 'Y', 2, 'admin'),
(60, 'Download', '?module=download', 1, 'Y', 28, 'admin'),
(62, 'Album', '?module=album', 9, 'Y', 29, 'admin'),
(63, 'Gallery', '?module=gallery', 9, 'Y', 29, 'admin'),
(78, 'Pembayaran', '?module=pembayaran', 7, 'Y', 0, 'admin'),
(82, 'Produk', '?module=produk', 5, 'Y', 3, 'admin'),
(85, 'Master Barang', '?module=masterbarang', 10, 'Y', 1, 'admin'),
(86, 'Kategori', '?module=kategori', 10, 'Y', 1, 'admin'),
(87, 'Cabang', '?module=cabang', 10, 'Y', 1, 'admin'),
(88, 'Stok', '?module=stok', 10, 'Y', 1, 'admin'),
(89, 'Dispenser', '?module=dispenser', 10, 'Y', 1, 'admin'),
(90, 'Pompa', '?module=pompa', 10, 'Y', 1, 'admin'),
(91, 'Tangki', '?module=tangki', 10, 'Y', 1, 'admin'),
(92, 'Penjualan', '?module=penjualan', 5, 'Y', 1, 'admin'),
(94, 'Dealer', '?module=dealer', 8, 'Y', 9, 'gm'),
(95, 'Stok', '?module=stok', 10, 'Y', 0, 'sales'),
(96, 'Operator', '?module=operator', 10, 'Y', 1, 'admin'),
(98, 'Pembelian', '?module=po', 5, '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` varchar(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `telp` int(11) NOT NULL,
  `fax` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pic` varchar(20) NOT NULL,
  `keterangan` varchar(45) NOT NULL,
  `ppn` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `tag_seo`, `count`) VALUES
(1, 'Palestina', 'palestina', 7),
(2, 'Gaza', 'gaza', 11),
(9, 'Tenis', 'tenis', 5),
(10, 'Sepakbola', 'sepakbola', 7),
(8, 'Laskar Pelangi', 'laskar-pelangi', 2),
(11, 'Amerika', 'amerika', 21),
(12, 'George Bush', 'george-bush', 3),
(13, 'Browser', 'browser', 9),
(14, 'Google', 'google', 3),
(15, 'Israel', 'israel', 5),
(16, 'Komputer', 'komputer', 24),
(17, 'Film', 'film', 9),
(19, 'Mobil', 'mobil', 0),
(21, 'Gayus', 'gayus', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tangki`
--

CREATE TABLE IF NOT EXISTS `tangki` (
  `id_tangki` int(5) NOT NULL AUTO_INCREMENT,
  `kd_tangki` varchar(5) NOT NULL,
  `nama_tangki` varchar(30) NOT NULL,
  `isi_tangki` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tangki`),
  UNIQUE KEY `kd_tangki` (`kd_tangki`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tangki`
--

INSERT INTO `tangki` (`id_tangki`, `kd_tangki`, `nama_tangki`, `isi_tangki`) VALUES
(1, '001', 'Premium', '5000L'),
(2, '002', 'Pertamax', '5000L'),
(3, '003', 'Solar', '5000L'),
(4, '004', 'Pertalite', '5000L');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` text COLLATE latin1_general_ci,
  `kota` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `id_cabang` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `id_atasan` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `password` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `level` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `blokir` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `id_session` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=209 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `alamat`, `kota`, `telp`, `id_cabang`, `id_atasan`, `username`, `password`, `level`, `email`, `blokir`, `id_session`, `foto`) VALUES
(187, 'Olani Ertina Veronica', 'Jalan Haji Taiman barat no.7 Rt. 002/010 Pasar Rebo, 13760', 'Jakarta Timur', '081287265595', '02', '182', 'gm', '92073d2fe26e543ce222cc0fb0b7d7a0', 'gm', 'olani.veronica@1firstrent.com', 'N', '7b7pbsqooqsa2o4t5le0gj4624', 'olani.jpg'),
(182, 'Suryo Kuspurwoko', 'JL, Kenari', 'Jakarta', '08143444', '02', '0', 'director', '3d4e992d8d8a7d848724aa26ed7f4176', 'director', 'sutyo@yahoo.com', 'N', 'rh107nnkc8b627p2qe9bnrgod7', 'suryo.jpg'),
(183, 'Meilina Lubis', 'Tanjung Priok', 'Jakarta Utara', '0811425255', '01', '205', 'supervisor', '09348c20a019be0318387c08df7a783d', 'supervisor', 'meilina@1firstrent.com', 'N', 'ai98tskl3h1blsmhgnd1lqtku3', 'lina.jpg'),
(193, 'Dani Yusuf', 'Mawar 4 No.21 Perumnas 1 Bekasi', 'Bekasi', '0813552522', '01', '0', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'daniyusuf@yahoo.com', 'N', '1vpb5heum60ou697qafa1rdte0', 'daniyusuf.jpg'),
(194, 'Fitri Awaliyah', 'JL. Jalak Suren', 'Jakarta', '088945252', '02', '183', 'sales1', '00db8f14ff00dd9a2e707391332c3447', 'sales', 'fitri.awaliyah@1firstrent.com', 'N', 'a63gs1fcaue0ahjn6cq2bqkbd3', 'fitriawaliyah.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
