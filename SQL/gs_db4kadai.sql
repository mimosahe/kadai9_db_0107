-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 12 日 10:09
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
-- データベース: `gs_db4kadai`
--

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
(1, 'ジョブ理論', 'https://www.amazon.co.jp/%E3%82%B8%E3%83%A7%E3%83%96%E7%90%86%E8%AB%96-%E3%82%A4%E3%83%8E%E3%83%99%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E4%BA%88%E6%B8%AC%E5%8F%AF%E8%83%BD%E3%81%AB%E3%81%99%E3%82%8B%E6%B6%88%E8%B2%BB%E3%81%AE%E3%83%A1%E3%82%AB%E3%83%8B%E3%82%BA%E3%83%A0-%E3%83%93%E3%82%B8%E3%83%8D%E3%82%B9%E3%83%AA%E3%83%BC%E3%83%80%E3%83%BC1%E4%B8%87%E4%BA%BA%E3%81%8C%E9%81%B8%E3%81%B6%E3%83%99%E3%82%B9%E3%83%88%E3%83%93%E3%82%B8%E3%83%8D%E3%82%B9%E6%9B%B8%E3%83%88%E3%83%83%E3%83%97%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E5%A4%A7%E8%B3%9E%E7%AC%AC2%E4%BD%8D-%E3%83%8F%E3%83%BC%E3%83%91%E3%83%BC%E3%82%B3%E3%83%AA%E3%83%B3%E3%82%BA%E3%83%BB%E3%83%8E%E3%83%B3%E3%83%95%E3%82%A3%E3%82%AF%E3%82%B7%E3%83%A7%E3%83%B3-%E3%82%AF%E3%83%AA%E3%82%B9%E3%83%86%E3%83%B3%E3%82%BB%E3%83%B3/dp/4596551227', 'ペインを解決すれば良い訳ではない、ということを伝えるのに良い事例が載っていた。\r\n', '2023-01-12 17:41:45'),
(2, '売り方は類人猿が知っている', 'https://www.amazon.co.jp/%E5%A3%B2%E3%82%8A%E6%96%B9%E3%81%AF%E9%A1%9E%E4%BA%BA%E7%8C%BF%E3%81%8C%E7%9F%A5%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B-%E6%97%A5%E7%B5%8C%E3%83%97%E3%83%AC%E3%83%9F%E3%82%A2%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E3%83%AB%E3%83%87%E3%82%A3%E3%83%BC-%E5%92%8C%E5%AD%90/dp/4532260655', '人間の購買行動を、脳の作りや人類の歴史など科学的なアプローチで分析していて面白かった。', '2022-12-10 23:53:01'),
(4, 'ハリー・ポッターと秘密の部屋', 'https://www.amazon.co.jp/%E3%83%8F%E3%83%AA%E3%83%BC%E3%83%BB%E3%83%9D%E3%83%83%E3%82%BF%E3%83%BC%E3%81%A8%E7%A7%98%E5%AF%86%E3%81%AE%E9%83%A8%E5%B1%8B-J-K-%E3%83%AD%E3%83%BC%E3%83%AA%E3%83%B3%E3%82%B0/dp/4915512398', 'ハリーとロンが友達を助けるために奮闘するところが良かった。', '2023-01-12 17:40:09'),
(14, '僕らはそれに抵抗できない', 'https://www.amazon.co.jp/%E5%83%95%E3%82%89%E3%81%AF%E3%81%9D%E3%82%8C%E3%81%AB%E6%8A%B5%E6%8A%97%E3%81%A7%E3%81%8D%E3%81%AA%E3%81%84-%E3%80%8C%E4%BE%9D%E5%AD%98%E7%97%87%E3%83%93%E3%82%B8%E3%83%8D%E3%82%B9%E3%80%8D%E3%81%AE%E3%81%A4%E3%81%8F%E3%82%89%E3%82%8C%E3%81%8B%E3%81%9F-%E3%82%A2%E3%83%80%E3%83%A0%E3%83%BB%E3%82%AA%E3%83%AB%E3%82%BF%E3%83%BC/dp/4478067309/ref=sr_1_1?adgrpid=79839903807&gclid=CjwKCAiA2fmdBhBpEiwA4CcHzQi2OfO1IxAil3HqNf6Qf3VXF5AP1la4adnkpTNm7-PbXz4OWdNmdhoCGoIQAvD_BwE&hvadid=611342009707&hvdev=c&hvlocphy=1009311&hvnetw=g&hvqmt=b&hvrand=393790774484203624&hvtargid=kwd-784824407209&hydadcr=27487_14587086&jp-ad-ap=0&keywords=%E5%83%95%E3%82%89%E3%81%AF%E3%81%9D%E3%82%8C%E3%81%AB%E6%8A%B5%E6%8A%97%E3%81%A7%E3%81%8D%E3%81%AA%E3%81%84&qid=1673507445&sr=8-1', '依存させるプロダクトの仕掛け、それにハマってしまう理由、そこから抜け出すための策が具体例とともに示されていて面白かった。', '2023-01-12 17:40:03'),
(15, '顧客起点マーケティング', 'https://www.amazon.co.jp/%E3%81%9F%E3%81%A3%E3%81%9F%E4%B8%80%E4%BA%BA%E3%81%AE%E5%88%86%E6%9E%90%E3%81%8B%E3%82%89%E4%BA%8B%E6%A5%AD%E3%81%AF%E6%88%90%E9%95%B7%E3%81%99%E3%82%8B-%E5%AE%9F%E8%B7%B5-%E9%A1%A7%E5%AE%A2%E8%B5%B7%E7%82%B9%E3%83%9E%E3%83%BC%E3%82%B1%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0%EF%BC%88MarkeZine-BOOKS%EF%BC%89-%E8%A5%BF%E5%8F%A3/dp/4798160075', '顧客ピラミッドの分類がわかりやすかった。', '2023-01-12 17:39:41'),
(19, '顧客体験の教科書', 'https://www.amazon.co.jp/%E9%A1%A7%E5%AE%A2%E4%BD%93%E9%A8%93%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8-%E3%82%B8%E3%83%A7%E3%83%B3-%E3%82%B0%E3%83%83%E3%83%89%E3%83%9E%E3%83%B3/dp/4492557695/ref=sr_1_1?adgrpid=134797743088&gclid=Cj0KCQiA_P6dBhD1ARIsAAGI7HCrKjeDrDKgwhJd8ux7y146D8OeOUlrNrgHP9wSl_4KRWrIzvcsd2AaAqj3EALw_wcB&hvadid=557837111493&hvdev=c&hvlocphy=1009311&hvnetw=g&hvqmt=e&hvrand=8980377486374023128&hvtargid=kwd-387895107487&hydadcr=16038_13486739&jp-ad-ap=0&keywords=%E9%A1%A7%E5%AE%A2%E4%BD%93%E9%A8%93%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8&qid=1673512835&s=books&sr=1-1', 'あああああ', '2023-01-12 17:48:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'admin', 'admin@phpkadai.com', 'P@ssword!', 1, 0),
(2, 'user2', 'user2@phpkadai.com', 'P@ssword2', 0, 0),
(3, 'user3', 'user3@phpkadai.com', 'P@ssword3', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
