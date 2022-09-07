-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2022, 10:18
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep z kokainą`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klient` int(11) NOT NULL,
  `Holzu` text NOT NULL,
  `Lobsky` text NOT NULL,
  `Sliwa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id_klient`, `Holzu`, `Lobsky`, `Sliwa`) VALUES
(1, 'crack ', 'kokainowy baron', 'kokaina');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odbiorcy`
--

CREATE TABLE `odbiorcy` (
  `id_klient` int(11) NOT NULL,
  `Liczba wysłanych` text NOT NULL,
  `Liczba kupujących` text NOT NULL,
  `Liczba oczekujących` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `odbiorcy`
--

INSERT INTO `odbiorcy` (`id_klient`, `Liczba wysłanych`, `Liczba kupujących`, `Liczba oczekujących`) VALUES
(1, '1', '1', '1'),
(2, '2', '2', '2'),
(3, '3', '3', '3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towar`
--

CREATE TABLE `towar` (
  `id_klient` int(11) NOT NULL,
  `asortyment` text NOT NULL,
  `cena` text NOT NULL,
  `dostępna ilość` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `towar`
--

INSERT INTO `towar` (`id_klient`, `asortyment`, `cena`, `dostępna ilość`) VALUES
(1, 'crack', '100$', '800kg'),
(2, 'kokaina', '250$', '900kg'),
(3, 'pasta kokainowa', '600$', '654kg'),
(4, 'kokainowy baron', '5000$', '489kg'),
(5, 'koks z albanii', '543$', '700kg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klient`);

--
-- Indeksy dla tabeli `odbiorcy`
--
ALTER TABLE `odbiorcy`
  ADD PRIMARY KEY (`id_klient`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD CONSTRAINT `klient_ibfk_1` FOREIGN KEY (`id_klient`) REFERENCES `odbiorcy` (`id_klient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
