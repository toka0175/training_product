-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1:3306
-- 生成日時: 2021-06-11 06:35:52
-- サーバのバージョン： 10.4.18-MariaDB
-- PHP のバージョン: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `succulentsno2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `m_diary`
--

CREATE TABLE `m_diary` (
  `diary_id` int(11) NOT NULL,
  `diary_date` varchar(20) NOT NULL,
  `diary_title` varchar(50) NOT NULL,
  `diary_text` text NOT NULL,
  `m_succulent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_diary`
--

INSERT INTO `m_diary` (`diary_id`, `diary_date`, `diary_title`, `diary_text`, `m_succulent_id`) VALUES
(1, '05/12/2021', '桃太郎という多肉植物を買ってみた', '道路交通騒音は心理的不快感や睡眠障害などの悪影響を人体に及ぼす可能性があり、その影響について十分に検討する必要がある。近年コンピュータの性能向上イン伴い、道路や防音壁の計画・設計には数値シミュレーションが数多く用いられている。\r\nまた騒音レベルの文うなどの数値シミュレーション結果の評価には、CGによる可視化が有効に用いられている。CDによる可視化は騒音の影響範囲等の把握を容易にするという長所をゆうsるう。これに加えて聴覚情報として騒音そのものを提示することによって、道路交通にかかわる音環境をより直感的に理解・把握することが可能ににある。\r\n　VR空間内にCG映像と音の双方を用いて道路計画や騒音対策立案・設計支援ツールとして有効であり、さらに住民との合意形成を得るうえでも、有効な手段となることが期待できる。\r\n　この点に着目して、著者らはこれまでにVR技術を用いた道路交通騒音評価システムの構築を行てきた。このシステムは、幾何音響理論に基づいた音響計算州法を採用し、種々の騒音減、距離減衰、防音壁などによる回析、反射、地表面による吸音効果等を考慮することができ、多様な音源際現に適用してきた。\r\nしかしながら、本システムで採用したASJモデルは、音のエネルギー収支のみを扱う簡易計算手法である。計算量が少なく扱いやす半面、音波の到来方向や到達時間の遅れ等のは考慮されないという問題点があり、ASJモデルの意味では任意の複雑な音場を3次元的に再現するのは困難であった。', 1),
(31, '06/01/2021', '桃太郎ってこういう植物だった', 'われわれは、さまざまな音に囲まれて生活して いる。雨音で窓の外を見、人に呼びかけられて振り向く。これは、われわれに音源の位置を立体的に把握する能力が備わっているからである。\r\nこの能力は、特に音源が後方にあるとき鋭敏であり、視覚を補う働きがある。音は空気中を伝播して頭や耳介で反射・回折し、外耳道を通って鼓膜に達する。このうち、音源の位置を立体的に把握するために最も重要な役割を果たすのは、頭や耳介による反射と回折である。\r\nこれらは伝播してくる音に影響を与え、ある周波数帯域を強めたり、別の帯域を弱めたりする。 この周波数と信号強度の関数は、頭部伝達関数 （Head-Related Transfer Function： HRTF）と呼ばれる。HRTF は左右の耳で異なり、また音源の位置によっても変化するが、われわれはその変化のパターンを学習しているので、これを利用して音源の位置を特定することができる。\r\n\r\nまた、HRTFは個人差が大きい。これは、頭や耳介の形状が変われば、その反射や回折のパターンが変化するからである。立体音響を再現するシステムにおいては、その個人差を考慮する必要がある。 しかし、頭や耳介でどのように音が反射・回折するのかはあまり良くわかっていない。その1つの原因は音が目に見えないからである。空間上のある1 点における音圧の変化は、マイクロホンで測定することができる。しかし、マイクロホン自体に大きさがあること、特性が同じマイクロホンを多数そろえて制御することが難しいことから、同 時に測定できる点数は限られており、高々数十から数百点である。\r\nそのため、頭部や耳介、とりわけ小さくて複雑な形状をしている耳介（図 1 参照） で生じる反射や回折の観測は困難である。 そこでわれわれは、音場の時々刻々の変化を可視化できる音響シミュレータを開発した。このシミュレータでは、磁気共鳴画像（MRI）で計測した 頭や耳介を立体形状データとして取り込み、これ を含む解析空間内のすべての点（数千万点）における音圧と粒子速度の変化を細かい時間間隔で計算できる。\r\n\r\nそしてこの計算結果から、音場の変化 （例えば圧力分布）を可視化することが可能である。 そしてわれわれは、図 2 に示すように、シミュ レーションによる音場の計算とマイクロホンによる実測を相補的に用いることによって、頭部や耳介で起こる複雑な反射や回折を理解するという方 針を立て、研究を推進してきた。耳介形状のどの部分でどのような音響現象が発生するかという知見が得られれば、形状と HRTF との関係が明らか になり、HRTF の個人性の由来を明らかにすることができると思われる。本稿では、まずこのシミュレータとその精度について解説し、次にこの シミュレータを用いることによってはじめて明ら かになった耳介における反射や回折の作用について報告する。\r\n', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_shelf`
--

CREATE TABLE `m_shelf` (
  `m_shelf_id` int(11) NOT NULL,
  `m_shelf_stage` int(11) NOT NULL,
  `shelf_name` varchar(10) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_shelf`
--

INSERT INTO `m_shelf` (`m_shelf_id`, `m_shelf_stage`, `shelf_name`, `remarks`) VALUES
(1, 1, 'A', ''),
(2, 2, 'A', ''),
(3, 3, 'A', ''),
(4, 1, 'B', '最も小さい棚'),
(5, 2, 'B', '最も小さい棚'),
(6, 3, 'B', '最も小さい棚'),
(7, 4, 'B', '最も小さい棚'),
(39, 1, 'C', ''),
(40, 2, 'C', ''),
(41, 3, 'C', ''),
(42, 4, 'C', ''),
(43, 5, 'C', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_succulent`
--

CREATE TABLE `m_succulent` (
  `succulent_id` int(11) NOT NULL,
  `succulent_name` varchar(20) NOT NULL,
  `cultivar` varchar(10) DEFAULT NULL,
  `type_of_cultivation` varchar(10) DEFAULT NULL,
  `sun_expusure` varchar(10) DEFAULT NULL,
  `posession` varchar(15) NOT NULL,
  `picture` varchar(20) NOT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `m_succulent`
--

INSERT INTO `m_succulent` (`succulent_id`, `succulent_name`, `cultivar`, `type_of_cultivation`, `sun_expusure`, `posession`, `picture`, `remarks`) VALUES
(1, '桃太郎', '多肉', '日陰', '日陰', '所持', 'PSJ4300', '道路交通騒音は心理的不快感や睡眠障害などの悪影響を人体に及ぼす可能性があり、その影響について十分に検討する必要がある。近年コンピュータの性能向上イン伴い、道路や防音壁の計画・設計には数値シミュレーションが数多く用いられている。\r\nまた騒音レベルの文うなどの数値シミュレーション結果の評価には、CGによる可視化が有効に用いられている。CDによる可視化は騒音の影響範囲等の把握を容易にするという長所をゆうsるう。これに加えて聴覚情報として騒音そのものを提示することによって、道路交通にかかわる音環境をより直感的に理解・把握することが可能ににある。\r\n　VR空間内にCG映像と音の双方を用いて道路計画や騒音対策立案・設計支援ツールとして有効であり、さらに住民との合意形成を得るうえでも、有効な手段となることが期待できる。\r\n　この点に着目して、著者らはこれまでにVR技術を用いた道路交通騒音評価システムの構築を行てきた。このシステムは、幾何音響理論に基づいた音響計算州法を採用し、種々の騒音減、距離減衰、防音壁などによる回析、反射、地表面による吸音効果等を考慮することができ、多様な音源際現に適用してきた。\r\nしかしながら、本システムで採用したASJモデルは、音のエネルギー収支のみを扱う簡易計算手法である。計算量が少なく扱いやす半面、音波の到来方向や到達時間の遅れ等のは考慮されないという問題点があり、ASJモデルの意味では任意の複雑な音場を3次元的に再現するのは困難であった。'),
(2, 'アロエ', 'アロエ', '', '', '', '', ''),
(3, 'エケベリア', 'エケベリア', '日向', '日向', '所持', '', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `shelf_has_succulent`
--

CREATE TABLE `shelf_has_succulent` (
  `m_shelf_id` int(11) NOT NULL,
  `m_succulent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `shelf_has_succulent`
--

INSERT INTO `shelf_has_succulent` (`m_shelf_id`, `m_succulent_id`) VALUES
(6, 2);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `m_diary`
--
ALTER TABLE `m_diary`
  ADD PRIMARY KEY (`diary_id`,`m_succulent_id`),
  ADD KEY `fk_m_diary_m_succulent1_idx` (`m_succulent_id`);

--
-- テーブルのインデックス `m_shelf`
--
ALTER TABLE `m_shelf`
  ADD PRIMARY KEY (`m_shelf_id`);

--
-- テーブルのインデックス `m_succulent`
--
ALTER TABLE `m_succulent`
  ADD PRIMARY KEY (`succulent_id`);

--
-- テーブルのインデックス `shelf_has_succulent`
--
ALTER TABLE `shelf_has_succulent`
  ADD PRIMARY KEY (`m_shelf_id`,`m_succulent_id`),
  ADD KEY `fk_m_shelf_has_m_succulent_m_succulent1_idx` (`m_succulent_id`),
  ADD KEY `fk_m_shelf_has_m_succulent_m_shelf1_idx` (`m_shelf_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `m_diary`
--
ALTER TABLE `m_diary`
  MODIFY `diary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- テーブルの AUTO_INCREMENT `m_shelf`
--
ALTER TABLE `m_shelf`
  MODIFY `m_shelf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- テーブルの AUTO_INCREMENT `m_succulent`
--
ALTER TABLE `m_succulent`
  MODIFY `succulent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- テーブルの AUTO_INCREMENT `shelf_has_succulent`
--
ALTER TABLE `shelf_has_succulent`
  MODIFY `m_shelf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `m_diary`
--
ALTER TABLE `m_diary`
  ADD CONSTRAINT `fk_m_diary_m_succulent1` FOREIGN KEY (`m_succulent_id`) REFERENCES `m_succulent` (`succulent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `shelf_has_succulent`
--
ALTER TABLE `shelf_has_succulent`
  ADD CONSTRAINT `fk_m_shelf_has_m_succulent_m_shelf1` FOREIGN KEY (`m_shelf_id`) REFERENCES `m_shelf` (`m_shelf_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_m_shelf_has_m_succulent_m_succulent1` FOREIGN KEY (`m_succulent_id`) REFERENCES `m_succulent` (`succulent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
