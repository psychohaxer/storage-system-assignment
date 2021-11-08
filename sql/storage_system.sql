-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2021 at 04:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storage_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `barcode` varchar(48) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`barcode`, `item_name`, `item_qty`) VALUES
('9790901391314', 'BUKU KUMPULAN LAGU DAERAH BI', 93),
('979396718', 'BUKU DONGENG NABI YUSUF AS SJ', 15),
('979396722', 'BUKU DONGENG NABI DAUD AS SJ', 95),
('979396733', 'BUKU DONGENG NABI ADAM AS SJ', 22),
('979396735', 'BUKU DONGENG NABI YUNUS AS SJ', 67),
('9799791035025', 'BUKU RPUL CV ITA', 15),
('9799791035056', 'BUKU 25 NABI&RASUL CV ITA', 16),
('9799791035124', 'BUKU GITAR CV ITA', 28),
('9799791035179', 'BUKU TUNTUNAN BERDOA ANAK CV ITA K', 13),
('9799791035230', 'BUKU 07 KUMPULAN KISAH ABU NAWAS CV', 24),
('9799791035360', 'KAMUS 9M/1M B CV ITA', 70),
('9799791035520', 'BUKU GAJAH MERINDUKAN KASIH SAYANG', 64),
('9799791035575', 'KAMUS 3 BAHASA CV ITA', 37),
('9799791035599', 'BUKU ATLAS DUNIA K', 75),
('9799791035605', 'KAMUS MINI CV ITA', 93),
('9799791035667', 'KAMUS BHS INDO B ITA', 56),
('9799791035728', 'BUKU SIKSA NERAKA CV ITA', 6),
('9799791035759', 'KAMUS 900M B CV ITA', 5),
('9799791035858', 'KAMUS B.ING CV,ITA HS', 47),
('979979103591901', 'BUKU EYD', 13),
('9799791247008', 'BUKU JUZ \'AMMA  B', 20),
('9799791935486', 'BUKU ATLAS TG ITA', 85),
('9799793955024', 'KAMUS LENGKAP BHS INDO AMELIA', 2),
('9799793955284', 'BUKU ASMAUL HUSNA AMELIA', 71),
('9799793955796', 'BUKU PANDUAN MC&PIDATO', 66),
('9799793961063', 'KAMUS BHS PRANCIS SJ', 34),
('9799793961124', 'BUKU BIMBINGAN SHALAT PI/SJ', 21),
('9799793961131', 'BUKU BIMBINGAN SHALAT LENGKAP SJ', 89),
('9799793961360', 'BUKU PINTAR ATLAS SJ', 29),
('9799793961452', 'BUKU KUNCI IBADAH SJ', 82),
('9799793961483', 'BUKU RATAPAN GADIS DI ATAS KUBUR', 58),
('9799793961520', 'BUKU BERGURU KEPADA NABI KHIDIR', 84),
('9799793961551', 'BUKU PANDUAN INTERNET SJ', 94),
('9799793961568', 'BUKU MENGENAL DASAR KOMPUTER SJ', 99),
('9799793961582', 'BUKU CARA CEPAT MENGUASAI TENSES', 97),
('9799793961636', 'BUKU RPIL SJ', 79),
('9799793961643', 'BUKU BERTAMBAH KAYA GDN SHALAT DHUH', 45),
('9799793961667', 'BUKU PIDACIL SJ', 57),
('9799793961681', 'BUKU KADO PENGANTIN SJ', 95),
('9799793961728', 'BUKU ISTILAH FISIKA', 73),
('9799793961735', 'KAMUS POPULER ISTILAH KIMIA SJ', 68),
('9799793961742', 'KAMUS POPULER SAINT&TEHNOLOGI SJ', 9),
('9799793961773', 'BUKU KHUTBAH JUM\'AAT SJ', 99),
('9799793967058', 'BUKU TUNTUNAN SHALAT TOHA B SJ', 86),
('9799793967249', 'BUKU BELAJAR SHALAT&DOA SJ', 40),
('9799793967331', 'BUKU CINDERELLA SJ', 59),
('9799793967386', 'BUKU MALIN KUNDANG SJ', 54),
('9799793967393', 'BUKU ANDE2 LUMUT', 41),
('9799793967409', 'BUKU TABEL MTK SJ', 67),
('9799793967447', 'BUKU PUTRI SALJU SJ', 21),
('9799793967454', 'BUKU SANGKURIANG SJ', 93),
('9799793967478', 'BUKU TIMUN MAS SJ', 19),
('9799793967485', 'BUKU TERTAWA BERSAMA ABU NAWAS SJ', 82),
('9799793967492', 'BUKU AYAT ALQURAN&ASMAUL HUSNA SJ', 35),
('9799793967508', 'BUKU SIFAT 20  ASMAUL HUSNA', 97),
('9799793967515', 'BUKU SHALAT SUNAH PILIHAN SJ', 62),
('9799793967560', 'BUKU BELAJAR MEMBACA', 78),
('9799793967577', 'BUKU BELAJAR MEMBACA IB', 0),
('9799793967591', 'BUKU PINTAR ANAK JUARA', 71),
('9799793967607', 'BUKU BELAJAR  PERKALIAN', 18),
('9799793967614', 'BUKU JUZ AMMA B SJ', 87),
('9799793967638', 'BUKU TUNTUNAN SHALAT B SJ', 15),
('9799793967676', 'BUKU BELAJAR MAMBACA 1A', 95),
('9799793967683', 'KAMUS BHS.IND SJ', 24),
('9799793967706', 'KAMUS 700M BHS ING-IND LENGKAP', 40),
('9799793967713', 'KAMUS 800M PI', 79),
('9799793967720', 'KAMUS 900M PI', 85),
('9799793967737', 'KAMUS LENGKAP ING-INDO SJ', 54),
('9799793967751', 'BUKU (B) GLOBAL SJ', 56),
('9799793967768', 'BUKU BELAJAR  PENJUMLAHAN', 100),
('9799793967782', 'BUKU ATLAS PUSTAKA ILMU', 39),
('9799793967836', 'KAMUS MANDARIN TG', 59),
('9799793967973', 'BUKU RPUL SJ', 11),
('9799793967980', 'BUKU RPAL SJ', 0),
('9799793967997', 'KAMUS LENGKAP PRIBAHASA INDO', 9),
('9829012041686', 'TEA COCO CELUP 25\'S TEA BAG', 63),
('9829012051685', 'SINGA TEH CELUP 25\'S', 22),
('9829018888889', 'SINGA TEH CELUP 7\'SX12', 16),
('98350830842', 'KERTAS LIPAT WSC 16X16 50S', 35),
('9851679938863', 'STUDY SET XL 002', 21),
('9851679938887', 'STUDY SET KB 702', 99),
('9856425545562', 'DIARY KUNCI BB 001', 82),
('9867115688612', 'LEM RED B', 73),
('9867115688698', 'LEM RED K', 28),
('9874561357542', 'NOTE\'S A6 FX 5875', 72),
('9878900000076', 'BUKU GAMBAR S LUX KW', 48),
('9887766765438', 'BUKU FOLIO GK 100', 62),
('9887766776438', 'BUKU FOLIO 100 GELATIK', 32),
('9887950812102', 'SURYA TEH BUBUK 50G', 98),
('9887950812201', 'SURYA TEH CELUP 25\'S ASLI', 36),
('9887950892388', 'SURYA TEH CELUP 25\'S', 47),
('990025135002', 'EN DODOL SPECIAL.', 94),
('99027800939', 'DIARY HAPPY WHITE TG', 33),
('99373725009', 'DIARY SPECIAL THINGS D9901', 29),
('9938507651009', 'SERITI BUKU TULIS HALUS 1\'S', 94),
('99625790052', 'DIARY SWEET DREAM 7668K', 27),
('997008630136', 'SERITI BUKU EXP 100', 96),
('9978749260089', 'BUKU MEWARNAI CB 015', 49),
('99889765856997', 'SERITI BUKU PANJANG 1S', 38),
('99889765856998', 'BUKU EXPEDISI 200 PERMATA', 77);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `type` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `type`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`barcode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;