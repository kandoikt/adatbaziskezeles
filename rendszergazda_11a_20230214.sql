-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 14. 21:12
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `rendszergazda_11a`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ellenorzo`
--

CREATE TABLE `ellenorzo` (
  `id` int(10) UNSIGNED NOT NULL,
  `osztaly_nevsor_id` int(10) UNSIGNED NOT NULL,
  `tantargy_neve` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `jegy` int(10) UNSIGNED NOT NULL,
  `datum` date NOT NULL,
  `tema` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ellenorzo`
--

INSERT INTO `ellenorzo` (`id`, `osztaly_nevsor_id`, `tantargy_neve`, `jegy`, `datum`, `tema`) VALUES
(1, 2, 'magyar', 2, '2022-09-22', 'Írásbeli röpdolgozat'),
(2, 2, 'magyar', 5, '2022-09-27', 'Írásbeli röpdolgozat'),
(3, 2, 'magyar', 1, '2022-10-29', 'Írásbeli röpdolgozat'),
(4, 2, 'magyar', 5, '2022-11-14', 'Beadandó feladat'),
(5, 2, 'matematika', 3, '2022-10-10', 'Órai munka'),
(6, 2, 'matematika', 4, '2022-10-28', 'Órai feladat'),
(7, 2, 'matematika', 4, '2022-11-10', 'Írásbeli dolgozat'),
(8, 2, 'angol_nyelv', 5, '2022-09-30', 'Írásbeli dolgozat'),
(9, 2, 'angol_nyelv', 5, '2022-10-28', 'Írásbeli dolgozat'),
(10, 2, 'fizika', 5, '2022-09-22', 'Írásbeli témazáró dolgozat'),
(11, 2, 'fizika', 5, '2022-11-14', 'Órai feladat'),
(12, 2, 'fizika', 4, '2022-11-14', 'Órai feladat'),
(13, 2, 'tortenelem', 5, '2022-09-30', 'Írásbeli röpdolgozat'),
(14, 2, 'matematika', 5, '2022-12-14', 'Számított mezők'),
(15, 2, 'tortenelem', 3, '2022-10-27', 'Írásbeli témazáró dolgozat'),
(16, 2, 'tortenelem', 3, '2022-11-28', 'Írásbeli témazáró dolgozat'),
(17, 2, 'szakmai_angol', 3, '2022-10-06', 'Írásbeli röpdolgozat'),
(18, 2, 'szakmai_angol', 5, '2022-11-09', 'Írásbeli röpdolgozat'),
(19, 2, 'szakmai_angol', 4, '2022-11-23', 'Írásbeli röpdolgozat'),
(20, 2, 'testneveles', 5, '2022-09-26', 'Órai feladat'),
(21, 2, 'testneveles', 5, '2022-10-06', 'Órai munka'),
(22, 2, 'testneveles', 5, '2022-10-17', 'Órai munka'),
(23, 2, 'testneveles', 5, '2022-10-28', 'Órai munka'),
(24, 2, 'testneveles', 5, '2022-11-18', 'Órai munka'),
(25, 2, 'adatbaziskezeles', 5, '2022-10-12', 'Projektmunka'),
(26, 2, 'adatbaziskezeles', 4, '2022-10-26', 'Írásbeli röpdolgozat'),
(27, 2, 'ikt_projektmunka', 4, '2022-10-24', 'Projektmunka'),
(28, 2, 'halozat', 4, '2022-09-20', 'Gyakorlati feladat'),
(29, 2, 'halozat', 1, '2022-10-18', 'Írásbeli dolgozat'),
(30, 2, 'halozat', 1, '2022-10-18', 'Írásbeli dolgozat'),
(31, 2, 'halozat', 5, '2022-10-25', 'Szóbeli felelet'),
(32, 2, 'digitalis_kultura', 5, '2022-10-07', 'Gyakorlati feladat'),
(33, 2, 'digitalis_kultura', 5, '2022-10-14', 'Gyakorlati feladat'),
(34, 2, 'digitalis_kultura', 5, '2022-10-28', 'Gyakorlati feladat'),
(35, 10, 'magyar', 5, '2022-09-22', 'Írásbeli röpdolgozat'),
(36, 10, 'magyar', 5, '2022-09-27', 'Írásbeli röpdolgozat'),
(37, 10, 'magyar', 2, '2022-10-29', 'Írásbeli röpdolgozat'),
(38, 10, 'magyar', 5, '2022-11-14', 'beadando feladat'),
(39, 10, 'matematika', 5, '2022-09-19', 'Órai munka'),
(40, 10, 'matematika', 5, '2022-10-28', 'Órai feladat'),
(41, 10, 'matematika', 4, '2022-11-10', 'Írásbeli dolgozat'),
(42, 10, 'angol_nyelv', 5, '2022-09-30', 'Írásbeli dolgozat'),
(43, 10, 'angol_nyelv', 5, '2022-10-28', 'Írásbeli dolgozat'),
(44, 10, 'fizika', 5, '2022-09-15', 'Írásbeli röpdolgozat'),
(45, 10, 'tortenelem', 5, '2022-09-20', 'Írásbeli felelet'),
(46, 10, 'tortenelem', 4, '2022-09-30', 'Írásbeli röpdolgozat'),
(47, 10, 'tortenelem', 5, '2022-10-10', 'Projektmunka'),
(48, 10, 'tortenelem', 5, '2022-11-07', 'Írásbeli témazáró dolgozat'),
(49, 10, 'tortenelem', 4, '2022-11-21', 'Szóbeli felelet'),
(50, 10, 'szakmai_angol', 3, '2022-10-06', 'Írásbeli röpdolgozat'),
(51, 10, 'szakmai_angol', 5, '2022-10-19', 'Órai munka'),
(52, 10, 'szakmai_angol', 5, '2022-11-09', 'Írásbeli röpdolgozat'),
(53, 10, 'szakmai_angol', 4, '2022-11-23', 'Írásbeli röpdolgozat'),
(54, 10, 'testneveles', 3, '2022-09-26', 'Órai feladat'),
(55, 10, 'testneveles', 5, '2022-10-17', 'Gyakorlati feladat'),
(56, 10, 'testneveles', 4, '2022-10-17', 'Gyakorlati feladat'),
(57, 10, 'testneveles', 5, '2022-10-28', 'Órai munka'),
(58, 10, 'testneveles', 4, '2022-11-07', 'Gyakorlati feladat'),
(59, 10, 'testneveles', 5, '2022-11-10', 'Órai munka'),
(60, 10, 'adatbaziskezeles', 5, '2022-10-12', 'Projektmunka'),
(61, 10, 'adatbaziskezeles', 5, '2022-10-26', 'Írásbeli röpdolgozat'),
(62, 10, 'ikt_Projektmunka', 3, '2022-10-25', 'Projektmunka'),
(63, 10, 'halozat', 4, '2022-09-20', 'Gyakorlati feladat'),
(64, 10, 'halozat', 5, '2022-10-25', 'Szóbeli felelet'),
(65, 10, 'halozat', 4, '2022-10-25', 'Szóbeli felelet'),
(66, 10, 'digitalis_kultura', 5, '2022-10-14', 'Gyakorlati feladat'),
(67, 10, 'digitalis_kultura', 5, '2022-10-14', 'Gyakorlati feladat'),
(68, 10, 'digitalis_kultura', 4, '2022-10-14', 'Gyakorlati feladat'),
(69, 10, 'digitalis_kultura', 5, '2022-10-28', 'Gyakorlati feladat'),
(70, 10, 'digitalis_kultura', 5, '2022-11-18', 'Gyakorlati feladat'),
(71, 10, 'angol_nyelv', 5, '2022-12-19', 'Írásbeli dolgozat'),
(72, 10, 'matematika', 4, '2022-11-10', 'Írásbeli dolgozat'),
(73, 10, 'matematika', 4, '2022-11-30', 'Írásbeli témazáró dolgozat'),
(74, 10, 'matematika', 5, '2022-12-02', 'Írásbeli felelet'),
(75, 10, 'matematika', 3, '2022-12-13', 'Írásbeli röpdolgozat'),
(76, 10, 'matematika', 5, '2022-12-21', 'Órai munka'),
(77, 10, 'tortenelem', 4, '2022-12-19', 'Írásbeli röpdolgozat'),
(78, 10, 'digitalis_kultura', 4, '2022-12-16', 'Gyakorlati feladat'),
(79, 10, 'testneveles', 3, '2022-12-12', 'Gyakorlati feladat'),
(80, 10, 'testneveles', 4, '2022-12-12', 'Gyakorlati feladat'),
(81, 10, 'ikt_Projektmunka', 3, '2022-12-13', 'Projektmunka'),
(82, 10, 'ikt_Projektmunka', 3, '2022-12-13', 'Projektmunka'),
(83, 10, 'ikt_Projektmunka', 4, '2023-01-10', 'Projektmunka'),
(84, 10, 'ikt_Projektmunka', 5, '2023-01-10', 'Órai munka'),
(85, 10, 'adatbaziskezeles', 1, '2022-12-14', 'Órai munka'),
(86, 10, 'halozat', 3, '2022-12-14', 'teszt feladat'),
(87, 10, 'szakmai_angol', 5, '2022-11-30', 'Írásbeli röpdolgozat'),
(88, 10, 'szakmai_angol', 5, '2022-12-07', 'Órai munka'),
(89, 10, 'matematika', 5, '2023-01-13', 'Írásbeli felelet'),
(90, 10, 'tortenelem', 5, '2023-01-12', 'Szóbeli felelet'),
(91, 10, 'tortenelem', 5, '2023-01-17', 'Órai munka'),
(92, 10, 'fizika', 3, '2023-01-12', 'Órai munka'),
(93, 10, 'fizika', 5, '2023-01-12', 'Órai munka'),
(94, 10, 'halozat', 3, '2023-01-12', 'Gyakorlati feladat');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztaly_nevsor`
--

CREATE TABLE `osztaly_nevsor` (
  `id` int(10) UNSIGNED NOT NULL,
  `vnev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `knev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `osztaly_nevsor`
--

INSERT INTO `osztaly_nevsor` (`id`, `vnev`, `knev`) VALUES
(1, 'Barcsák', 'Vinzent'),
(2, 'Borbély', 'Gergely'),
(3, 'Csordás', 'Csenge'),
(4, 'Enyedi', 'Sándor '),
(5, 'Gál', 'Máté'),
(6, 'György', 'Botond'),
(7, 'Héring', 'Máté'),
(8, 'Juhász', 'István'),
(9, 'Kreipos', 'Gábor'),
(10, 'Lajka', 'Kristóf'),
(11, 'Nemes', 'Alexandra'),
(12, 'Skarufa', 'Ákos'),
(13, 'Szabó', 'Gergely'),
(14, 'Váradi', 'Ádám');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ellenorzo`
--
ALTER TABLE `ellenorzo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osztaly_nevsor_id` (`osztaly_nevsor_id`);

--
-- A tábla indexei `osztaly_nevsor`
--
ALTER TABLE `osztaly_nevsor`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ellenorzo`
--
ALTER TABLE `ellenorzo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT a táblához `osztaly_nevsor`
--
ALTER TABLE `osztaly_nevsor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `ellenorzo`
--
ALTER TABLE `ellenorzo`
  ADD CONSTRAINT `ellenorzo_ibfk_1` FOREIGN KEY (`osztaly_nevsor_id`) REFERENCES `osztaly_nevsor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
