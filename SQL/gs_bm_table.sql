-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 05 日 16:03
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `content`, `date`) VALUES
(1, 'へんみさおり', 'test@example.com', '内容', '2022-12-10 14:54:48'),
(2, 'あいうえお', 'test2@example.com', 'テスト2', '2022-12-10 14:58:43'),
(3, 'かきくけこ', 'test3@example.com', 'テスト3', '2022-12-10 14:59:05'),
(6, 'さしすせそ', 'test3@example.com', 'テスト3', '2022-12-10 15:00:47'),
(7, 'aaaa', 'aaaaa', 'aaaaaa', '2022-12-10 16:04:52'),
(8, 'てすと太郎', 'testtest', 'testtesttest', '2022-12-10 16:08:13'),
(9, '<script>alert(\'test\')</script>', '', '', '2022-12-10 17:08:05'),
(10, '<script>alert(\'test\')</script>', '', '', '2022-12-10 17:18:31');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` text NOT NULL,
  `comment` text NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, 'ジョブ理論', 'https://www.amazon.co.jp/%E3%82%B8%E3%83%A7%E3%83%96%E7%90%86%E8%AB%96-%E3%82%A4%E3%83%8E%E3%83%99%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E4%BA%88%E6%B8%AC%E5%8F%AF%E8%83%BD%E3%81%AB%E3%81%99%E3%82%8B%E6%B6%88%E8%B2%BB%E3%81%AE%E3%83%A1%E3%82%AB%E3%83%8B%E3%82%BA%E3%83%A0-%E3%83%93%E3%82%B8%E3%83%8D%E3%82%B9%E3%83%AA%E3%83%BC%E3%83%80%E3%83%BC1%E4%B8%87%E4%BA%BA%E3%81%8C%E9%81%B8%E3%81%B6%E3%83%99%E3%82%B9%E3%83%88%E3%83%93%E3%82%B8%E3%83%8D%E3%82%B9%E6%9B%B8%E3%83%88%E3%83%83%E3%83%97%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E5%A4%A7%E8%B3%9E%E7%AC%AC2%E4%BD%8D-%E3%83%8F%E3%83%BC%E3%83%91%E3%83%BC%E3%82%B3%E3%83%AA%E3%83%B3%E3%82%BA%E3%83%BB%E3%83%8E%E3%83%B3%E3%83%95%E3%82%A3%E3%82%AF%E3%82%B7%E3%83%A7%E3%83%B3-%E3%82%AF%E3%83%AA%E3%82%B9%E3%83%86%E3%83%B3%E3%82%BB%E3%83%B3/dp/4596551227', 'ペインを解決すれば良い訳ではない、ということを伝えるのに良い事例が載っていた。\r\n', '2023-01-04 17:59:06'),
(2, '売り方は類人猿が知っている', 'https://www.amazon.co.jp/%E5%A3%B2%E3%82%8A%E6%96%B9%E3%81%AF%E9%A1%9E%E4%BA%BA%E7%8C%BF%E3%81%8C%E7%9F%A5%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B-%E6%97%A5%E7%B5%8C%E3%83%97%E3%83%AC%E3%83%9F%E3%82%A2%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E3%83%AB%E3%83%87%E3%82%A3%E3%83%BC-%E5%92%8C%E5%AD%90/dp/4532260655', '人間の購買行動を、脳の作りや人類の歴史など科学的なアプローチで分析していて面白かった。', '2022-12-10 23:53:01'),
(3, '売り方は類人猿が知っている', 'https://www.amazon.co.jp/%E5%A3%B2%E3%82%8A%E6%96%B9%E3%81%AF%E9%A1%9E%E4%BA%BA%E7%8C%BF%E3%81%8C%E7%9F%A5%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B-%E6%97%A5%E7%B5%8C%E3%83%97%E3%83%AC%E3%83%9F%E3%82%A2%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E3%83%AB%E3%83%87%E3%82%A3%E3%83%BC-%E5%92%8C%E5%AD%90/dp/4532260655', '人間の購買行動を、脳の作りや人類の歴史など科学的なアプローチで分析していて面白かった。', '2022-12-10 23:53:14'),
(4, 'ハリー・ポッターと秘密の部屋', 'https://www.amazon.co.jp/%E3%83%8F%E3%83%AA%E3%83%BC%E3%83%BB%E3%83%9D%E3%83%83%E3%82%BF%E3%83%BC%E3%81%A8%E7%A7%98%E5%AF%86%E3%81%AE%E9%83%A8%E5%B1%8B-J-K-%E3%83%AD%E3%83%BC%E3%83%AA%E3%83%B3%E3%82%B0/dp/4915512398', 'ハリーとロンが友達を助けるために奮闘するところが良かった', '2022-12-15 22:07:54');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
