-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2017 at 10:37 AM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sosialisasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas_kegiatan`
--

CREATE TABLE `berkas_kegiatan` (
  `ID` int(11) NOT NULL,
  `KEGIATAN_ID` int(11) DEFAULT NULL,
  `JENIS_ID` int(11) DEFAULT NULL,
  `NAMAFILE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berkas_kegiatan`
--

INSERT INTO `berkas_kegiatan` (`ID`, `KEGIATAN_ID`, `JENIS_ID`, `NAMAFILE`) VALUES
(1, 2, NULL, NULL),
(2, 3, NULL, NULL),
(3, 4, NULL, NULL),
(4, 5, NULL, NULL),
(5, 6, NULL, NULL),
(6, 7, NULL, NULL),
(7, 8, NULL, NULL),
(8, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_peserta`
--

CREATE TABLE `detail_peserta` (
  `PESERTA_ID` int(11) NOT NULL,
  `KEGIATAN_ID` int(11) NOT NULL,
  `KOTA_ID` int(11) DEFAULT NULL,
  `NAMA_PESERTA` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_peserta`
--

INSERT INTO `detail_peserta` (`PESERTA_ID`, `KEGIATAN_ID`, `KOTA_ID`, `NAMA_PESERTA`) VALUES
(1, 1, 1117, 'SMA NEGERI'),
(1, 2, 1117, 'SMA NEGERI'),
(1, 3, 3271, 'ADIB'),
(1, 4, 5271, 'ADIB'),
(1, 5, 5102, 'dsd'),
(1, 6, 5102, 'dsd'),
(1, 7, 5102, 'dsd'),
(1, 8, 5204, 'q'),
(3, 9, 3517, 'adib');

-- --------------------------------------------------------

--
-- Table structure for table `detail_sosialisasi`
--

CREATE TABLE `detail_sosialisasi` (
  `KEGIATAN_ID` int(11) NOT NULL,
  `USER_ID` int(10) UNSIGNED NOT NULL,
  `DETAIL_KEGIATAN` text,
  `KENDALA_KEGIATAN` text,
  `BATAS_PENGISIAN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_sosialisasi`
--

INSERT INTO `detail_sosialisasi` (`KEGIATAN_ID`, `USER_ID`, `DETAIL_KEGIATAN`, `KENDALA_KEGIATAN`, `BATAS_PENGISIAN`) VALUES
(2, 1, NULL, NULL, '2015-07-06'),
(3, 1, NULL, NULL, '2017-07-24'),
(4, 1, NULL, NULL, '2017-08-02'),
(5, 1, NULL, NULL, '2017-07-21'),
(6, 1, NULL, NULL, '2017-07-21'),
(7, 1, NULL, NULL, '2017-07-21'),
(8, 1, NULL, NULL, '2017-07-30'),
(9, 3, NULL, NULL, '2017-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_berkas`
--

CREATE TABLE `jenis_berkas` (
  `ID` int(11) NOT NULL,
  `JENIS_BERKAS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_petugas`
--

CREATE TABLE `jenis_petugas` (
  `ID` int(11) NOT NULL,
  `JENIS_PETUGAS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_petugas`
--

INSERT INTO `jenis_petugas` (`ID`, `JENIS_PETUGAS`) VALUES
(1, 'admin'),
(2, 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `ID` int(11) NOT NULL,
  `KOTA_ID` int(11) DEFAULT NULL,
  `TAHUN_AKADEMIK_ID` int(11) NOT NULL,
  `NAMA_KEGIATAN` varchar(30) DEFAULT NULL,
  `ALAMAT_KEGIATAN` varchar(30) DEFAULT NULL,
  `TANGGAL_KEGIATAN` date DEFAULT NULL,
  `WAKTU_KEGIATAN` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`ID`, `KOTA_ID`, `TAHUN_AKADEMIK_ID`, `NAMA_KEGIATAN`, `ALAMAT_KEGIATAN`, `TANGGAL_KEGIATAN`, `WAKTU_KEGIATAN`) VALUES
(1, NULL, 1, 'JOZ', 'A', '2015-06-19', '12:00:00'),
(2, NULL, 1, 'JOZ', 'A', '2015-06-19', '12:00:00'),
(3, NULL, 2, 'Adib', 'Jalanan', '2017-07-07', NULL),
(4, NULL, 2, 'Adib', 'Jalanan', '2017-07-19', NULL),
(5, NULL, 2, 'asas', 'dfdf', NULL, '10:00:00'),
(6, NULL, 2, 'asas', 'dfdf', NULL, '10:00:00'),
(7, NULL, 2, 'asas', 'dfdf', NULL, '10:00:00'),
(8, NULL, 2, 'oke', 'qqqq', '2017-07-16', '10:30:00'),
(9, NULL, 3, 'adib', 'asas', '2017-07-18', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `ID` int(11) NOT NULL,
  `PROVINSI_ID` int(11) DEFAULT NULL,
  `NAMA_KOTA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`ID`, `PROVINSI_ID`, `NAMA_KOTA`) VALUES
(1101, 11, 'KAB. ACEH SELATAN'),
(1102, 11, 'KAB. ACEH TENGGARA'),
(1103, 11, 'KAB. ACEH TIMUR'),
(1104, 11, 'KAB. ACEH TENGAH'),
(1105, 11, 'KAB. ACEH BARAT'),
(1106, 11, 'KAB. ACEH BESAR'),
(1107, 11, 'KAB. PIDIE'),
(1108, 11, 'KAB. ACEH UTARA'),
(1109, 11, 'KAB. SIMEULUE'),
(1110, 11, 'KAB. ACEH SINGKIL'),
(1111, 11, 'KAB. BIREUEN'),
(1112, 11, 'KAB. ACEH BARAT DAYA'),
(1113, 11, 'KAB. GAYO LUES'),
(1114, 11, 'KAB. ACEH JAYA'),
(1115, 11, 'KAB. NAGAN RAYA'),
(1116, 11, 'KAB. ACEH TAMIANG'),
(1117, 11, 'KAB. BENER MERIAH'),
(1118, 11, 'KAB. PIDIE JAYA'),
(1171, 11, 'KOTA BANDA ACEH'),
(1172, 11, 'KOTA SABANG'),
(1173, 11, 'KOTA LHOKSEUMAWE'),
(1174, 11, 'KOTA LANGSA'),
(1175, 11, 'KOTA SUBULUSSALAM'),
(1201, 12, 'KAB. TAPANULI TENGAH'),
(1202, 12, 'KAB. TAPANULI UTARA'),
(1203, 12, 'KAB. TAPANULI SELATAN'),
(1204, 12, 'KAB. NIAS'),
(1205, 12, 'KAB. LANGKAT'),
(1206, 12, 'KAB. KARO'),
(1207, 12, 'KAB. DELI SERDANG'),
(1208, 12, 'KAB. SIMALUNGUN'),
(1209, 12, 'KAB. ASAHAN'),
(1210, 12, 'KAB. LABUHANBATU'),
(1211, 12, 'KAB. DAIRI'),
(1212, 12, 'KAB. TOBA SAMOSIR'),
(1213, 12, 'KAB. MANDAILING NATAL'),
(1214, 12, 'KAB. NIAS SELATAN'),
(1215, 12, 'KAB. PAKPAK BHARAT'),
(1216, 12, 'KAB. HUMBANG HASUNDUTAN'),
(1217, 12, 'KAB. SAMOSIR'),
(1218, 12, 'KAB. SERDANG BEDAGAI'),
(1219, 12, 'KAB. BATU BARA'),
(1220, 12, 'KAB. PADANG LAWAS UTARA'),
(1221, 12, 'KAB. PADANG LAWAS'),
(1222, 12, 'KAB. LABUHANBATU SELATAN'),
(1223, 12, 'KAB. LABUHANBATU UTARA'),
(1224, 12, 'KAB. NIAS UTARA'),
(1225, 12, 'KAB. NIAS BARAT'),
(1271, 12, 'KOTA MEDAN'),
(1272, 12, 'KOTA PEMATANG SIANTAR'),
(1273, 12, 'KOTA SIBOLGA'),
(1274, 12, 'KOTA TANJUNG BALAI'),
(1275, 12, 'KOTA BINJAI'),
(1276, 12, 'KOTA TEBING TINGGI'),
(1277, 12, 'KOTA PADANGSIDIMPUAN'),
(1278, 12, 'KOTA GUNUNGSITOLI'),
(1301, 13, 'KAB. PESISIR SELATAN'),
(1302, 13, 'KAB. SOLOK'),
(1303, 13, 'KAB. SIJUNJUNG'),
(1304, 13, 'KAB. TANAH DATAR'),
(1305, 13, 'KAB. PADANG PARIAMAN'),
(1306, 13, 'KAB. AGAM'),
(1307, 13, 'KAB. LIMA PULUH KOTA'),
(1308, 13, 'KAB. PASAMAN'),
(1309, 13, 'KAB. KEPULAUAN MENTAWAI'),
(1310, 13, 'KAB. DHARMASRAYA'),
(1311, 13, 'KAB. SOLOK SELATAN'),
(1312, 13, 'KAB. PASAMAN BARAT'),
(1371, 13, 'KOTA PADANG'),
(1372, 13, 'KOTA SOLOK'),
(1373, 13, 'KOTA SAWAHLUNTO'),
(1374, 13, 'KOTA PADANG PANJANG'),
(1375, 13, 'KOTA BUKITTINGGI'),
(1376, 13, 'KOTA PAYAKUMBUH'),
(1377, 13, 'KOTA PARIAMAN'),
(1401, 14, 'KAB. KAMPAR'),
(1402, 14, 'KAB. INDRAGIRI HULU'),
(1403, 14, 'KAB. BENGKALIS'),
(1404, 14, 'KAB. INDRAGIRI HILIR'),
(1405, 14, 'KAB. PELALAWAN'),
(1406, 14, 'KAB. ROKAN HULU'),
(1407, 14, 'KAB. ROKAN HILIR'),
(1408, 14, 'KAB. SIAK'),
(1409, 14, 'KAB. KUANTAN SINGINGI'),
(1410, 14, 'KAB. KEPULAUAN MERANTI'),
(1471, 14, 'KOTA PEKANBARU'),
(1472, 14, 'KOTA DUMAI'),
(1501, 15, 'KAB. KERINCI'),
(1502, 15, 'KAB. MERANGIN'),
(1503, 15, 'KAB. SAROLANGUN'),
(1504, 15, 'KAB. BATANGHARI'),
(1505, 15, 'KAB. MUARO JAMBI'),
(1506, 15, 'KAB. TANJUNG JABUNG BARAT'),
(1507, 15, 'KAB. TANJUNG JABUNG TIMUR'),
(1508, 15, 'KAB. BUNGO'),
(1509, 15, 'KAB. TEBO'),
(1571, 15, 'KOTA JAMBI'),
(1572, 15, 'KOTA SUNGAI PENUH'),
(1601, 16, 'KAB. OGAN KOMERING ULU'),
(1602, 16, 'KAB. OGAN KOMERING ILIR'),
(1603, 16, 'KAB. MUARA ENIM'),
(1604, 16, 'KAB. LAHAT'),
(1605, 16, 'KAB. MUSI RAWAS'),
(1606, 16, 'KAB. MUSI BANYUASIN'),
(1607, 16, 'KAB. BANYUASIN'),
(1608, 16, 'KAB. OGAN KOMERING ULU TIMUR'),
(1609, 16, 'KAB. OGAN KOMERING ULU SELATAN'),
(1610, 16, 'KAB. OGAN ILIR'),
(1611, 16, 'KAB. EMPAT LAWANG'),
(1612, 16, 'KAB. PENUKAL ABAB LEMATANG ILIR'),
(1613, 16, 'KAB. MUSI RAWAS UTARA'),
(1671, 16, 'KOTA PALEMBANG'),
(1672, 16, 'KOTA PAGAR ALAM'),
(1673, 16, 'KOTA LUBUK LINGGAU'),
(1674, 16, 'KOTA PRABUMULIH'),
(1701, 17, 'KAB. BENGKULU SELATAN'),
(1702, 17, 'KAB. REJANG LEBONG'),
(1703, 17, 'KAB. BENGKULU UTARA'),
(1704, 17, 'KAB. KAUR'),
(1705, 17, 'KAB. SELUMA'),
(1706, 17, 'KAB. MUKO MUKO'),
(1707, 17, 'KAB. LEBONG'),
(1708, 17, 'KAB. KEPAHIANG'),
(1709, 17, 'KAB. BENGKULU TENGAH'),
(1771, 17, 'KOTA BENGKULU'),
(1801, 18, 'KAB. LAMPUNG SELATAN'),
(1802, 18, 'KAB. LAMPUNG TENGAH'),
(1803, 18, 'KAB. LAMPUNG UTARA'),
(1804, 18, 'KAB. LAMPUNG BARAT'),
(1805, 18, 'KAB. TULANG BAWANG'),
(1806, 18, 'KAB. TANGGAMUS'),
(1807, 18, 'KAB. LAMPUNG TIMUR'),
(1808, 18, 'KAB. WAY KANAN'),
(1809, 18, 'KAB. PESAWARAN'),
(1810, 18, 'KAB. PRINGSEWU'),
(1811, 18, 'KAB. MESUJI'),
(1812, 18, 'KAB. TULANG BAWANG BARAT'),
(1813, 18, 'KAB. PESISIR BARAT'),
(1871, 18, 'KOTA BANDAR LAMPUNG'),
(1872, 18, 'KOTA METRO'),
(1901, 19, 'KAB. BANGKA'),
(1902, 19, 'KAB. BELITUNG'),
(1903, 19, 'KAB. BANGKA SELATAN'),
(1904, 19, 'KAB. BANGKA TENGAH'),
(1905, 19, 'KAB. BANGKA BARAT'),
(1906, 19, 'KAB. BELITUNG TIMUR'),
(1971, 19, 'KOTA PANGKAL PINANG'),
(2101, 21, 'KAB. BINTAN'),
(2102, 21, 'KAB. KARIMUN'),
(2103, 21, 'KAB. NATUNA'),
(2104, 21, 'KAB. LINGGA'),
(2105, 21, 'KAB. KEPULAUAN ANAMBAS'),
(2171, 21, 'KOTA BATAM'),
(2172, 21, 'KOTA TANJUNG PINANG'),
(3101, 31, 'KAB. ADM. KEP. SERIBU'),
(3171, 31, 'KOTA ADM. JAKARTA PUSAT'),
(3172, 31, 'KOTA ADM. JAKARTA UTARA'),
(3173, 31, 'KOTA ADM. JAKARTA BARAT'),
(3174, 31, 'KOTA ADM. JAKARTA SELATAN'),
(3175, 31, 'KOTA ADM. JAKARTA TIMUR'),
(3201, 32, 'KAB. BOGOR'),
(3202, 32, 'KAB. SUKABUMI'),
(3203, 32, 'KAB. CIANJUR'),
(3204, 32, 'KAB. BANDUNG'),
(3205, 32, 'KAB. GARUT'),
(3206, 32, 'KAB. TASIKMALAYA'),
(3207, 32, 'KAB. CIAMIS'),
(3208, 32, 'KAB. KUNINGAN'),
(3209, 32, 'KAB. CIREBON'),
(3210, 32, 'KAB. MAJALENGKA'),
(3211, 32, 'KAB. SUMEDANG'),
(3212, 32, 'KAB. INDRAMAYU'),
(3213, 32, 'KAB. SUBANG'),
(3214, 32, 'KAB. PURWAKARTA'),
(3215, 32, 'KAB. KARAWANG'),
(3216, 32, 'KAB. BEKASI'),
(3217, 32, 'KAB. BANDUNG BARAT'),
(3218, 32, 'KAB. PANGANDARAN'),
(3271, 32, 'KOTA BOGOR'),
(3272, 32, 'KOTA SUKABUMI'),
(3273, 32, 'KOTA BANDUNG'),
(3274, 32, 'KOTA CIREBON'),
(3275, 32, 'KOTA BEKASI'),
(3276, 32, 'KOTA DEPOK'),
(3277, 32, 'KOTA CIMAHI'),
(3278, 32, 'KOTA TASIKMALAYA'),
(3279, 32, 'KOTA BANJAR'),
(3301, 33, 'KAB. CILACAP'),
(3302, 33, 'KAB. BANYUMAS'),
(3303, 33, 'KAB. PURBALINGGA'),
(3304, 33, 'KAB. BANJARNEGARA'),
(3305, 33, 'KAB. KEBUMEN'),
(3306, 33, 'KAB. PURWOREJO'),
(3307, 33, 'KAB. WONOSOBO'),
(3308, 33, 'KAB. MAGELANG'),
(3309, 33, 'KAB. BOYOLALI'),
(3310, 33, 'KAB. KLATEN'),
(3311, 33, 'KAB. SUKOHARJO'),
(3312, 33, 'KAB. WONOGIRI'),
(3313, 33, 'KAB. KARANGANYAR'),
(3314, 33, 'KAB. SRAGEN'),
(3315, 33, 'KAB. GROBOGAN'),
(3316, 33, 'KAB. BLORA'),
(3317, 33, 'KAB. REMBANG'),
(3318, 33, 'KAB. PATI'),
(3319, 33, 'KAB. KUDUS'),
(3320, 33, 'KAB. JEPARA'),
(3321, 33, 'KAB. DEMAK'),
(3322, 33, 'KAB. SEMARANG'),
(3323, 33, 'KAB. TEMANGGUNG'),
(3324, 33, 'KAB. KENDAL'),
(3325, 33, 'KAB. BATANG'),
(3326, 33, 'KAB. PEKALONGAN'),
(3327, 33, 'KAB. PEMALANG'),
(3328, 33, 'KAB. TEGAL'),
(3329, 33, 'KAB. BREBES'),
(3371, 33, 'KOTA MAGELANG'),
(3372, 33, 'KOTA SURAKARTA'),
(3373, 33, 'KOTA SALATIGA'),
(3374, 33, 'KOTA SEMARANG'),
(3375, 33, 'KOTA PEKALONGAN'),
(3376, 33, 'KOTA TEGAL'),
(3401, 34, 'KAB. KULON PROGO'),
(3402, 34, 'KAB. BANTUL'),
(3403, 34, 'KAB. GUNUNG KIDUL'),
(3404, 34, 'KAB. SLEMAN'),
(3471, 34, 'KOTA YOGYAKARTA'),
(3501, 35, 'KAB. PACITAN'),
(3502, 35, 'KAB. PONOROGO'),
(3503, 35, 'KAB. TRENGGALEK'),
(3504, 35, 'KAB. TULUNGAGUNG'),
(3505, 35, 'KAB. BLITAR'),
(3506, 35, 'KAB. KEDIRI'),
(3507, 35, 'KAB. MALANG'),
(3508, 35, 'KAB. LUMAJANG'),
(3509, 35, 'KAB. JEMBER'),
(3510, 35, 'KAB. BANYUWANGI'),
(3511, 35, 'KAB. BONDOWOSO'),
(3512, 35, 'KAB. SITUBONDO'),
(3513, 35, 'KAB. PROBOLINGGO'),
(3514, 35, 'KAB. PASURUAN'),
(3515, 35, 'KAB. SIDOARJO'),
(3516, 35, 'KAB. MOJOKERTO'),
(3517, 35, 'KAB. JOMBANG'),
(3518, 35, 'KAB. NGANJUK'),
(3519, 35, 'KAB. MADIUN'),
(3520, 35, 'KAB. MAGETAN'),
(3521, 35, 'KAB. NGAWI'),
(3522, 35, 'KAB. BOJONEGORO'),
(3523, 35, 'KAB. TUBAN'),
(3524, 35, 'KAB. LAMONGAN'),
(3525, 35, 'KAB. GRESIK'),
(3526, 35, 'KAB. BANGKALAN'),
(3527, 35, 'KAB. SAMPANG'),
(3528, 35, 'KAB. PAMEKASAN'),
(3529, 35, 'KAB. SUMENEP'),
(3571, 35, 'KOTA KEDIRI'),
(3572, 35, 'KOTA BLITAR'),
(3573, 35, 'KOTA MALANG'),
(3574, 35, 'KOTA PROBOLINGGO'),
(3575, 35, 'KOTA PASURUAN'),
(3576, 35, 'KOTA MOJOKERTO'),
(3577, 35, 'KOTA MADIUN'),
(3578, 35, 'KOTA SURABAYA'),
(3579, 35, 'KOTA BATU'),
(3601, 36, 'KAB. PANDEGLANG'),
(3602, 36, 'KAB. LEBAK'),
(3603, 36, 'KAB. TANGERANG'),
(3604, 36, 'KAB. SERANG'),
(3671, 36, 'KOTA TANGERANG'),
(3672, 36, 'KOTA CILEGON'),
(3673, 36, 'KOTA SERANG'),
(3674, 36, 'KOTA TANGERANG SELATAN'),
(5101, 51, 'KAB. JEMBRANA'),
(5102, 51, 'KAB. TABANAN'),
(5103, 51, 'KAB. BADUNG'),
(5104, 51, 'KAB. GIANYAR'),
(5105, 51, 'KAB. KLUNGKUNG'),
(5106, 51, 'KAB. BANGLI'),
(5107, 51, 'KAB. KARANGASEM'),
(5108, 51, 'KAB. BULELENG'),
(5171, 51, 'KOTA DENPASAR'),
(5201, 52, 'KAB. LOMBOK BARAT'),
(5202, 52, 'KAB. LOMBOK TENGAH'),
(5203, 52, 'KAB. LOMBOK TIMUR'),
(5204, 52, 'KAB. SUMBAWA'),
(5205, 52, 'KAB. DOMPU'),
(5206, 52, 'KAB. BIMA'),
(5207, 52, 'KAB. SUMBAWA BARAT'),
(5208, 52, 'KAB. LOMBOK UTARA'),
(5271, 52, 'KOTA MATARAM'),
(5272, 52, 'KOTA BIMA'),
(5301, 53, 'KAB. KUPANG'),
(5302, 53, 'KAB TIMOR TENGAH SELATAN'),
(5303, 53, 'KAB. TIMOR TENGAH UTARA'),
(5304, 53, 'KAB. BELU'),
(5305, 53, 'KAB. ALOR'),
(5306, 53, 'KAB. FLORES TIMUR'),
(5307, 53, 'KAB. SIKKA'),
(5308, 53, 'KAB. ENDE'),
(5309, 53, 'KAB. NGADA'),
(5310, 53, 'KAB. MANGGARAI'),
(5311, 53, 'KAB. SUMBA TIMUR'),
(5312, 53, 'KAB. SUMBA BARAT'),
(5313, 53, 'KAB. LEMBATA'),
(5314, 53, 'KAB. ROTE NDAO'),
(5315, 53, 'KAB. MANGGARAI BARAT'),
(5316, 53, 'KAB. NAGEKEO'),
(5317, 53, 'KAB. SUMBA TENGAH'),
(5318, 53, 'KAB. SUMBA BARAT DAYA'),
(5319, 53, 'KAB. MANGGARAI TIMUR'),
(5320, 53, 'KAB. SABU RAIJUA'),
(5321, 53, 'KAB. MALAKA'),
(5371, 53, 'KOTA KUPANG'),
(6101, 61, 'KAB. SAMBAS'),
(6102, 61, 'KAB. MEMPAWAH'),
(6103, 61, 'KAB. SANGGAU'),
(6104, 61, 'KAB. KETAPANG'),
(6105, 61, 'KAB. SINTANG'),
(6106, 61, 'KAB. KAPUAS HULU'),
(6107, 61, 'KAB. BENGKAYANG'),
(6108, 61, 'KAB. LANDAK'),
(6109, 61, 'KAB. SEKADAU'),
(6110, 61, 'KAB. MELAWI'),
(6111, 61, 'KAB. KAYONG UTARA'),
(6112, 61, 'KAB. KUBU RAYA'),
(6171, 61, 'KOTA PONTIANAK'),
(6172, 61, 'KOTA SINGKAWANG'),
(6201, 62, 'KAB. KOTAWARINGIN BARAT'),
(6202, 62, 'KAB. KOTAWARINGIN TIMUR'),
(6203, 62, 'KAB. KAPUAS'),
(6204, 62, 'KAB. BARITO SELATAN'),
(6205, 62, 'KAB. BARITO UTARA'),
(6206, 62, 'KAB. KATINGAN'),
(6207, 62, 'KAB. SERUYAN'),
(6208, 62, 'KAB. SUKAMARA'),
(6209, 62, 'KAB. LAMANDAU'),
(6210, 62, 'KAB. GUNUNG MAS'),
(6211, 62, 'KAB. PULANG PISAU'),
(6212, 62, 'KAB. MURUNG RAYA'),
(6213, 62, 'KAB. BARITO TIMUR'),
(6271, 62, 'KOTA PALANGKARAYA'),
(6301, 63, 'KAB. TANAH LAUT'),
(6302, 63, 'KAB. KOTABARU'),
(6303, 63, 'KAB. BANJAR'),
(6304, 63, 'KAB. BARITO KUALA'),
(6305, 63, 'KAB. TAPIN'),
(6306, 63, 'KAB. HULU SUNGAI SELATAN'),
(6307, 63, 'KAB. HULU SUNGAI TENGAH'),
(6308, 63, 'KAB. HULU SUNGAI UTARA'),
(6309, 63, 'KAB. TABALONG'),
(6310, 63, 'KAB. TANAH BUMBU'),
(6311, 63, 'KAB. BALANGAN'),
(6371, 63, 'KOTA BANJARMASIN'),
(6372, 63, 'KOTA BANJARBARU'),
(6401, 64, 'KAB. PASER'),
(6402, 64, 'KAB. KUTAI KARTANEGARA'),
(6403, 64, 'KAB. BERAU'),
(6407, 64, 'KAB. KUTAI BARAT'),
(6408, 64, 'KAB. KUTAI TIMUR'),
(6409, 64, 'KAB. PENAJAM PASER UTARA'),
(6411, 64, 'KAB. MAHAKAM ULU'),
(6471, 64, 'KOTA BALIKPAPAN'),
(6472, 64, 'KOTA SAMARINDA'),
(6474, 64, 'KOTA BONTANG'),
(6501, 65, 'KAB. BULUNGAN'),
(6502, 65, 'KAB. MALINAU'),
(6503, 65, 'KAB. NUNUKAN'),
(6504, 65, 'KAB. TANA TIDUNG'),
(6571, 65, 'KOTA TARAKAN'),
(7101, 71, 'KAB. BOLAANG MONGONDOW'),
(7102, 71, 'KAB. MINAHASA'),
(7103, 71, 'KAB. KEPULAUAN SANGIHE'),
(7104, 71, 'KAB. KEPULAUAN TALAUD'),
(7105, 71, 'KAB. MINAHASA SELATAN'),
(7106, 71, 'KAB. MINAHASA UTARA'),
(7107, 71, 'KAB. MINAHASA TENGGARA'),
(7108, 71, 'KAB. BOLAANG MONGONDOW UTARA'),
(7109, 71, 'KAB. KEP. SIAU TAGULANDANG BIARO'),
(7110, 71, 'KAB. BOLAANG MONGONDOW TIMUR'),
(7111, 71, 'KAB. BOLAANG MONGONDOW SELATAN'),
(7171, 71, 'KOTA MANADO'),
(7172, 71, 'KOTA BITUNG'),
(7173, 71, 'KOTA TOMOHON'),
(7174, 71, 'KOTA KOTAMOBAGU'),
(7201, 72, 'KAB. BANGGAI'),
(7202, 72, 'KAB. POSO'),
(7203, 72, 'KAB. DONGGALA'),
(7204, 72, 'KAB. TOLI TOLI'),
(7205, 72, 'KAB. BUOL'),
(7206, 72, 'KAB. MOROWALI'),
(7207, 72, 'KAB. BANGGAI KEPULAUAN'),
(7208, 72, 'KAB. PARIGI MOUTONG'),
(7209, 72, 'KAB. TOJO UNA UNA'),
(7210, 72, 'KAB. SIGI'),
(7211, 72, 'KAB. BANGGAI LAUT'),
(7212, 72, 'KAB. MOROWALI UTARA'),
(7271, 72, 'KOTA PALU'),
(7301, 73, 'KAB. KEPULAUAN SELAYAR'),
(7302, 73, 'KAB. BULUKUMBA'),
(7303, 73, 'KAB. BANTAENG'),
(7304, 73, 'KAB. JENEPONTO'),
(7305, 73, 'KAB. TAKALAR'),
(7306, 73, 'KAB. GOWA'),
(7307, 73, 'KAB. SINJAI'),
(7308, 73, 'KAB. BONE'),
(7309, 73, 'KAB. MAROS'),
(7310, 73, 'KAB. PANGKAJENE KEPULAUAN'),
(7311, 73, 'KAB. BARRU'),
(7312, 73, 'KAB. SOPPENG'),
(7313, 73, 'KAB. WAJO'),
(7314, 73, 'KAB. SIDENRENG RAPPANG'),
(7315, 73, 'KAB. PINRANG'),
(7316, 73, 'KAB. ENREKANG'),
(7317, 73, 'KAB. LUWU'),
(7318, 73, 'KAB. TANA TORAJA'),
(7322, 73, 'KAB. LUWU UTARA'),
(7324, 73, 'KAB. LUWU TIMUR'),
(7326, 73, 'KAB. TORAJA UTARA'),
(7371, 73, 'KOTA MAKASSAR'),
(7372, 73, 'KOTA PARE PARE'),
(7373, 73, 'KOTA PALOPO'),
(7401, 74, 'KAB. KOLAKA'),
(7402, 74, 'KAB. KONAWE'),
(7403, 74, 'KAB. MUNA'),
(7404, 74, 'KAB. BUTON'),
(7405, 74, 'KAB. KONAWE SELATAN'),
(7406, 74, 'KAB. BOMBANA'),
(7407, 74, 'KAB. WAKATOBI'),
(7408, 74, 'KAB. KOLAKA UTARA'),
(7409, 74, 'KAB. KONAWE UTARA'),
(7410, 74, 'KAB. BUTON UTARA'),
(7411, 74, 'KAB. KOLAKA TIMUR'),
(7412, 74, 'KAB. KONAWE KEPULAUAN'),
(7413, 74, 'KAB. MUNA BARAT'),
(7414, 74, 'KAB. BUTON TENGAH'),
(7415, 74, 'KAB. BUTON SELATAN'),
(7471, 74, 'KOTA KENDARI'),
(7472, 74, 'KOTA BAU BAU'),
(7501, 75, 'KAB. GORONTALO'),
(7502, 75, 'KAB. BOALEMO'),
(7503, 75, 'KAB. BONE BOLANGO'),
(7504, 75, 'KAB. PAHUWATO'),
(7505, 75, 'KAB. GORONTALO UTARA'),
(7571, 75, 'KOTA GORONTALO'),
(7601, 76, 'KAB. MAMUJU UTARA'),
(7602, 76, 'KAB. MAMUJU'),
(7603, 76, 'KAB. MAMASA'),
(7604, 76, 'KAB. POLEWALI MANDAR'),
(7605, 76, 'KAB. MAJENE'),
(7606, 76, 'KAB. MAMUJU TENGAH'),
(8101, 81, 'KAB. MALUKU TENGAH'),
(8102, 81, 'KAB. MALUKU TENGGARA'),
(8103, 81, 'KAB MALUKU TENGGARA BARAT'),
(8104, 81, 'KAB. BURU'),
(8105, 81, 'KAB. SERAM BAGIAN TIMUR'),
(8106, 81, 'KAB. SERAM BAGIAN BARAT'),
(8107, 81, 'KAB. KEPULAUAN ARU'),
(8108, 81, 'KAB. MALUKU BARAT DAYA'),
(8109, 81, 'KAB. BURU SELATAN'),
(8171, 81, 'KOTA AMBON'),
(8172, 81, 'KOTA TUAL'),
(8201, 82, 'KAB. HALMAHERA BARAT'),
(8202, 82, 'KAB. HALMAHERA TENGAH'),
(8203, 82, 'KAB. HALMAHERA UTARA'),
(8204, 82, 'KAB. HALMAHERA SELATAN'),
(8205, 82, 'KAB. KEPULAUAN SULA'),
(8206, 82, 'KAB. HALMAHERA TIMUR'),
(8207, 82, 'KAB. PULAU MOROTAI'),
(8208, 82, 'KAB. PULAU TALIABU'),
(8271, 82, 'KOTA TERNATE'),
(8272, 82, 'KOTA TIDORE KEPULAUAN'),
(9101, 91, 'KAB. MERAUKE'),
(9102, 91, 'KAB. JAYAWIJAYA'),
(9103, 91, 'KAB. JAYAPURA'),
(9104, 91, 'KAB. NABIRE'),
(9105, 91, 'KAB. KEPULAUAN YAPEN'),
(9106, 91, 'KAB. BIAK NUMFOR'),
(9107, 91, 'KAB. PUNCAK JAYA'),
(9108, 91, 'KAB. PANIAI'),
(9109, 91, 'KAB. MIMIKA'),
(9110, 91, 'KAB. SARMI'),
(9111, 91, 'KAB. KEEROM'),
(9112, 91, 'KAB PEGUNUNGAN BINTANG'),
(9113, 91, 'KAB. YAHUKIMO'),
(9114, 91, 'KAB. TOLIKARA'),
(9115, 91, 'KAB. WAROPEN'),
(9116, 91, 'KAB. BOVEN DIGOEL'),
(9117, 91, 'KAB. MAPPI'),
(9118, 91, 'KAB. ASMAT'),
(9119, 91, 'KAB. SUPIORI'),
(9120, 91, 'KAB. MAMBERAMO RAYA'),
(9121, 91, 'KAB. MAMBERAMO TENGAH'),
(9122, 91, 'KAB. YALIMO'),
(9123, 91, 'KAB. LANNY JAYA'),
(9124, 91, 'KAB. NDUGA'),
(9125, 91, 'KAB. PUNCAK'),
(9126, 91, 'KAB. DOGIYAI'),
(9127, 91, 'KAB. INTAN JAYA'),
(9128, 91, 'KAB. DEIYAI'),
(9171, 91, 'KOTA JAYAPURA'),
(9201, 92, 'KAB. SORONG'),
(9202, 92, 'KAB. MANOKWARI'),
(9203, 92, 'KAB. FAK FAK'),
(9204, 92, 'KAB. SORONG SELATAN'),
(9205, 92, 'KAB. RAJA AMPAT'),
(9206, 92, 'KAB. TELUK BINTUNI'),
(9207, 92, 'KAB. TELUK WONDAMA'),
(9208, 92, 'KAB. KAIMANA'),
(9209, 92, 'KAB. TAMBRAUW'),
(9210, 92, 'KAB. MAYBRAT'),
(9211, 92, 'KAB. MANOKWARI SELATAN'),
(9212, 92, 'KAB. PEGUNUNGAN ARFAK'),
(9271, 92, 'KOTA SORONG');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_06_30_233336_create_berkas_kegiatan_table', 0),
(2, '2017_06_30_233336_create_detail_peserta_table', 0),
(3, '2017_06_30_233336_create_detail_sosialisasi_table', 0),
(4, '2017_06_30_233336_create_jenis_berkas_table', 0),
(5, '2017_06_30_233336_create_jenis_petugas_table', 0),
(6, '2017_06_30_233336_create_kegiatan_table', 0),
(7, '2017_06_30_233336_create_kota_table', 0),
(8, '2017_06_30_233336_create_peserta_table', 0),
(9, '2017_06_30_233336_create_profil_petugas_table', 0),
(10, '2017_06_30_233336_create_propinsi_table', 0),
(11, '2017_06_30_233336_create_tahun_akademik_sosialisasi_table', 0),
(12, '2017_06_30_233336_create_users_table', 0),
(13, '2017_06_30_233337_add_foreign_keys_to_berkas_kegiatan_table', 0),
(14, '2017_06_30_233337_add_foreign_keys_to_detail_peserta_table', 0),
(15, '2017_06_30_233337_add_foreign_keys_to_detail_sosialisasi_table', 0),
(16, '2017_06_30_233337_add_foreign_keys_to_kegiatan_table', 0),
(17, '2017_06_30_233337_add_foreign_keys_to_kota_table', 0),
(18, '2017_06_30_233337_add_foreign_keys_to_profil_petugas_table', 0),
(19, '2017_06_30_233337_add_foreign_keys_to_users_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `ID` int(11) NOT NULL,
  `JENIS_PESERTA` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`ID`, `JENIS_PESERTA`) VALUES
(1, 'Sekolah Menengah Atas'),
(2, 'Sekolah Menengah Kejuruan'),
(3, 'Madrasah Aliyah'),
(4, 'Instansi / Organisasi'),
(5, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `profil_petugas`
--

CREATE TABLE `profil_petugas` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(10) UNSIGNED NOT NULL,
  `TANGGAL_LAHIR` date DEFAULT NULL,
  `JENIS_KELAMIN` varchar(10) DEFAULT NULL,
  `NO_HP` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil_petugas`
--

INSERT INTO `profil_petugas` (`ID`, `USER_ID`, `TANGGAL_LAHIR`, `JENIS_KELAMIN`, `NO_HP`) VALUES
(1, 1, NULL, NULL, ''),
(2, 2, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `propinsi`
--

CREATE TABLE `propinsi` (
  `ID` int(11) NOT NULL,
  `NAMA_PROVINSI` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propinsi`
--

INSERT INTO `propinsi` (`ID`, `NAMA_PROVINSI`) VALUES
(11, 'Aceh'),
(12, 'Sumatera Utara'),
(13, 'Sumatera Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatera Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kepulauan Bangka Belitung'),
(21, 'Kepulauan Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(65, 'Kalimantan Utara'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(76, 'Sulawesi Barat'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua Barat'),
(92, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik_sosialisasi`
--

CREATE TABLE `tahun_akademik_sosialisasi` (
  `ID` int(11) NOT NULL,
  `TAHUN_AWAL` decimal(4,0) NOT NULL,
  `TAHUN_AKHIR` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_akademik_sosialisasi`
--

INSERT INTO `tahun_akademik_sosialisasi` (`ID`, `TAHUN_AWAL`, `TAHUN_AKHIR`) VALUES
(1, '2016', '2017'),
(2, '2017', '2018'),
(3, '2018', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `JENIS_ID` int(11) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `JENIS_ID`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Aulia Adib', 'auliaadib@gmail.com', '$2y$10$Yj.TwJgmRbQMTuzmFV50Muoy7YPaCLwZYIfHY9UoFjgligOPlUFkS', 'M2lzW5wZBtnsAMIUboIJuI5DN21aGv0FEHDgm0zpQTvW6NjgoiadIHjbryKH', '2017-06-28 02:05:38', '2017-06-28 02:05:38'),
(2, 1, 'Adib Aulia', 'adibaulia@gmail.com', '$2y$10$SDZ8jiNOTpDi3Nzb3aJOIe2zihVk.Muz4qWHmu1okTerFxvCYuNZO', 'kjx1QtcGVwOIcQLn5TxdSSvrqT5rOhcMyPCrR71ttUiQ084fBKh5vSmYNk8H', '2017-06-28 02:06:21', '2017-06-28 02:06:21'),
(3, 2, 'Adib AR', 'adibaulia@outlook.com', '$2y$10$E2XOjCcibdTyoPpgPU.4duq2bAzyoFQImb8R/RlqhrdhN562NcN.C', 'qKsEHxG6X2vatWiNuSZlFFqe93whj4b05vS6ld4TuzzRIN7WGCzaNjqvW84B', '2017-07-08 05:05:17', '2017-07-08 05:05:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkas_kegiatan`
--
ALTER TABLE `berkas_kegiatan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_RELATIONSHIP_10` (`KEGIATAN_ID`),
  ADD KEY `FK_RELATIONSHIP_11` (`JENIS_ID`);

--
-- Indexes for table `detail_peserta`
--
ALTER TABLE `detail_peserta`
  ADD PRIMARY KEY (`PESERTA_ID`,`KEGIATAN_ID`),
  ADD KEY `FK_RELATIONSHIP_12` (`KOTA_ID`),
  ADD KEY `FK_RELATIONSHIP_6` (`KEGIATAN_ID`);

--
-- Indexes for table `detail_sosialisasi`
--
ALTER TABLE `detail_sosialisasi`
  ADD PRIMARY KEY (`KEGIATAN_ID`),
  ADD KEY `user` (`USER_ID`);

--
-- Indexes for table `jenis_berkas`
--
ALTER TABLE `jenis_berkas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jenis_petugas`
--
ALTER TABLE `jenis_petugas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_RELATIONSHIP_1` (`TAHUN_AKADEMIK_ID`),
  ADD KEY `FK_RELATIONSHIP_7` (`KOTA_ID`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_RELATIONSHIP_8` (`PROVINSI_ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `profil_petugas`
--
ALTER TABLE `profil_petugas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ID_2` (`USER_ID`);

--
-- Indexes for table `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tahun_akademik_sosialisasi`
--
ALTER TABLE `tahun_akademik_sosialisasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis` (`JENIS_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berkas_kegiatan`
--
ALTER TABLE `berkas_kegiatan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jenis_berkas`
--
ALTER TABLE `jenis_berkas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jenis_petugas`
--
ALTER TABLE `jenis_petugas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9272;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profil_petugas`
--
ALTER TABLE `profil_petugas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `propinsi`
--
ALTER TABLE `propinsi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `tahun_akademik_sosialisasi`
--
ALTER TABLE `tahun_akademik_sosialisasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `berkas_kegiatan`
--
ALTER TABLE `berkas_kegiatan`
  ADD CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`KEGIATAN_ID`) REFERENCES `kegiatan` (`ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`JENIS_ID`) REFERENCES `jenis_berkas` (`ID`);

--
-- Constraints for table `detail_peserta`
--
ALTER TABLE `detail_peserta`
  ADD CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`KOTA_ID`) REFERENCES `kota` (`ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`PESERTA_ID`) REFERENCES `peserta` (`ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`KEGIATAN_ID`) REFERENCES `kegiatan` (`ID`);

--
-- Constraints for table `detail_sosialisasi`
--
ALTER TABLE `detail_sosialisasi`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`KEGIATAN_ID`) REFERENCES `kegiatan` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`TAHUN_AKADEMIK_ID`) REFERENCES `tahun_akademik_sosialisasi` (`ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`KOTA_ID`) REFERENCES `kota` (`ID`);

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`PROVINSI_ID`) REFERENCES `propinsi` (`ID`);

--
-- Constraints for table `profil_petugas`
--
ALTER TABLE `profil_petugas`
  ADD CONSTRAINT `user_ID_2` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `jenis` FOREIGN KEY (`JENIS_ID`) REFERENCES `jenis_petugas` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
