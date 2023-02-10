-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-10 03:58:19
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db133`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE `movie` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` int(3) UNSIGNED NOT NULL,
  `level` int(1) UNSIGNED NOT NULL,
  `ondate` date NOT NULL,
  `publish` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `movie`
--

INSERT INTO `movie` (`id`, `name`, `length`, `level`, `ondate`, `publish`, `director`, `trailer`, `poster`, `rank`, `sh`, `intro`) VALUES
(1, '院線片1', 110, 3, '2023-02-10', '發行商1', '導演1', '03B01v.mp4', '03B01.png', 1, 1, '院線片 1 劇情介紹,院線片 1 劇情介紹,院線片 1 劇情介紹,院線片 1 劇情介紹,院線片 1 劇情介紹'),
(2, '院線片2', 112, 2, '2023-02-08', '發行商2', '導演2', '03B02v.mp4', '03B02.png', 2, 1, '院線片 2 劇情介紹,院線片 2 劇情介紹,院線片 2 劇情介紹,院線片 2 劇情介紹,院線片 2 劇情介紹'),
(3, '院線片3', 103, 3, '2023-02-10', '發行商3', '導演3', '03B03v.mp4', '03B03.png', 3, 1, '院線片 3 劇情介紹,院線片 3 劇情介紹,院線片 3 劇情介紹,院線片 3 劇情介紹,院線片 3 劇情介紹'),
(4, '院線片4', 110, 1, '2023-02-10', '發行商4', '導演4', '03B04v.mp4', '03B04.png', 4, 1, '院線片 4 劇情介紹,院線片 4 劇情介紹,院線片 4 劇情介紹,院線片 4 劇情介紹,院線片 4 劇情介紹'),
(5, '院線片5', 119, 1, '2023-02-09', '發行商5', '導演5', '03B05v.mp4', '03B05.png', 5, 1, '院線片 5 劇情介紹,院線片 5 劇情介紹,院線片 5 劇情介紹,院線片 5 劇情介紹,院線片 5 劇情介紹'),
(6, '院線片6', 97, 3, '2023-02-08', '發行商6', '導演6', '03B06v.mp4', '03B06.png', 6, 1, '院線片 6 劇情介紹,院線片 6 劇情介紹,院線片 6 劇情介紹,院線片 6 劇情介紹,院線片 6 劇情介紹'),
(7, '院線片7', 110, 1, '2023-02-11', '發行商7', '導演7', '03B07v.mp4', '03B07.png', 7, 1, '院線片 7 劇情介紹,院線片 7 劇情介紹,院線片 7 劇情介紹,院線片 7 劇情介紹,院線片 7 劇情介紹'),
(8, '院線片8', 90, 3, '2023-02-11', '發行商8', '導演8', '03B08v.mp4', '03B08.png', 8, 1, '院線片 8 劇情介紹,院線片 8 劇情介紹,院線片 8 劇情介紹,院線片 8 劇情介紹,院線片 8 劇情介紹'),
(9, '院線片9', 120, 2, '2023-02-10', '發行商9', '導演9', '03B09v.mp4', '03B09.png', 9, 1, '院線片 9 劇情介紹,院線片 9 劇情介紹,院線片 9 劇情介紹,院線片 9 劇情介紹,院線片 9 劇情介紹');

-- --------------------------------------------------------

--
-- 資料表結構 `trailer`
--

CREATE TABLE `trailer` (
  `id` int(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sh` int(1) NOT NULL,
  `rank` int(10) NOT NULL,
  `ani` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `trailer`
--

INSERT INTO `trailer` (`id`, `name`, `img`, `sh`, `rank`, `ani`) VALUES
(1, '預告片1', '03A01.jpg', 1, 1, 3),
(2, '預告片2', '03A02.jpg', 1, 2, 1),
(3, '預告片3', '03A03.jpg', 1, 3, 2),
(4, '預告片4', '03A04.jpg', 1, 4, 3),
(5, '預告片5', '03A05.jpg', 1, 5, 1),
(6, '預告片6', '03A06.jpg', 1, 6, 1),
(7, '預告片7', '03A07.jpg', 1, 7, 3),
(8, '預告片8', '03A08.jpg', 1, 8, 3),
(9, '預告片9', '03A09.jpg', 1, 9, 3);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `trailer`
--
ALTER TABLE `trailer`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `trailer`
--
ALTER TABLE `trailer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
