-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 17 Jun 2021 pada 03.21
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_input`
--

CREATE TABLE `log_input` (
  `id` int(11) NOT NULL,
  `nama_perawat` varchar(250) DEFAULT NULL,
  `jwb_pemasangan_infus` varchar(30) DEFAULT NULL,
  `jwb_perawatan_luka` varchar(24) DEFAULT NULL,
  `jwb_memberikan_oksigen` varchar(12) DEFAULT NULL,
  `jwb_penanganan_luka_bakar` varchar(22) DEFAULT NULL,
  `jwb_pasien_gawat` varchar(17) DEFAULT NULL,
  `nama_pasien` varchar(250) DEFAULT NULL,
  `nomor_rm` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_input`
--

INSERT INTO `log_input` (`id`, `nama_perawat`, `jwb_pemasangan_infus`, `jwb_perawatan_luka`, `jwb_memberikan_oksigen`, `jwb_penanganan_luka_bakar`, `jwb_pasien_gawat`, `nama_pasien`, `nomor_rm`) VALUES
(1, 'sena', NULL, NULL, NULL, NULL, NULL, 'nofia	', '123'),
(2, 'sena', '101010110', NULL, NULL, NULL, NULL, 'nofia', '123'),
(3, 'sena', '111011100110010101001111100100', NULL, NULL, NULL, NULL, 'nofia', '1'),
(4, 'sena', NULL, NULL, NULL, NULL, NULL, 'sena', '123'),
(5, 'sena', NULL, NULL, NULL, NULL, NULL, 'sena', '123'),
(6, 'sena', NULL, NULL, NULL, NULL, NULL, 'sena', '123'),
(7, 'sena', '110110100100100000110010100110', '011010101101101110011110', '110101110100', '1110110100110110010100', '11100100010110111', 'yudha', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_sop_luka_bakar`
--

CREATE TABLE `m_sop_luka_bakar` (
  `id` int(11) NOT NULL,
  `fk` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_sop_luka_bakar`
--

INSERT INTO `m_sop_luka_bakar` (`id`, `fk`, `nama`) VALUES
(1, 1, '1. pinset anatomi'),
(2, 1, '2. Kassa'),
(3, 1, '3. Pinset chirurge'),
(4, 1, '4. Kapas'),
(5, 1, '5. Gunting'),
(6, 1, '6. Hand scoen'),
(7, 1, '7. bengkok'),
(8, 1, '8. spuit'),
(9, 1, '9. kom kecil'),
(10, 1, '10. NaCl'),
(11, 2, '1. Gunting balutan'),
(12, 2, '2. SSD (silver sulfa diacin)'),
(13, 2, '3. Plester'),
(14, 2, '6. Tempat sampah'),
(15, 3, '1. Memberitahu pasien dan keluarga'),
(16, 3, '2. Perawat cuci tangan'),
(17, 3, '3. Mengatur posisi (perawat memakai hand scoen)'),
(18, 3, '4. Perawat membersihkan luka bakar'),
(19, 3, '5. Mendesinfektan luka dan sekitarnya dengan NaCl'),
(20, 3, '6. Perawat merapikan alat'),
(21, 3, '7. perawat melepaskan handscoon'),
(22, 3, '8.dokumentasi ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_sop_memberikan_oksigen`
--

CREATE TABLE `m_sop_memberikan_oksigen` (
  `id` int(11) NOT NULL,
  `fk` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_sop_memberikan_oksigen`
--

INSERT INTO `m_sop_memberikan_oksigen` (`id`, `fk`, `nama`) VALUES
(1, 1, '1. Tabung O2 lengkap dengan manometer'),
(2, 1, '2. Mengukur aliran (flowmeter)'),
(3, 1, '3. Botol pelembab berisi air steril / aquadest'),
(4, 1, '4. Selang O2'),
(5, 1, '5. Plester'),
(6, 1, '6. kapas alkohol'),
(7, 2, '1. Atur posisi semifoler'),
(8, 2, '2. Slang dihubungkan'),
(9, 2, '3. Sebelum memasang slang pada hidung pasien slang dibersihkan dahulu dengankapasa alkohol'),
(10, 2, '4. Flowmeter dibuka, dicoba pada punggung tangan lalu ditutup kembal'),
(11, 2, '5. Memasang canul hidung, lakukan fixasi (plester)'),
(12, 2, '6. Membuka flowmeter kembali dengan ukuran sesuai advis dokter ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_sop_observasi_pasien_gawat`
--

CREATE TABLE `m_sop_observasi_pasien_gawat` (
  `id` int(11) NOT NULL,
  `fk` int(11) DEFAULT NULL,
  `nama` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_sop_observasi_pasien_gawat`
--

INSERT INTO `m_sop_observasi_pasien_gawat` (`id`, `fk`, `nama`) VALUES
(1, 1, '1. Penderita gawat harus di observasi'),
(2, 1, '2. Observasi dilakukan tiap 5 – 15 menit sesuai  '),
(3, 1, '3. Observasi dilakukan oleh paramedis perawat, bila perlu oleh dokter.'),
(4, 1, '4. Hal-hal yang perlu diobservasi : '),
(5, 1, 'a)   Keadaan umum penderita’'),
(6, 1, 'a)   Kesadaran penderita'),
(7, 1, 'c) Kelancaran jalan nafas (air Way )'),
(8, 1, 'd) Kelancaran pemberian O2'),
(9, 1, 'e) Tanda-tanda vital :'),
(10, 1, '5.Apabila hasil observasi menunjukkan keadaan penderita semakin '),
(11, 1, 'tidak baik makaparamedis perawat harus lapor kepada Dokter '),
(12, 1, 'yang sedang bertugas (diluar jam kerjapertelpon).'),
(13, 1, '6. Apabila kasus penyakitnya diluar kemampuan Dokter UGD maka perlu dirujuk'),
(14, 1, '7. Observasi dilakukan maksimal 2 jam, selanjutnya diputuskan penderita bisa pulangatau rawat inap.'),
(15, 1, '8. Perkembangan penderita selama observasi dicatat di kartu status penderita (les UGD) / lembar observasi'),
(16, 1, '9. Setelah observasi tentukan apakah penderita perlu : rawat jalan / rawat inap'),
(17, 1, '10. / rujuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_sop_pemasangan_infus`
--

CREATE TABLE `m_sop_pemasangan_infus` (
  `id` int(11) NOT NULL,
  `fk` int(11) DEFAULT NULL,
  `nama` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_sop_pemasangan_infus`
--

INSERT INTO `m_sop_pemasangan_infus` (`id`, `fk`, `nama`) VALUES
(1, 1, '1. Set infuse Cairan sesuai program medic'),
(2, 1, '2. Jarum infuse dengan ukuran yang sesuai'),
(3, 1, '3. Pengalas'),
(4, 1, '4. Torniket'),
(5, 1, '5. Kapas alcohol'),
(6, 1, '6. Plester'),
(7, 1, '7. Gunting'),
(8, 1, '8. Kasa steril'),
(9, 1, '9. Betadin'),
(10, 1, '10. Sarung tangan'),
(11, 2, '1. Petugas menjelaskan prosedur yang akan dilakukan'),
(12, 2, '2. Petugas mencuci tangan'),
(13, 2, '3. Petugas menghubungkan cairan dan infus set dengan memasukkan ke bagian karet atau akses selang ke botol infuse'),
(14, 2, '4. Petugas mengisi cairan ke dalam set infus dengan menekan ruang tetesan hingga terisi sebagian'),
(15, 2, '5. Petugas membuka klem selang hingga cairan memenuhi selang dan udara selang keluar'),
(16, 2, '6. Petugas meletakkan pangalas di bawah tempat (vena) yang akan dilakukan penginfusan'),
(17, 2, '7. Petugas melakukan pembendungan dengan torniket (karet pembendung) 10-12 cm di atas tempat penusukan'),
(18, 2, '8. Petugas menganjurkan pasien untuk menggenggam dengan gerakan sirkular (bila sadar)'),
(19, 2, '9. Petugas menggunakan sarung tangan steril'),
(20, 2, '10. Petugas mendesinfeksi daerah yang akan ditusuk dengan kapas alcoho'),
(21, 2, '11. Petugas melakukan penusukan pada vena dengan meletakkan ibu jari di bagian bawah vena dan posisi jarum (abocath) mengarah ke atas'),
(22, 2, '12. Petugas memperhatikan keluarnya darah melalui jarum (abocath/surflo)'),
(23, 2, '13. Petugas menarik keluar bagian dalam (jarum) sambil meneruskan tusukan ke dalam vena, Setelah jarum infus bagian dalam dilepaskan atau dikeluarkan,'),
(24, 2, '14. Petugas menahan bagian atas vena dengan menekan menggunakan jari tangan agar darah tidak keluar.'),
(25, 2, '15. Petugas menghubungkan/menyambungkan bagian infus dengan selang infuse'),
(26, 2, '16. Petugas membuka pengatur tetesan dan atur kecepatan sesuai dengan dosis yang diberikan'),
(27, 2, '17. Petugas melakukan fiksasi dengan kasa steril'),
(28, 2, '18. petugas menuliskan tanggal dan waktu pemasangan infus serta mencatat ukuran jarum'),
(29, 2, '19. Petugas melepaskan sarung tangan dan cuci tangan'),
(30, 2, '20. Dokumentasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_sop_perawatan_luka`
--

CREATE TABLE `m_sop_perawatan_luka` (
  `id` int(11) NOT NULL,
  `fk` int(11) DEFAULT NULL,
  `nama` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_sop_perawatan_luka`
--

INSERT INTO `m_sop_perawatan_luka` (`id`, `fk`, `nama`) VALUES
(1, 1, '1.sarung tangan'),
(2, 1, '2. Gunting plester'),
(3, 1, '3.plester'),
(4, 1, '4.desinfektan (bethadin)'),
(5, 1, '5. cairan NaCL 0,9%'),
(6, 1, '6.Bengkok'),
(7, 1, '7.Perlak pengalas.'),
(8, 1, '8.Verband'),
(9, 2, '1.Dekatkan alat dengan klien'),
(10, 2, '2.jaga privasi klien '),
(11, 2, '3.mengatur posisi nyaman klien'),
(12, 2, '4.pasang perlak dibawa area luka'),
(13, 2, '5.membuka peralatan'),
(14, 2, '6.memakai sarung tangan'),
(15, 2, '7. basahi kasa dengan bethadin kemudian menggunakan pinset bersihkan area sekitar luar sampai bersih dari kotoran(gunakan tekni memutar searah jarum jam)'),
(16, 2, '8.basahi kasa dengan cairang NaCL 0,9% kemudian dengan menggunakan sebuah pinset luka area bagian dalam (gunakan teknik usapan dari atas kebawah)'),
(17, 2, '9. keringkan daerah luka dan pastikan area daerah luka bersih dari kotoran'),
(18, 2, '10. beri obat luka sesuai kebutuhan jika pelru'),
(19, 2, '11.pasang kasa steril pada area luka sampai tepi luka'),
(20, 2, '12.fiksasi balutan menggunakan plester atau balutan verband sesuai kebutuhan'),
(21, 2, '13. menagtur posisi pasien seperti semula'),
(22, 2, '14. alat-alat dibereskan'),
(23, 2, '15.lepaskan sarung tangan'),
(24, 2, '16.Dokumentasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_group_memberikan_oksigen`
--

CREATE TABLE `sop_group_memberikan_oksigen` (
  `id` int(11) NOT NULL,
  `sop` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sop_group_memberikan_oksigen`
--

INSERT INTO `sop_group_memberikan_oksigen` (`id`, `sop`) VALUES
(1, 'Persiapan Alat'),
(2, 'Pelaksanaan Tindakan\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_group_observasi_pasien_gawat`
--

CREATE TABLE `sop_group_observasi_pasien_gawat` (
  `id` int(11) NOT NULL,
  `sop` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sop_group_observasi_pasien_gawat`
--

INSERT INTO `sop_group_observasi_pasien_gawat` (`id`, `sop`) VALUES
(1, 'Prosedur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_group_pemasangan_infus`
--

CREATE TABLE `sop_group_pemasangan_infus` (
  `id` int(11) NOT NULL,
  `sop` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sop_group_pemasangan_infus`
--

INSERT INTO `sop_group_pemasangan_infus` (`id`, `sop`) VALUES
(1, 'Persiapan Alat'),
(2, ' Pelaksanaan Tindakan:');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_group_penanganan_luka_bakar`
--

CREATE TABLE `sop_group_penanganan_luka_bakar` (
  `id` int(11) NOT NULL,
  `sop` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sop_group_penanganan_luka_bakar`
--

INSERT INTO `sop_group_penanganan_luka_bakar` (`id`, `sop`) VALUES
(1, 'Persiapan Alata Steril'),
(2, 'Persiapan Alata Non Steril'),
(3, 'Pelaksanaan Tindakan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_group_perawatan_luka`
--

CREATE TABLE `sop_group_perawatan_luka` (
  `id` int(11) NOT NULL,
  `sop` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sop_group_perawatan_luka`
--

INSERT INTO `sop_group_perawatan_luka` (`id`, `sop`) VALUES
(1, 'Persiapan Alat'),
(2, 'Pelaksanaan Tindakan\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `log_input`
--
ALTER TABLE `log_input`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_sop_luka_bakar`
--
ALTER TABLE `m_sop_luka_bakar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_sop_memberikan_oksigen`
--
ALTER TABLE `m_sop_memberikan_oksigen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_sop_observasi_pasien_gawat`
--
ALTER TABLE `m_sop_observasi_pasien_gawat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_sop_pemasangan_infus`
--
ALTER TABLE `m_sop_pemasangan_infus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_sop_perawatan_luka`
--
ALTER TABLE `m_sop_perawatan_luka`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_group_memberikan_oksigen`
--
ALTER TABLE `sop_group_memberikan_oksigen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_group_observasi_pasien_gawat`
--
ALTER TABLE `sop_group_observasi_pasien_gawat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_group_pemasangan_infus`
--
ALTER TABLE `sop_group_pemasangan_infus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_group_penanganan_luka_bakar`
--
ALTER TABLE `sop_group_penanganan_luka_bakar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_group_perawatan_luka`
--
ALTER TABLE `sop_group_perawatan_luka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `log_input`
--
ALTER TABLE `log_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `m_sop_luka_bakar`
--
ALTER TABLE `m_sop_luka_bakar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `m_sop_memberikan_oksigen`
--
ALTER TABLE `m_sop_memberikan_oksigen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `m_sop_observasi_pasien_gawat`
--
ALTER TABLE `m_sop_observasi_pasien_gawat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `m_sop_pemasangan_infus`
--
ALTER TABLE `m_sop_pemasangan_infus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `m_sop_perawatan_luka`
--
ALTER TABLE `m_sop_perawatan_luka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `sop_group_memberikan_oksigen`
--
ALTER TABLE `sop_group_memberikan_oksigen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sop_group_observasi_pasien_gawat`
--
ALTER TABLE `sop_group_observasi_pasien_gawat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sop_group_pemasangan_infus`
--
ALTER TABLE `sop_group_pemasangan_infus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sop_group_penanganan_luka_bakar`
--
ALTER TABLE `sop_group_penanganan_luka_bakar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sop_group_perawatan_luka`
--
ALTER TABLE `sop_group_perawatan_luka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
