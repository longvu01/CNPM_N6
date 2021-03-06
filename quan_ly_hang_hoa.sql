-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2022 at 03:18 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quan_ly_hang_hoa`
--
CREATE DATABASE IF NOT EXISTS `quan_ly_hang_hoa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `quan_ly_hang_hoa`;

-- --------------------------------------------------------

--
-- Table structure for table `hang_hoa`
--

DROP TABLE IF EXISTS `hang_hoa`;
CREATE TABLE IF NOT EXISTS `hang_hoa` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_hang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_nhap` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `img_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong_da_ban` int(11) NOT NULL,
  `so_luong_ton` int(11) NOT NULL,
  `ma_nha_cung_cap` int(11) NOT NULL,
  `ma_loai_hang` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma`),
  KEY `ma_loai_hang` (`ma_loai_hang`)
) ENGINE=InnoDB AUTO_INCREMENT=760 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma`, `ten_hang`, `gia_nhap`, `gia_ban`, `img_link`, `so_luong_da_ban`, `so_luong_ton`, `ma_nha_cung_cap`, `ma_loai_hang`, `create_at`) VALUES
(2, 'Laptop', 500, 700, '', 2, 28, 1, 1, '2022-03-13 16:53:05'),
(3, 'Camera', 500000, 2000000, '', 2, 10, 3, 1, '2022-03-12 16:53:05'),
(4, 'Thịt lợn', 50000, 90000, '', 100, 1000, 2, 2, '2022-03-11 16:53:05'),
(5, 'Trứng', 500, 3500, '', 20, 50, 2, 2, '2022-03-14 16:53:05'),
(6, 'Rau sạch', 1000, 10000, '', 100, 50, 2, 2, '2022-03-14 16:53:05'),
(7, 'Cây lau nhà', 10000, 50000, '', 20, 30, 1, 3, '2022-03-10 16:53:05'),
(8, 'Chổi lúa', 10000, 50000, '', 20, 5, 1, 3, '2022-03-01 16:53:05'),
(9, 'Sọt rác', 5000, 15000, '', 5, 10, 1, 3, '2022-03-14 16:53:05'),
(10, 'Nồi cơm', 100000, 1000000, '', 10, 10, 3, 1, '2022-03-02 16:53:05'),
(524, 'Hàng hóa dioghjui 732', 732, 1098, '', 29, 559, 1, 1, '2022-02-02 00:00:00'),
(525, 'Hàng hóa weroiog 558', 558, 837, '', 502, 353, 1, 1, '2022-02-20 00:00:00'),
(526, 'Hàng hóa lpokp 516', 516, 774, '', 95, 200, 1, 1, '2022-02-14 00:00:00'),
(527, 'Hàng hóa gfhjjk 875', 875, 1313, '', 539, 565, 1, 1, '2022-02-03 00:00:00'),
(528, 'Hàng hóa fghfsdf 905', 905, 1358, '', 528, 807, 1, 1, '2022-02-28 00:00:00'),
(529, 'Hàng hóa gfhjjk 559', 559, 839, '', 473, 120, 1, 1, '2022-02-20 00:00:00'),
(530, 'Hàng hóa lpokp 868', 868, 1302, '', 288, 54, 1, 1, '2022-02-23 00:00:00'),
(531, 'Hàng hóa asdf 855', 855, 1283, '', 176, 829, 1, 1, '2022-02-15 00:00:00'),
(532, 'Hàng hóa ghjey 598', 598, 897, '', 341, 238, 1, 1, '2022-02-18 00:00:00'),
(533, 'Hàng hóa qwuefghi 583', 583, 875, '', 137, 488, 1, 1, '2022-03-17 00:00:00'),
(534, 'Hàng hóa fghfsdf 707', 707, 1061, '', 506, 20, 1, 1, '2022-03-17 00:00:00'),
(535, 'Hàng hóa qwefjiqwf 710', 710, 1065, '', 75, 386, 1, 1, '2022-02-27 00:00:00'),
(536, 'Hàng hóa fghdfghue 703', 703, 1055, '', 532, 305, 1, 1, '2022-02-19 00:00:00'),
(537, 'Hàng hóa gfhjjk 664', 664, 996, '', 522, 580, 1, 1, '2022-02-16 00:00:00'),
(538, 'Hàng hóa fghdfghue 995', 995, 1493, '', 678, 311, 1, 1, '2022-03-15 00:00:00'),
(539, 'Hàng hóa weroiog 917', 917, 1376, '', 726, 68, 1, 1, '2022-03-21 00:00:00'),
(540, 'Hàng hóa dfgj 903', 903, 1355, '', 577, 649, 1, 1, '2022-02-11 00:00:00'),
(541, 'Hàng hóa alsvnias 585', 585, 878, '', 297, 270, 1, 1, '2022-03-17 00:00:00'),
(542, 'Hàng hóa ghjey 760', 760, 1140, '', 255, 346, 1, 1, '2022-03-02 00:00:00'),
(543, 'Hàng hóa dfgj 982', 982, 1473, '', 471, 378, 1, 1, '2022-02-03 00:00:00'),
(544, 'Hàng hóa qwuefghi 554', 554, 831, '', 331, 550, 1, 1, '2022-02-10 00:00:00'),
(545, 'Hàng hóa qwefjiqwf 503', 503, 755, '', 350, 255, 1, 1, '2022-02-05 00:00:00'),
(546, 'Hàng hóa oikopm 848', 848, 1272, '', 213, 658, 1, 1, '2022-03-21 00:00:00'),
(547, 'Hàng hóa fghfsdf 613', 613, 920, '', 514, 94, 1, 1, '2022-03-12 00:00:00'),
(548, 'Hàng hóa qwuefghi 568', 568, 852, '', 468, 121, 1, 1, '2022-02-16 00:00:00'),
(549, 'Hàng hóa moqfnwf 774', 774, 1161, '', 342, 132, 1, 1, '2022-02-12 00:00:00'),
(550, 'Hàng hóa alsvnias 818', 818, 1227, '', 136, 284, 1, 1, '2022-02-15 00:00:00'),
(551, 'Hàng hóa dioghjui 678', 678, 1017, '', 115, 430, 1, 1, '2022-03-11 00:00:00'),
(552, 'Hàng hóa weroiog 708', 708, 1062, '', 470, 669, 1, 1, '2022-02-16 00:00:00'),
(553, 'Hàng hóa asdf 667', 667, 1001, '', 352, 371, 1, 1, '2022-03-10 00:00:00'),
(554, 'Hàng hóa fghdfghue 712', 712, 1068, '', 583, 549, 1, 1, '2022-03-18 00:00:00'),
(555, 'Hàng hóa gfhjjk 517', 517, 776, '', 252, 12, 1, 1, '2022-02-27 00:00:00'),
(556, 'Hàng hóa ghjey 731', 731, 1097, '', 351, 348, 1, 1, '2022-02-28 00:00:00'),
(557, 'Hàng hóa ghjey 853', 853, 1280, '', 327, 186, 1, 1, '2022-02-07 00:00:00'),
(558, 'Hàng hóa oikopm 882', 882, 1323, '', 618, 631, 1, 1, '2022-02-16 00:00:00'),
(559, 'Hàng hóa ghjey 504', 504, 756, '', 96, 443, 1, 1, '2022-02-01 00:00:00'),
(560, 'Hàng hóa dioghjui 660', 660, 990, '', 283, 260, 1, 1, '2022-03-02 00:00:00'),
(561, 'Hàng hóa moqfnwf 829', 829, 1244, '', 352, 531, 1, 1, '2022-02-03 00:00:00'),
(562, 'Hàng hóa asdf 742', 742, 1113, '', 689, 335, 1, 1, '2022-02-01 00:00:00'),
(563, 'Hàng hóa dioghjui 705', 705, 1058, '', 423, 489, 1, 1, '2022-02-22 00:00:00'),
(564, 'Hàng hóa qwefjiqwf 981', 981, 1472, '', 838, 411, 1, 1, '2022-02-22 00:00:00'),
(565, 'Hàng hóa qwuefghi 689', 689, 1034, '', 566, 650, 1, 1, '2022-03-19 00:00:00'),
(566, 'Hàng hóa weroiog 836', 836, 1254, '', 157, 834, 1, 1, '2022-02-12 00:00:00'),
(567, 'Hàng hóa oikopm 649', 649, 974, '', 186, 462, 1, 1, '2022-03-06 00:00:00'),
(568, 'Hàng hóa qwefjiqwf 625', 625, 938, '', 565, 43, 1, 1, '2022-02-20 00:00:00'),
(569, 'Hàng hóa qwefjiqwf 561', 561, 842, '', 315, 250, 1, 1, '2022-02-11 00:00:00'),
(570, 'Hàng hóa fghfsdf 515', 515, 773, '', 403, 155, 1, 1, '2022-02-17 00:00:00'),
(571, 'Hàng hóa moqfnwf 751', 751, 1127, '', 725, 394, 1, 1, '2022-03-07 00:00:00'),
(572, 'Hàng hóa qwefjiqwf 930', 930, 1395, '', 229, 815, 1, 1, '2022-03-04 00:00:00'),
(573, 'Hàng hóa qwefjiqwf 694', 694, 1041, '', 610, 310, 1, 1, '2022-03-10 00:00:00'),
(574, 'Hàng hóa weroiog 712', 712, 1068, '', 260, 215, 1, 1, '2022-03-05 00:00:00'),
(575, 'Hàng hóa alsvnias 757', 757, 1136, '', 85, 386, 1, 1, '2022-03-17 00:00:00'),
(576, 'Hàng hóa qwuefghi 976', 976, 1464, '', 297, 12, 1, 1, '2022-02-23 00:00:00'),
(577, 'Hàng hóa alsvnias 587', 587, 881, '', 350, 176, 1, 1, '2022-02-03 00:00:00'),
(578, 'Hàng hóa gfhjjk 651', 651, 977, '', 584, 575, 1, 1, '2022-02-19 00:00:00'),
(579, 'Hàng hóa moqfnwf 673', 673, 1010, '', 177, 466, 1, 1, '2022-03-11 00:00:00'),
(580, 'Hàng hóa ghjey 997', 997, 1496, '', 316, 559, 1, 1, '2022-03-11 00:00:00'),
(581, 'Hàng hóa alsvnias 773', 773, 1160, '', 182, 732, 1, 1, '2022-02-12 00:00:00'),
(582, 'Hàng hóa alsvnias 852', 852, 1278, '', 758, 798, 1, 1, '2022-03-05 00:00:00'),
(583, 'Hàng hóa asdf 834', 834, 1251, '', 427, 152, 1, 1, '2022-03-10 00:00:00'),
(584, 'Hàng hóa moqfnwf 962', 962, 1443, '', 362, 274, 1, 1, '2022-02-07 00:00:00'),
(585, 'Hàng hóa weroiog 811', 811, 1217, '', 396, 774, 1, 1, '2022-02-17 00:00:00'),
(586, 'Hàng hóa oikopm 580', 580, 870, '', 181, 42, 1, 1, '2022-03-07 00:00:00'),
(587, 'Hàng hóa alsvnias 869', 869, 1304, '', 285, 257, 1, 1, '2022-03-05 00:00:00'),
(588, 'Hàng hóa lpokp 637', 637, 956, '', 394, 407, 1, 1, '2022-03-15 00:00:00'),
(589, 'Hàng hóa moqfnwf 579', 579, 869, '', 97, 222, 1, 1, '2022-02-01 00:00:00'),
(590, 'Hàng hóa oikopm 789', 789, 1184, '', 399, 294, 1, 1, '2022-03-01 00:00:00'),
(591, 'Hàng hóa qwefjiqwf 825', 825, 1238, '', 453, 147, 1, 1, '2022-03-08 00:00:00'),
(592, 'Hàng hóa gfhjjk 607', 607, 911, '', 196, 534, 1, 1, '2022-03-07 00:00:00'),
(593, 'Hàng hóa moqfnwf 648', 648, 972, '', 51, 197, 1, 1, '2022-03-11 00:00:00'),
(594, 'Hàng hóa fghfsdf 736', 736, 1104, '', 636, 719, 1, 1, '2022-03-18 00:00:00'),
(595, 'Hàng hóa qwuefghi 929', 929, 1394, '', 117, 264, 1, 1, '2022-02-22 00:00:00'),
(596, 'Hàng hóa qwuefghi 860', 860, 1290, '', 188, 501, 1, 1, '2022-03-09 00:00:00'),
(597, 'Hàng hóa oikopm 918', 918, 1377, '', 112, 49, 1, 1, '2022-02-11 00:00:00'),
(598, 'Hàng hóa lpokp 656', 656, 984, '', 542, 552, 1, 1, '2022-03-04 00:00:00'),
(599, 'Hàng hóa ghjey 960', 960, 1440, '', 137, 40, 1, 1, '2022-03-05 00:00:00'),
(600, 'Hàng hóa ghjey 717', 717, 1076, '', 93, 360, 1, 1, '2022-03-03 00:00:00'),
(601, 'Hàng hóa fghdfghue 899', 899, 1349, '', 816, 235, 1, 1, '2022-02-26 00:00:00'),
(602, 'Hàng hóa oikopm 636', 636, 954, '', 429, 516, 1, 1, '2022-02-14 00:00:00'),
(603, 'Hàng hóa gfhjjk 964', 964, 1446, '', 943, 762, 1, 1, '2022-03-04 00:00:00'),
(604, 'Hàng hóa alsvnias 826', 826, 1239, '', 485, 115, 1, 1, '2022-02-22 00:00:00'),
(605, 'Hàng hóa dioghjui 783', 783, 1175, '', 152, 308, 1, 1, '2022-03-05 00:00:00'),
(606, 'Hàng hóa alsvnias 758', 758, 1137, '', 156, 697, 1, 1, '2022-03-13 00:00:00'),
(607, 'Hàng hóa moqfnwf 939', 939, 1409, '', 422, 105, 1, 1, '2022-03-16 00:00:00'),
(608, 'Hàng hóa asdf 641', 641, 962, '', 619, 111, 1, 1, '2022-02-20 00:00:00'),
(609, 'Hàng hóa alsvnias 930', 930, 1395, '', 560, 796, 1, 1, '2022-03-07 00:00:00'),
(610, 'Hàng hóa qwuefghi 924', 924, 1386, '', 856, 4, 1, 1, '2022-02-18 00:00:00'),
(611, 'Hàng hóa dioghjui 520', 520, 780, '', 299, 168, 1, 1, '2022-02-23 00:00:00'),
(612, 'Hàng hóa qwefjiqwf 988', 988, 1482, '', 831, 832, 1, 1, '2022-03-11 00:00:00'),
(613, 'Hàng hóa lpokp 923', 923, 1385, '', 674, 620, 1, 1, '2022-03-12 00:00:00'),
(614, 'Hàng hóa lpokp 526', 526, 789, '', 394, 383, 1, 1, '2022-03-15 00:00:00'),
(615, 'Hàng hóa dioghjui 772', 772, 1158, '', 56, 487, 1, 1, '2022-03-07 00:00:00'),
(616, 'Hàng hóa asdf 692', 692, 1038, '', 554, 341, 1, 1, '2022-03-13 00:00:00'),
(617, 'Hàng hóa fghdfghue 554', 554, 831, '', 388, 476, 1, 1, '2022-02-09 00:00:00'),
(618, 'Hàng hóa qwuefghi 645', 645, 968, '', 475, 331, 1, 1, '2022-02-15 00:00:00'),
(619, 'Hàng hóa fghfsdf 901', 901, 1352, '', 365, 800, 1, 1, '2022-02-24 00:00:00'),
(620, 'Hàng hóa qwuefghi 617', 617, 926, '', 321, 383, 1, 1, '2022-03-01 00:00:00'),
(621, 'Hàng hóa qwuefghi 830', 830, 1245, '', 131, 627, 1, 1, '2022-03-03 00:00:00'),
(622, 'Hàng hóa ghjey 623', 623, 935, '', 331, 410, 1, 1, '2022-03-07 00:00:00'),
(623, 'Hàng hóa fghfsdf 887', 887, 1331, '', 4, 325, 1, 1, '2022-03-18 00:00:00'),
(624, 'Hàng hóa qwuefghi 895', 895, 1343, '', 793, 27, 1, 1, '2022-02-06 00:00:00'),
(625, 'Hàng hóa fghfsdf 846', 846, 1269, '', 412, 623, 1, 1, '2022-03-15 00:00:00'),
(626, 'Hàng hóa fghdfghue 675', 675, 1013, '', 207, 377, 1, 1, '2022-02-11 00:00:00'),
(627, 'Hàng hóa oikopm 548', 548, 822, '', 69, 181, 1, 1, '2022-03-09 00:00:00'),
(628, 'Hàng hóa qwefjiqwf 918', 918, 1377, '', 808, 153, 1, 1, '2022-03-13 00:00:00'),
(629, 'Hàng hóa oikopm 564', 564, 846, '', 112, 15, 1, 1, '2022-03-03 00:00:00'),
(630, 'Hàng hóa fghdfghue 721', 721, 1082, '', 433, 698, 1, 1, '2022-03-07 00:00:00'),
(631, 'Hàng hóa moqfnwf 754', 754, 1131, '', 558, 19, 1, 1, '2022-02-12 00:00:00'),
(632, 'Hàng hóa qwuefghi 874', 874, 1311, '', 151, 313, 1, 1, '2022-02-19 00:00:00'),
(633, 'Hàng hóa fghdfghue 590', 590, 885, '', 459, 263, 1, 1, '2022-02-14 00:00:00'),
(634, 'Hàng hóa oikopm 748', 748, 1122, '', 382, 415, 1, 1, '2022-03-08 00:00:00'),
(635, 'Hàng hóa ghjey 911', 911, 1367, '', 748, 20, 1, 1, '2022-02-15 00:00:00'),
(636, 'Hàng hóa fghdfghue 524', 524, 786, '', 195, 330, 1, 1, '2022-03-10 00:00:00'),
(637, 'Hàng hóa oikopm 727', 727, 1091, '', 394, 508, 1, 1, '2022-03-09 00:00:00'),
(638, 'Hàng hóa dioghjui 664', 664, 996, '', 614, 146, 1, 1, '2022-03-18 00:00:00'),
(639, 'Hàng hóa oikopm 677', 677, 1016, '', 520, 671, 1, 1, '2022-02-05 00:00:00'),
(640, 'Hàng hóa weroiog 754', 754, 1131, '', 460, 557, 1, 1, '2022-03-01 00:00:00'),
(641, 'Hàng hóa dioghjui 630', 630, 945, '', 80, 227, 1, 1, '2022-03-04 00:00:00'),
(642, 'Hàng hóa lpokp 841', 841, 1262, '', 258, 436, 1, 1, '2022-02-20 00:00:00'),
(643, 'Hàng hóa fghdfghue 510', 510, 765, '', 482, 102, 1, 1, '2022-03-08 00:00:00'),
(644, 'Hàng hóa weroiog 520', 520, 780, '', 127, 437, 1, 1, '2022-03-11 00:00:00'),
(645, 'Hàng hóa fghfsdf 887', 887, 1331, '', 388, 755, 1, 1, '2022-02-19 00:00:00'),
(646, 'Hàng hóa alsvnias 938', 938, 1407, '', 631, 921, 1, 1, '2022-02-24 00:00:00'),
(647, 'Hàng hóa ghjey 555', 555, 833, '', 17, 384, 1, 1, '2022-02-21 00:00:00'),
(648, 'Hàng hóa fghfsdf 923', 923, 1385, '', 754, 705, 1, 1, '2022-03-16 00:00:00'),
(649, 'Hàng hóa moqfnwf 858', 858, 1287, '', 143, 189, 1, 1, '2022-02-12 00:00:00'),
(650, 'Hàng hóa fghdfghue 502', 502, 753, '', 470, 32, 1, 1, '2022-03-17 00:00:00'),
(651, 'Hàng hóa dioghjui 718', 718, 1077, '', 48, 703, 1, 1, '2022-03-19 00:00:00'),
(652, 'Hàng hóa dioghjui 998', 998, 1497, '', 742, 756, 1, 1, '2022-02-20 00:00:00'),
(653, 'Hàng hóa fghdfghue 596', 596, 894, '', 522, 271, 1, 1, '2022-02-08 00:00:00'),
(654, 'Hàng hóa asdf 699', 699, 1049, '', 490, 169, 1, 1, '2022-03-01 00:00:00'),
(655, 'Hàng hóa fghdfghue 724', 724, 1086, '', 199, 580, 1, 1, '2022-02-04 00:00:00'),
(656, 'Hàng hóa oikopm 751', 751, 1127, '', 236, 260, 1, 1, '2022-03-14 00:00:00'),
(657, 'Hàng hóa dfgj 507', 507, 761, '', 144, 244, 1, 1, '2022-03-17 00:00:00'),
(658, 'Hàng hóa dfgj 707', 707, 1061, '', 484, 329, 1, 1, '2022-02-04 00:00:00'),
(659, 'Hàng hóa fghdfghue 864', 864, 1296, '', 586, 570, 1, 1, '2022-02-19 00:00:00'),
(660, 'Hàng hóa moqfnwf 862', 862, 1293, '', 290, 693, 1, 1, '2022-02-14 00:00:00'),
(661, 'Hàng hóa fghfsdf 851', 851, 1277, '', 161, 596, 1, 1, '2022-02-17 00:00:00'),
(662, 'Hàng hóa qwefjiqwf 725', 725, 1088, '', 316, 614, 1, 1, '2022-02-23 00:00:00'),
(663, 'Hàng hóa asdf 563', 563, 845, '', 370, 135, 1, 1, '2022-03-08 00:00:00'),
(664, 'Hàng hóa ghjey 543', 543, 815, '', 6, 272, 1, 1, '2022-02-28 00:00:00'),
(665, 'Hàng hóa lpokp 871', 871, 1307, '', 37, 271, 1, 1, '2022-02-18 00:00:00'),
(666, 'Hàng hóa qwefjiqwf 701', 701, 1052, '', 383, 409, 1, 1, '2022-02-12 00:00:00'),
(667, 'Hàng hóa qwuefghi 523', 523, 785, '', 399, 386, 1, 1, '2022-03-13 00:00:00'),
(668, 'Hàng hóa lpokp 671', 671, 1007, '', 586, 176, 1, 1, '2022-02-12 00:00:00'),
(669, 'Hàng hóa lpokp 597', 597, 896, '', 518, 588, 1, 1, '2022-03-15 00:00:00'),
(670, 'Hàng hóa asdf 859', 859, 1289, '', 600, 230, 1, 1, '2022-03-19 00:00:00'),
(671, 'Hàng hóa dfgj 983', 983, 1475, '', 503, 851, 1, 1, '2022-02-15 00:00:00'),
(672, 'Hàng hóa alsvnias 895', 895, 1343, '', 295, 424, 1, 1, '2022-03-02 00:00:00'),
(673, 'Hàng hóa moqfnwf 944', 944, 1416, '', 858, 307, 1, 1, '2022-03-11 00:00:00'),
(674, 'Hàng hóa fghdfghue 926', 926, 1389, '', 609, 368, 1, 1, '2022-02-15 00:00:00'),
(675, 'Hàng hóa oikopm 583', 583, 875, '', 501, 50, 1, 1, '2022-02-22 00:00:00'),
(676, 'Hàng hóa oikopm 934', 934, 1401, '', 338, 831, 1, 1, '2022-03-15 00:00:00'),
(677, 'Hàng hóa fghdfghue 860', 860, 1290, '', 33, 225, 1, 1, '2022-03-18 00:00:00'),
(678, 'Hàng hóa fghfsdf 669', 669, 1004, '', 25, 54, 1, 1, '2022-03-03 00:00:00'),
(679, 'Hàng hóa qwuefghi 799', 799, 1199, '', 204, 456, 1, 1, '2022-03-01 00:00:00'),
(680, 'Hàng hóa lpokp 713', 713, 1070, '', 429, 343, 1, 1, '2022-03-06 00:00:00'),
(681, 'Hàng hóa fghfsdf 695', 695, 1043, '', 76, 343, 1, 1, '2022-02-20 00:00:00'),
(682, 'Hàng hóa fghdfghue 968', 968, 1452, '', 385, 706, 1, 1, '2022-03-03 00:00:00'),
(683, 'Hàng hóa gfhjjk 906', 906, 1359, '', 292, 856, 1, 1, '2022-02-13 00:00:00'),
(684, 'Hàng hóa qwuefghi 662', 662, 993, '', 149, 485, 1, 1, '2022-03-19 00:00:00'),
(685, 'Hàng hóa dioghjui 714', 714, 1071, '', 344, 332, 1, 1, '2022-02-05 00:00:00'),
(686, 'Hàng hóa moqfnwf 915', 915, 1373, '', 95, 110, 1, 1, '2022-02-06 00:00:00'),
(687, 'Hàng hóa asdf 947', 947, 1421, '', 610, 517, 1, 1, '2022-02-11 00:00:00'),
(688, 'Hàng hóa alsvnias 750', 750, 1125, '', 663, 203, 1, 1, '2022-02-26 00:00:00'),
(689, 'Hàng hóa fghfsdf 662', 662, 993, '', 257, 220, 1, 1, '2022-02-11 00:00:00'),
(690, 'Hàng hóa fghdfghue 758', 758, 1137, '', 14, 21, 1, 1, '2022-02-05 00:00:00'),
(691, 'Hàng hóa dioghjui 558', 558, 837, '', 321, 528, 1, 1, '2022-03-20 00:00:00'),
(692, 'Hàng hóa qwuefghi 978', 978, 1467, '', 114, 596, 1, 1, '2022-02-19 00:00:00'),
(693, 'Hàng hóa lpokp 523', 523, 785, '', 403, 466, 1, 1, '2022-03-15 00:00:00'),
(694, 'Hàng hóa gfhjjk 891', 891, 1337, '', 28, 445, 1, 1, '2022-03-09 00:00:00'),
(695, 'Hàng hóa asdf 911', 911, 1367, '', 229, 909, 1, 1, '2022-03-05 00:00:00'),
(696, 'Hàng hóa qwefjiqwf 820', 820, 1230, '', 740, 118, 1, 1, '2022-03-15 00:00:00'),
(697, 'Hàng hóa qwefjiqwf 798', 798, 1197, '', 597, 707, 1, 1, '2022-03-18 00:00:00'),
(698, 'Hàng hóa qwefjiqwf 873', 873, 1310, '', 635, 301, 1, 1, '2022-02-19 00:00:00'),
(699, 'Hàng hóa dioghjui 960', 960, 1440, '', 427, 798, 1, 1, '2022-02-08 00:00:00'),
(700, 'Hàng hóa qwefjiqwf 808', 808, 1212, '', 744, 648, 1, 1, '2022-03-21 00:00:00'),
(701, 'Hàng hóa dfgj 984', 984, 1476, '', 652, 703, 1, 1, '2022-02-22 00:00:00'),
(702, 'Hàng hóa qwuefghi 809', 809, 1214, '', 683, 584, 1, 1, '2022-02-26 00:00:00'),
(703, 'Hàng hóa fghfsdf 554', 554, 831, '', 505, 501, 1, 1, '2022-03-03 00:00:00'),
(704, 'Hàng hóa asdf 962', 962, 1443, '', 253, 520, 1, 1, '2022-02-25 00:00:00'),
(705, 'Hàng hóa qwefjiqwf 774', 774, 1161, '', 228, 180, 1, 1, '2022-02-10 00:00:00'),
(706, 'Hàng hóa fghfsdf 603', 603, 905, '', 268, 467, 1, 1, '2022-02-11 00:00:00'),
(707, 'Hàng hóa moqfnwf 948', 948, 1422, '', 143, 316, 1, 1, '2022-02-16 00:00:00'),
(708, 'Hàng hóa alsvnias 837', 837, 1256, '', 257, 500, 1, 1, '2022-03-16 00:00:00'),
(709, 'Hàng hóa gfhjjk 885', 885, 1328, '', 435, 474, 1, 1, '2022-03-10 00:00:00'),
(710, 'Hàng hóa weroiog 966', 966, 1449, '', 434, 474, 1, 1, '2022-03-20 00:00:00'),
(711, 'Hàng hóa dioghjui 714', 714, 1071, '', 410, 173, 1, 1, '2022-03-10 00:00:00'),
(712, 'Hàng hóa oikopm 651', 651, 977, '', 222, 431, 1, 1, '2022-02-22 00:00:00'),
(713, 'Hàng hóa alsvnias 622', 622, 933, '', 486, 508, 1, 1, '2022-02-25 00:00:00'),
(714, 'Hàng hóa fghdfghue 998', 998, 1497, '', 594, 232, 1, 1, '2022-03-11 00:00:00'),
(715, 'Hàng hóa moqfnwf 626', 626, 939, '', 394, 253, 1, 1, '2022-03-15 00:00:00'),
(716, 'Hàng hóa weroiog 822', 822, 1233, '', 819, 50, 1, 1, '2022-03-13 00:00:00'),
(717, 'Hàng hóa weroiog 857', 857, 1286, '', 52, 29, 1, 1, '2022-03-08 00:00:00'),
(718, 'Hàng hóa asdf 699', 699, 1049, '', 40, 133, 1, 1, '2022-03-14 00:00:00'),
(719, 'Hàng hóa lpokp 591', 591, 887, '', 199, 545, 1, 1, '2022-03-01 00:00:00'),
(720, 'Hàng hóa alsvnias 794', 794, 1191, '', 480, 722, 1, 1, '2022-03-07 00:00:00'),
(721, 'Hàng hóa alsvnias 513', 513, 770, '', 367, 482, 1, 1, '2022-03-20 00:00:00'),
(722, 'Hàng hóa ghjey 632', 632, 948, '', 260, 298, 1, 1, '2022-02-27 00:00:00'),
(723, 'Hàng hóa moqfnwf 928', 928, 1392, '', 822, 593, 1, 1, '2022-03-15 00:00:00'),
(724, 'Hàng hóa weroiog 515', 515, 773, '', 387, 194, 1, 1, '2022-03-06 00:00:00'),
(725, 'Hàng hóa ghjey 764', 764, 1146, '', 1, 473, 1, 1, '2022-03-10 00:00:00'),
(726, 'Hàng hóa qwuefghi 761', 761, 1142, '', 2, 94, 1, 1, '2022-03-17 00:00:00'),
(727, 'Hàng hóa asdf 871', 871, 1307, '', 585, 604, 1, 1, '2022-02-01 00:00:00'),
(728, 'Hàng hóa dfgj 742', 742, 1113, '', 151, 35, 1, 1, '2022-02-19 00:00:00'),
(729, 'Hàng hóa alsvnias 960', 960, 1440, '', 636, 615, 1, 1, '2022-02-14 00:00:00'),
(730, 'Hàng hóa oikopm 710', 710, 1065, '', 44, 647, 1, 1, '2022-02-25 00:00:00'),
(731, 'Hàng hóa qwefjiqwf 658', 658, 987, '', 375, 604, 1, 1, '2022-02-25 00:00:00'),
(732, 'Hàng hóa gfhjjk 801', 801, 1202, '', 612, 134, 1, 1, '2022-02-16 00:00:00'),
(733, 'Hàng hóa alsvnias 945', 945, 1418, '', 927, 99, 1, 1, '2022-02-21 00:00:00'),
(734, 'Hàng hóa oikopm 575', 575, 863, '', 410, 357, 1, 1, '2022-03-09 00:00:00'),
(735, 'Hàng hóa ghjey 505', 505, 758, '', 260, 408, 1, 1, '2022-02-20 00:00:00'),
(736, 'Hàng hóa lpokp 692', 692, 1038, '', 168, 353, 1, 1, '2022-02-11 00:00:00'),
(737, 'Hàng hóa fghdfghue 877', 877, 1316, '', 632, 598, 1, 1, '2022-02-17 00:00:00'),
(738, 'Hàng hóa asdf 905', 905, 1358, '', 233, 365, 1, 1, '2022-03-11 00:00:00'),
(739, 'Hàng hóa lpokp 544', 544, 816, '', 406, 124, 1, 1, '2022-02-27 00:00:00'),
(740, 'Hàng hóa lpokp 619', 619, 929, '', 180, 291, 1, 1, '2022-03-20 00:00:00'),
(741, 'Hàng hóa moqfnwf 644', 644, 966, '', 449, 629, 1, 1, '2022-02-21 00:00:00'),
(742, 'Hàng hóa gfhjjk 898', 898, 1347, '', 645, 374, 1, 1, '2022-02-28 00:00:00'),
(743, 'Hàng hóa alsvnias 892', 892, 1338, '', 36, 171, 1, 1, '2022-03-16 00:00:00'),
(744, 'Hàng hóa lpokp 678', 678, 1017, '', 534, 322, 1, 1, '2022-02-23 00:00:00'),
(745, 'Hàng hóa asdf 564', 564, 846, '', 200, 92, 1, 1, '2022-02-27 00:00:00'),
(746, 'Hàng hóa alsvnias 769', 769, 1154, '', 556, 322, 1, 1, '2022-02-24 00:00:00'),
(747, 'Hàng hóa asdf 605', 605, 908, '', 482, 15, 1, 1, '2022-03-19 00:00:00'),
(748, 'Hàng hóa alsvnias 612', 612, 918, '', 594, 393, 1, 1, '2022-03-09 00:00:00'),
(749, 'Hàng hóa qwuefghi 506', 506, 759, '', 131, 272, 1, 1, '2022-02-01 00:00:00'),
(750, 'Hàng hóa asdf 550', 550, 825, '', 148, 153, 1, 1, '2022-02-28 00:00:00'),
(751, 'Hàng hóa oikopm 831', 831, 1247, '', 707, 62, 1, 1, '2022-03-17 00:00:00'),
(752, 'Hàng hóa asdf 979', 979, 1469, '', 449, 838, 1, 1, '2022-03-04 00:00:00'),
(753, 'Hàng hóa dfgj 549', 549, 824, '', 69, 230, 1, 1, '2022-03-10 00:00:00'),
(754, 'Hàng hóa moqfnwf 922', 922, 1383, '', 238, 644, 1, 1, '2022-03-13 00:00:00'),
(755, 'Hàng hóa weroiog 816', 816, 1224, '', 791, 33, 1, 1, '2022-03-14 00:00:00'),
(756, 'Hàng hóa weroiog 545', 545, 818, '', 535, 310, 1, 1, '2022-03-17 00:00:00'),
(757, 'Hàng hóa asdf 876', 876, 1314, '', 406, 238, 1, 1, '2022-02-17 00:00:00'),
(758, 'Hàng hóa dioghjui 825', 825, 1238, '', 782, 106, 1, 1, '2022-03-21 00:00:00'),
(759, 'Hàng hóa weroiog 798', 798, 1197, '', 145, 707, 1, 1, '2022-03-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `loai_hang`
--

DROP TABLE IF EXISTS `loai_hang`;
CREATE TABLE IF NOT EXISTS `loai_hang` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai_hang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_hang`
--

INSERT INTO `loai_hang` (`ma`, `ten_loai_hang`) VALUES
(1, 'Điện tử'),
(2, 'Thực phẩm'),
(3, 'Gia dụng');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
CREATE TABLE IF NOT EXISTS `nhan_vien` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioi_tinh` bit(1) NOT NULL,
  `luong` int(11) DEFAULT NULL,
  `id_tai_khoan` int(11) NOT NULL,
  PRIMARY KEY (`ma`),
  UNIQUE KEY `email` (`email`,`sdt`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`ma`, `ho_ten`, `sdt`, `email`, `ngay_sinh`, `dia_chi`, `gioi_tinh`, `luong`, `id_tai_khoan`) VALUES
(4, 'Hoàng Tiến Trường', '0123912523', 'tientruong@gmail.com', '2004-01-01', 'Hà Nội', b'1', 1000, 0),
(5, 'Đặng Minh Tú', '0123471233', 'minhtu@gmail.com', '2001-12-12', 'Hà Nội', b'1', 1000, 0),
(6, 'Lê Long Vũ', '01239125231', 'vu@gmail.com', '2001-12-12', 'Hà Nội', b'1', 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nha_cung_cap`
--

DROP TABLE IF EXISTS `nha_cung_cap`;
CREATE TABLE IF NOT EXISTS `nha_cung_cap` (
  `ma` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nha_cung_cap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tri_kho` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`ma`, `ten_nha_cung_cap`, `sdt`, `email`, `dia_chi`, `vi_tri_kho`) VALUES
(1, 'Masan', 666888444, 'masan@gmail.com', 'TP.HCM', 'Củ Chi'),
(2, 'Winmart', 555666999, 'winmart@gmail.com', 'Hải Phòng', 'Cảng'),
(3, 'Phong Vũ', 231321253, 'phongvu@gmail.com', 'Hà Nội', 'Thái Hà');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
CREATE TABLE IF NOT EXISTS `tai_khoan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `user_name`, `password`, `quyen`) VALUES
(1, 'tung_dang', 'tung_dang', 1),
(2, 'giahao', 'giahao', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai_hang`) REFERENCES `loai_hang` (`ma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
