-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2021 pada 16.01
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtix`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataadmin`
--

CREATE TABLE `dataadmin` (
  `IdAdmin` int(11) NOT NULL,
  `NamaAdmin` varchar(25) NOT NULL,
  `KeyPass` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dataadmin`
--

INSERT INTO `dataadmin` (`IdAdmin`, `NamaAdmin`, `KeyPass`) VALUES
(1, 'Aris', 'arisnk07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datauser`
--

CREATE TABLE `datauser` (
  `IdUser` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `verif_code` text NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `poin` int(11) NOT NULL DEFAULT 0,
  `gambar` varchar(50) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datauser`
--

INSERT INTO `datauser` (`IdUser`, `nama`, `email`, `password`, `verif_code`, `is_verified`, `poin`, `gambar`) VALUES
(5, 'faridz nur', 'faridzbos123@gmail.com', '$2y$10$164hR1V.YXmjHe0O1frMwuW1N7e576by/ui130qRIufxRpb1B5nu2', '4e91c64138c7e597f2d86635d31466b3', 1, 0, 'default.png'),
(11, 'eser', 'nur.aris07@gmail.com', '$2y$10$u5tKtuxqtZ/5jsuOg3PKr.iTeAZ49lE3wjdVsAWRzZ81ZvJ5PMTju', 'e746f189a55acdb0f8299d23e616030b', 1, 100, '60c1995469fd1.jpg'),
(12, 'wrrqw', '190411100117@student.trunojoyo.ac.id', '$2y$10$RNTc9BEBDY5jTNdypfICH.ox3wiZgA8XksfJ024UD5wbfJ.fxVlz2', '0902a3095b7ec103f84ddc2a41b35242', 1, 0, 'default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `KodeFilm` int(11) NOT NULL,
  `JudulFilm` varchar(50) NOT NULL,
  `KodeGenre` int(11) NOT NULL,
  `Sinopsis` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`KodeFilm`, `JudulFilm`, `KodeGenre`, `Sinopsis`) VALUES
(337404, 'Cruella', 35, 'In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estellaâ€™s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of '),
(399566, 'Godzilla vs. Kong', 28, 'In a time when monsters walk the Earth, humanityâ€™s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.'),
(412656, 'Chaos Walking', 878, 'Two unlikely companions embark on a perilous adventure through the badlands of an unexplored planet as they try to escape a dangerous and disorienting reality, where all inner thoughts are seen and heard by everyone.'),
(458576, 'Monster Hunter', 14, 'A portal transports Cpt. Artemis and an elite unit of soldiers to a strange world where powerful monsters rule with deadly ferocity. Faced with relentless danger, the team encounters a mysterious hunter who may be their only hope to find a way home.'),
(471498, 'Oxygen', 878, 'A woman wakes in a cryogenic chamber with no recollection of how she got there, and must find a way out before running out of air.'),
(503736, 'Army of the Dead', 28, 'Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble: venturing into the quarantine zone to pull off the greatest heist ever attempted.'),
(527774, 'Raya and the Last Dragon', 16, 'Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and itâ€™s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.'),
(573680, 'The Banishing', 27, 'In the 1930s, a young reverend and his family are forced to confront their worst fears when they discover their new home holds a horrifying secret.'),
(578701, 'Those Who Wish Me Dead', 53, 'A young boy finds himself pursued by two assassins in the Montana wilderness with a survival expert determined to protecting him - and a forest fire threatening to consume them all.'),
(581387, 'Ashfall', 28, 'A group of unlikely heroes from across the Korean peninsula try to save the day after a volcano erupts on the mythical and majestic Baekdu Mountain.'),
(586047, 'Seobok', 878, 'A former intelligence agent gets involved with the first human clone, Seo Bok, who others seek, causing trouble.'),
(587807, 'Tom & Jerry', 35, 'Tom the cat and Jerry the mouse get kicked out of their home and relocate to a fancy New York hotel, where a scrappy employee named Kayla will lose her job if she canâ€™t evict Jerry before a high-class wedding at the hotel. Her solution? Hiring Tom to get rid of the pesky mouse.'),
(597890, 'Voyagers', 878, 'With the future of the human race at stake, a group of young men and women -- bred for intelligence and obedience -- embark on an expedition to colonize a distant planet. When they uncover disturbing secrets about the mission, they defy their training and begin to explore their most primitive natures. As life on the ship descends into chaos, they soon become consumed by fear, lust and an insatiable hunger for power.'),
(615643, 'Minari', 18, 'A Korean-American family moves to Arkansas in search of their own American Dream. With the arrival of their sly, foul-mouthed, but incredibly loving grandmother, the stability of their relationships is challenged even more in this new life in the rugged Ozarks, testing the undeniable resilience of family and what really makes a home.'),
(632357, 'The Unholy', 27, 'Alice, a young hearing-impaired girl who, after a supposed visitation from the Virgin Mary, is inexplicably able to hear, speak and heal the sick. As word spreads and people from near and far flock to witness her miracles, a disgraced journalist hoping to revive his career visits the small New England town to investigate. When terrifying events begin to happen all around, he starts to question if these phenomena are the works of the Virgin Mary or something much more sinister.'),
(634528, 'The Marksman', 28, 'Jim Hansonâ€™s quiet life is suddenly disturbed by two people crossing the US/Mexico border â€“ a woman and her young son â€“ desperate to flee a Mexican cartel. After a shootout leaves the mother dead, Jim becomes the boyâ€™s reluctant defender. He embraces his role as Miguelâ€™s protector and will stop at nothing to get him to safety, as they go on the run from the relentless assassins.'),
(644083, 'Twist', 80, 'A Dickens classic brought thrillingly up to date in the teeming heartland of modern London, where a group of street smart young hustlers plan the heist of the century for the ultimate payday.'),
(647302, 'Benny Loves You', 27, 'Jack, a man desperate to improve his life throws away his beloved childhood plush, Benny. Itâ€™s a move that has disastrous consequences when Benny springs to life with deadly intentions!'),
(662638, 'Detective Conan: The Scarlet Bullet', 16, 'At the opening ceremony of the WSG (World Sports Games) Tokyo Games, a sports festival held once every four years, it is announced that the world\'s first vacuum superconducting maglev with a maximum speed of 1,000 kilometers per hour will open. While attracting attention from around the world, top executives of large companies are kidnapped from the party venue where WSG tournament sponsors gather. Conan moves toward a solution and eventually finds a connection with the WSG abduction case that o'),
(675327, 'Shadow in the Cloud', 27, 'A WWII pilot traveling with top secret documents on a B-17 Flying Fortress encounters an evil presence on board the flight.'),
(681260, 'Maya the Bee: The Golden Orb', 12, 'When Maya, a headstrong little bee, and her best friend Willi, rescue an ant princess they find themselves in the middle of an epic bug battle that will take them to strange new worlds and test their friendship to its limits.'),
(681774, 'Terima Kasih Emak Terima Kasih Abah', 18, 'The story begins when Abah has lost his home and property. That is a consequence of paying too much brother-in-law\'s debt. Then Abah and his family moved to a house in a remote village in West Java. The house is his childhood home, a legacy from his father. Initially, they planned to stay temporarily during the trial of his brother\'s debt case. Unfortunately, they lost in court. The court\'s decision left Abah\'s family threatened to live forever in the small house in a state of poverty. Not only Abah, Euis, Abah\'s first child also helped raise money for the family. While Cemara or Ara, who is still small, seems to remain eager to live life. They work hand in hand to rise from the deterioration of economic conditions. The Cemara family is an adaptation of a television series with the same title by Arswendo Atmowiloto.'),
(722780, 'For the Sake of Vicious', 28, 'An overworked nurse returns home to find a maniac hiding out with a bruised and beaten hostage. When an unexpected wave of violent intruders descend upon her home, it becomes a fight for survival.'),
(804435, 'Vanquish', 28, 'Victoria is a young mother trying to put her dark past as a Russian drug courier behind her, but retired cop Damon forces Victoria to do his bidding by holding her daughter hostage. Now, Victoria must use guns, guts and a motorcycle to take out a series of violent gangstersâ€”or she may never see her child again.'),
(813258, 'Monster Pets: A Hotel Transylvania Short', 16, 'Drac tries out some new monster pets to help occupy Tinkles for playtime.'),
(815932, 'Pulau Plastik', 99, 'Gede Robi, vocalist of Navicula, Tiza Mafira, lawyer from Jakarta & Prigi Arisandi, biologist & river guard from East Java in tracing plastic waste whose tracks have infiltrated the food chain & its impact on human health.'),
(818664, 'Kuyang the Movie', 27, 'Kuyang is a nocturnal female spirit in the form of a human head with the contents of the body attached without skin and limbs that can fly looking for the blood of a baby or the blood of a woman who has given birth. This creature is known to the public in Kalimantan. In a village in Kalimantan, a husband and wife whose wife is 7 months pregnant has just moved to the area to start a new life. Everything went normal at first until they were haunted by Kuyang who wanted to take the baby. Will they be able to face the Kuyang or will they even lose the baby.'),
(821656, 'Dear Imamku', 18, 'Haris and Alysa, lovers who are also YouTubers, are successful by selling their romantic relationship content. Life suddenly changes when Haris almost loses his mother to a stroke. Haris decided to move and cut his relationship with Alysa. How is the continuation of Haris\'s intention to move?'),
(821991, 'Tarian Lengger Maut', 53, 'One by one the corpses without a heart were found in Pagar Alas Village. At the same time, Sukma, a beautiful girl in the village is just about to become a Lengger dancer, and Dr. Jati, a young doctor has just arrived to work in the village.'),
(823358, '7 Purnama di Satu Syawal', 18, 'With a cultural background of Bangka Belitung and the nuances of Eid al-Fitr, this film tells the story of a romantic romantic religious drama about the simplicity of love that offers elements of peace conveyed in Islam and Malay culture through the proven bond of a man when leaving. hometown named Malik Ahmad towards a woman named Mariam Syahida who has extraordinary loyalty.'),
(828707, 'Noda Ranjang Membekas', 18, 'Awakening from a coma, Bobby falls in love with Inggrid, a nurse whose age is far apart from him. Disasters arise as they drift deeper and deeper into love. They were caught in a cunning scheme.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `KodeGenre` int(11) NOT NULL,
  `NamaGenre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`KodeGenre`, `NamaGenre`) VALUES
(12, 'Adventure'),
(14, 'Fantasy'),
(16, 'Animation'),
(18, 'Drama'),
(27, 'Horror'),
(28, 'Action'),
(35, 'Comedy'),
(36, 'History'),
(37, 'Western'),
(53, 'Thriller'),
(80, 'Crime'),
(99, 'Documentar'),
(878, 'Science Fi'),
(9648, 'Mystery'),
(10402, 'Music'),
(10749, 'Romance'),
(10751, 'Family'),
(10752, 'War'),
(10770, 'TV Movie');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `KodeJadwal` char(10) NOT NULL,
  `KodeFilm` int(11) NOT NULL,
  `TglTayang` varchar(15) NOT NULL,
  `JamTayang` varchar(5) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`KodeJadwal`, `KodeFilm`, `TglTayang`, `JamTayang`, `harga`) VALUES
('124', 821991, '05/29/2021', '12:00', 60000),
('186', 681774, '05/22/2021', '18:00', 50000),
('212', 527774, '05/21/2021', '18:00', 50000),
('218', 681774, '06/02/2021', '12:00', 50000),
('267', 821991, '06/02/2021', '11:00', 50000),
('543', 821991, '06/02/2021', '08:00', 50000),
('836', 828707, '06/22/2021', '13:30', 50000),
('837', 828707, '06/11/2021', '15:00', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi`
--

CREATE TABLE `kursi` (
  `IdTrans` varchar(11) NOT NULL,
  `KodeJadwal` char(10) NOT NULL,
  `KodeKursi` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reset_pw`
--

CREATE TABLE `reset_pw` (
  `IdReset` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reset_pw`
--

INSERT INTO `reset_pw` (`IdReset`, `Email`, `Code`) VALUES
(1, 'faridzbos123@gmail.com', '160a3ccb14e0fc'),
(2, 'faridzbos123@gmail.com', '160a3cf84117b0'),
(3, 'nur.aris07@gmail.com', '160a487570d067'),
(4, 'nur.aris07@gmail.com', '160a714d43928d'),
(5, 'nur.aris07@gmail.com', '160a7156c170a5'),
(6, 'nur.aris07@gmail.com', '160a715e7e1385'),
(7, 'nur.aris07@gmail.com', '160a7188222ab1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `IdTrans` varchar(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `KodeJadwal` char(10) NOT NULL,
  `JumlahTiket` int(11) NOT NULL,
  `poin` int(11) NOT NULL,
  `UniqueCode` int(11) DEFAULT NULL,
  `StatusTrans` varchar(15) DEFAULT NULL,
  `Bukti` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataadmin`
--
ALTER TABLE `dataadmin`
  ADD PRIMARY KEY (`IdAdmin`);

--
-- Indeks untuk tabel `datauser`
--
ALTER TABLE `datauser`
  ADD PRIMARY KEY (`IdUser`);

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`KodeFilm`),
  ADD KEY `KodeGenre` (`KodeGenre`);

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`KodeGenre`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`KodeJadwal`),
  ADD KEY `KodeFilm` (`KodeFilm`);

--
-- Indeks untuk tabel `kursi`
--
ALTER TABLE `kursi`
  ADD KEY `KodeJadwal` (`KodeJadwal`),
  ADD KEY `IdTrans` (`IdTrans`);

--
-- Indeks untuk tabel `reset_pw`
--
ALTER TABLE `reset_pw`
  ADD PRIMARY KEY (`IdReset`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`IdTrans`),
  ADD KEY `KodeJadwal` (`KodeJadwal`),
  ADD KEY `IdUser` (`IdUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dataadmin`
--
ALTER TABLE `dataadmin`
  MODIFY `IdAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `datauser`
--
ALTER TABLE `datauser`
  MODIFY `IdUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `reset_pw`
--
ALTER TABLE `reset_pw`
  MODIFY `IdReset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`KodeGenre`) REFERENCES `genre` (`KodeGenre`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`KodeFilm`) REFERENCES `film` (`KodeFilm`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kursi`
--
ALTER TABLE `kursi`
  ADD CONSTRAINT `kursi_ibfk_2` FOREIGN KEY (`KodeJadwal`) REFERENCES `jadwal` (`KodeJadwal`) ON UPDATE CASCADE,
  ADD CONSTRAINT `kursi_ibfk_3` FOREIGN KEY (`IdTrans`) REFERENCES `transaksi` (`IdTrans`) ON UPDATE CASCADE,
  ADD CONSTRAINT `kursi_ibfk_4` FOREIGN KEY (`IdTrans`) REFERENCES `transaksi` (`IdTrans`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`KodeJadwal`) REFERENCES `jadwal` (`KodeJadwal`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `datauser` (`IdUser`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
