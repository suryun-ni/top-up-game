-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for uas
CREATE DATABASE IF NOT EXISTS `uas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `uas`;

-- Dumping structure for table uas.detil_bayar
CREATE TABLE IF NOT EXISTS `detil_bayar` (
  `id_detil_bayar` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_detil_bayar`),
  KEY `id_user` (`id_user`),
  KEY `id_produk` (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table uas.detil_bayar: ~2 rows (approximately)
/*!40000 ALTER TABLE `detil_bayar` DISABLE KEYS */;
REPLACE INTO `detil_bayar` (`id_detil_bayar`, `id_user`, `id_produk`, `keterangan`) VALUES
	(12, 2, 11111, 'ini mau coba lagi'),
	(13, 1, 11122, 'bayar pakai ovo');
/*!40000 ALTER TABLE `detil_bayar` ENABLE KEYS */;

-- Dumping structure for table uas.detil_bayar_lain
CREATE TABLE IF NOT EXISTS `detil_bayar_lain` (
  `id_detil_bayar_lain` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk_lain` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_detil_bayar_lain`),
  KEY `id_produk_lain` (`id_produk_lain`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table uas.detil_bayar_lain: ~1 rows (approximately)
/*!40000 ALTER TABLE `detil_bayar_lain` DISABLE KEYS */;
REPLACE INTO `detil_bayar_lain` (`id_detil_bayar_lain`, `id_produk_lain`, `id_user`, `keterangan`) VALUES
	(2, 3111, 2, 'ini beli pulsa');
/*!40000 ALTER TABLE `detil_bayar_lain` ENABLE KEYS */;

-- Dumping structure for table uas.game
CREATE TABLE IF NOT EXISTS `game` (
  `id_game` int(11) NOT NULL AUTO_INCREMENT,
  `nama_game` varchar(100),
  `detail` text,
  `file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_game`),
  KEY `nama_game` (`nama_game`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table uas.game: ~7 rows (approximately)
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
REPLACE INTO `game` (`id_game`, `nama_game`, `detail`, `file`) VALUES
	(1, 'Genshin Impact', 'Genshin Impact adalah permainan free-to-play action RPG dunia terbuka yang dikembangkan oleh miHoYo. Genshin Impact juga merupakan IP kedua yang dibesut oleh miHoYo setelah Honkai Impact 3. Game ini dirilis pada tanggal 28 September 2020 di platform Android, iOS, Windows, dan PlayStation 4, serta 28 April 2021 di platform PlayStation 5.', 'genshin.jpg'),
	(2, 'Valorant', 'game FPS PC dari riot games hadir sebagai game yang mampu menyaingi game FPS musim lainnya. Bergenre FPS (First Person Shooter), gim ini memiliki kemiripan dengan gim populer seperti Counter Strike: Global Offensive (CS:GO) dan Overwatch.\r\nKonsep permainannya berfokus pada 2 tim yang saling melawan dan masing-masing tim terdiri dari 5 orang. Mereka akan berlomba untuk memenangkan pertempuran sebagai Attacker ataupun Defender.\r\nSebelum pertempuran dimulai, tiap pemain akan memilih seorang karakter atau â€˜agentâ€™ yang masing-masing memiliki karakteristik dan kemampuan unik.', 'Valorant-2.jpg'),
	(3, 'mobile legend', 'Mobile Legends: Bang Bang adalah sebuah permainan MOBA yang dirancang untuk ponsel. Kedua tim lawan berjuang untuk mencapai dan menghancurkan basis musuh sambil mempertahankan basis mereka sendiri untuk mengendalikan jalan setapak, tiga "jalur" yang dikenal sebagai "top", "middle" dan "bottom", yang menghubungkan basis-basis.[2]\r\n\r\nDi masing-masing tim, ada lima pemain yang masing-masing mengendalikan avatar, yang dikenal sebagai "hero", dari perangkat mereka sendiri. Karakter terkontrol komputer yang lebih lemah, yang disebut "minions", bertelur di basis tim dan mengikuti tiga jalur ke basis tim lawan, melawan musuh dan menara.', 'ml.png'),
	(4, 'PUBG Mobile', 'tres', 'pubgm.jpg'),
	(5, 'CS GO', 'csgo', 'csgo.png'),
	(6, 'Fate Grand Order', 'Chaldea, sebuah organisasi yang bertugas mengamati masa depan bumi, telah mengkonfirmasi bahwa sejarah manusia akan dihilangkan pada 2019.\r\n\r\nTanpa peringatan, masa depan yang dijanjikan pada tahun 2017 menghilang.\r\n\r\nMengapa? Bagaimana? Siapa? Bagaimana?\r\n\r\n2004 AD. Sebuah kota kecil di Jepang.\r\n\r\nUntuk pertama kalinya, sebuah wilayah yang tidak bisa diamati muncul.\r\n\r\nDengan asumsi bahwa ini adalah penyebab kepunahan umat manusia, Chaldea melakukan percobaan keenamnya: perjalanan waktu ke masa lalu.\r\n\r\nUpacara terlarang di mana mereka akan mengubah manusia menjadi Spiritron dan mengirim mereka kembali ke masa lalu. Dengan campur tangan dalam berbagai peristiwa, mereka akan menemukan, mengidentifikasi, dan menghancurkan singularitas ruang-waktu.\r\n\r\nKlasifikasi misi adalah perintah untuk melindungi Humanity: Grand Order.\r\n\r\nIni adalah gelar bagi mereka yang akan menentang sejarah manusia dan bertempur dengan nasib untuk melindungi umat manusia.', 'fgo.jpg'),
	(7, 'Free Fire', 'Garena Free Fire atau biasa disebut Free Fire (sering disingkat FF) adalah permainan battle royale yang dikembangkan oleh 111 Dots Studio[2] dan diterbitkan oleh Garena untuk Android dan iOS.[3][4] Itu menjadi permainan seluler yang paling banyak diunduh secara global pada tahun 2019.[5] Karena popularitasnya, permainan ini menerima penghargaan untuk "Best Popular Vote Game" oleh Google Play Store pada tahun 2019.[6] Pada Mei 2020, Free Fire telah mencetak rekor dengan lebih dari 80 juta pengguna aktif harian di seluruh dunia.[7] Pada November 2019, Free Fire telah mendapat lebih dari US$1 miliar di seluruh dunia.[8]\r\n\r\nGarena saat ini sedang mengerjakan versi Free Fire yang disempurnakan yang akan disebut Free Fire Max.', 'ff.jpeg');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;

-- Dumping structure for table uas.pembayaran
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_bayar` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `metode_bayar` varchar(50) DEFAULT NULL,
  `total_bayar` int(50) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `id_detil_bayar` int(11) DEFAULT NULL,
  `id_detil_bayar_lain` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bayar`),
  KEY `id_user` (`id_user`),
  KEY `metode_bayar` (`metode_bayar`),
  KEY `id_detil_bayar` (`id_detil_bayar`),
  KEY `id_detil_bayar_lain` (`id_detil_bayar_lain`),
  CONSTRAINT `FK_pembayaran_detil_bayar` FOREIGN KEY (`id_detil_bayar`) REFERENCES `detil_bayar` (`id_detil_bayar`),
  CONSTRAINT `FK_pembayaran_detil_bayar_lain` FOREIGN KEY (`id_detil_bayar_lain`) REFERENCES `detil_bayar_lain` (`id_detil_bayar_lain`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table uas.pembayaran: ~9 rows (approximately)
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
REPLACE INTO `pembayaran` (`id_bayar`, `id_user`, `metode_bayar`, `total_bayar`, `tanggal`, `id_detil_bayar`, `id_detil_bayar_lain`) VALUES
	(1, 2, 'bri', 20000, '2021-06-06 14:55:35', 12, NULL),
	(2, 2, 'BRI', 30000, '2021-06-06 08:32:05', 12, NULL),
	(3, 2, 'GOPAY', 30000, '2021-06-06 08:34:42', 12, NULL),
	(4, 2, 'BCA', 30000, '2021-06-06 08:35:56', 12, NULL),
	(5, 2, 'GOPAY', 30000, '2021-06-06 08:36:01', 12, NULL),
	(6, 2, 'OVO', 30000, '2021-06-06 08:36:15', 12, NULL),
	(7, 2, 'GOPAY', 10000, '2021-06-06 08:58:13', NULL, 2),
	(8, 2, 'OVO', 10000, '2021-06-06 08:58:29', NULL, 2),
	(9, 1, 'OVO', 10000, '2021-06-06 09:55:09', 13, NULL);
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;

-- Dumping structure for table uas.produk_game
CREATE TABLE IF NOT EXISTS `produk_game` (
  `id_produk` int(11) NOT NULL,
  `id_game` int(11) NOT NULL,
  `id_top_up` int(11) NOT NULL,
  PRIMARY KEY (`id_produk`),
  KEY `id_game` (`id_game`),
  KEY `id_top_up` (`id_top_up`),
  CONSTRAINT `FK_produk_game_top_up` FOREIGN KEY (`id_top_up`) REFERENCES `top_up` (`id_top_up`),
  CONSTRAINT `produk_game_ibfk_2` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uas.produk_game: ~5 rows (approximately)
/*!40000 ALTER TABLE `produk_game` DISABLE KEYS */;
REPLACE INTO `produk_game` (`id_produk`, `id_game`, `id_top_up`) VALUES
	(1123, 2, 1123),
	(11111, 1, 1111),
	(11112, 2, 1121),
	(11113, 3, 1131),
	(11122, 2, 1122);
/*!40000 ALTER TABLE `produk_game` ENABLE KEYS */;

-- Dumping structure for table uas.produk_lain
CREATE TABLE IF NOT EXISTS `produk_lain` (
  `id_produk_lain` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  PRIMARY KEY (`id_produk_lain`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uas.produk_lain: ~3 rows (approximately)
/*!40000 ALTER TABLE `produk_lain` DISABLE KEYS */;
REPLACE INTO `produk_lain` (`id_produk_lain`, `nama_produk`, `jumlah`) VALUES
	(3111, 'Pulsa', '10000'),
	(4111, 'OVO', '10000'),
	(5111, 'GOPAY', '10000');
/*!40000 ALTER TABLE `produk_lain` ENABLE KEYS */;

-- Dumping structure for table uas.rating
CREATE TABLE IF NOT EXISTS `rating` (
  `id_user` int(11) DEFAULT NULL,
  `rating` varchar(50) NOT NULL,
  `pesan` varchar(50) NOT NULL,
  KEY `id_user` (`id_user`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uas.rating: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
REPLACE INTO `rating` (`id_user`, `rating`, `pesan`) VALUES
	(2, '5', 'tes');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;

-- Dumping structure for table uas.spesifikasi
CREATE TABLE IF NOT EXISTS `spesifikasi` (
  `id_game` int(11) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `spesifikasi` varchar(100) NOT NULL,
  KEY `id_game` (`id_game`),
  CONSTRAINT `FK_spesifikasi_game` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uas.spesifikasi: ~7 rows (approximately)
/*!40000 ALTER TABLE `spesifikasi` DISABLE KEYS */;
REPLACE INTO `spesifikasi` (`id_game`, `platform`, `spesifikasi`) VALUES
	(1, 'pc', 'Ram       : 8 GB\r\nMemori    : 25 GB\r\nProsessor : Intel Core i5 or equivalent'),
	(2, 'pc', 'CPU: Intel Core 2 Duo E8400.\r\nGPU: Intel HD 4000.\r\nRAM: 4GB.'),
	(4, 'handphone', 'tes'),
	(5, 'pc', 'csgo'),
	(3, 'handphone', 'Ram      : 2GB\r\nMemori   : 3,28 GB\r\nProsessor: Snapdragon 480'),
	(6, 'handphone', 'Ram       : 3GB\r\nMemori    : 10GB\r\nProsessor : Snapdragon 650'),
	(7, 'handphone', 'Ram         : 2GB\r\nMemori    : 5GB\r\nProsessor: Snapdragon 480');
/*!40000 ALTER TABLE `spesifikasi` ENABLE KEYS */;

-- Dumping structure for table uas.top_up
CREATE TABLE IF NOT EXISTS `top_up` (
  `id_top_up` int(11) NOT NULL,
  `jenis_top_up` varchar(50) DEFAULT NULL,
  `harga_top_up` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_top_up`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table uas.top_up: ~5 rows (approximately)
/*!40000 ALTER TABLE `top_up` DISABLE KEYS */;
REPLACE INTO `top_up` (`id_top_up`, `jenis_top_up`, `harga_top_up`) VALUES
	(1111, '1000 primo', '30000'),
	(1121, '600 Valor', '20000'),
	(1122, '100 Valor', '10000'),
	(1123, '1000 valor', '100000'),
	(1131, '100 Diamond', '50000');
/*!40000 ALTER TABLE `top_up` ENABLE KEYS */;

-- Dumping structure for table uas.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table uas.user: ~4 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `level`) VALUES
	(1, 'admin', '12345', 'tengku surya ', 'tengkusurya29@gmail.com', 'admin'),
	(2, 'yun', '123', 'suryun', 'gmail@yun.com', 'user'),
	(3, 'Tengku', '19650094', '', '', 'user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
