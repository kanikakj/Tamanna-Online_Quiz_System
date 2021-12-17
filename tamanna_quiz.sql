-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 07:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tamanna quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1001, 'kanikakj07@gmail.com', 'kanika#@');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` int(100) NOT NULL,
  `ansid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
(1003, 34),
(1004, 41),
(1005, 52),
(1006, 63),
(1007, 72),
(1008, 81),
(1009, 94),
(1010, 102),
(1011, 112),
(1012, 124),
(1013, 132),
(1014, 141),
(1015, 153),
(1016, 161),
(1017, 174),
(1018, 183),
(1019, 191),
(1020, 202),
(1021, 211),
(1022, 221),
(1023, 234),
(1024, 244),
(1025, 252),
(1026, 263),
(1027, 273),
(1028, 281),
(1029, 294),
(1030, 302),
(1001, 11),
(1002, 23),
(1887, 1512980008),
(1888, 1512980012),
(1889, 1512980015),
(1890, 1512980020),
(1891, 1512980025),
(1892, 1512980028),
(1893, 1512980032),
(1894, 1512980037),
(1895, 1512980042),
(1896, 1512980043),
(1897, 1512980047),
(1898, 1512980054),
(1899, 1512980055),
(1900, 1512980062),
(1901, 1512980065),
(1902, 1512980068),
(1903, 1512980074),
(1904, 1512980075),
(1905, 1512980081),
(1906, 1512980084),
(1907, 1512980087),
(1908, 1512980094),
(1909, 1512980097),
(1910, 1512980102),
(1911, 1512980104),
(1912, 1512980107),
(1913, 1512980111),
(1914, 1512980118),
(1915, 1512980119),
(1916, 1512980124);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `eid` int(100) NOT NULL,
  `score` int(11) NOT NULL,
  `sten_score` int(100) NOT NULL,
  `level` int(11) NOT NULL,
  `right_answer_score` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `sten_score`, `level`, `right_answer_score`, `wrong`, `date`) VALUES
('shreya@gmail.com', 1, 11, 4, 30, 11, 19, '2021-09-26 09:10:39'),
('ak@gmail.com', 1, 23, 8, 30, 23, 7, '2021-09-28 05:17:22'),
('kanika@gmail.com', 1, 8, 3, 30, 8, 22, '2021-09-26 09:20:34'),
('ak@gmail.com', 113, 26, 9, 30, 26, 4, '2021-09-28 05:07:48'),
('xyz@gmail.com', 113, 2, 0, 2, 2, 0, '2021-09-29 06:21:53'),
('supraja@gmail.com', 113, 10, 1, 30, 10, 20, '2021-09-29 06:32:36'),
('sia07@gmail.com', 113, 7, 1, 30, 7, 23, '2021-09-29 06:54:12'),
('k@gmail.com', 113, 3, 10, 30, 3, 27, '2021-09-30 04:25:45'),
('k@gmail.com', 1, 0, 0, 1, 0, 1, '2021-09-30 06:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` int(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
(1001, 'Treatment', 11),
(1001, 'Rejection', 12),
(1001, 'Prevention', 13),
(1001, 'Protection', 14),
(1002, 'Warmth', 21),
(1002, 'Depth', 22),
(1002, 'Strength', 23),
(1002, 'Boldness', 24),
(1003, 'Helpful', 31),
(1003, 'Kind', 32),
(1003, 'Diligent', 33),
(1003, 'Careful', 34),
(1004, 'Awkward', 41),
(1004, 'Different', 42),
(1004, 'Varied', 43),
(1004, 'Arrogant', 44),
(1005, 'Grandfather', 51),
(1005, 'Forefather', 52),
(1005, 'Elderly', 53),
(1005, 'Antique', 54),
(1006, 'Dangerous', 61),
(1006, 'Simple', 62),
(1006, 'Severe', 63),
(1006, 'Deadly', 64),
(1007, 'Discuss', 71),
(1007, 'Convince', 72),
(1007, 'Debate', 73),
(1007, 'Converse', 74),
(1008, 'Wealth', 81),
(1008, 'Health', 82),
(1008, 'Wisdom', 83),
(1008, 'Comfort', 84),
(1009, 'Combine', 91),
(1009, 'Erode', 92),
(1009, 'Suspend', 93),
(1009, 'Pollute', 94),
(1010, 'Dependable', 101),
(1010, 'Answerable', 102),
(1010, 'Sincere', 103),
(1010, 'Dutiful', 104),
(1011, 'Illeterate', 111),
(1011, 'Illiterate', 112),
(1011, 'Iliterate', 113),
(1011, 'Illitrate', 114),
(1012, 'Procede', 121),
(1012, 'Proceede', 122),
(1012, 'Procead', 123),
(1012, 'Proceed', 124),
(1013, 'Sanitasion', 131),
(1013, 'Sanitation', 132),
(1013, 'Sanitetion', 133),
(1013, 'Sanetation', 134),
(1014, 'skillful', 141),
(1014, 'skillfull', 142),
(1014, 'skilful', 143),
(1014, 'skilfull', 144),
(1015, 'occasin', 151),
(1015, 'ocassin', 152),
(1015, 'occasion', 153),
(1015, 'ocassion', 154),
(1016, 'argument', 161),
(1016, 'arguement', 162),
(1016, 'arguemint', 163),
(1016, 'arguiment', 164),
(1017, 'existance', 171),
(1017, 'existense', 172),
(1017, 'existanse', 173),
(1017, 'existence', 174),
(1018, 'transsnision', 181),
(1018, 'transmisson', 182),
(1018, 'transmission', 183),
(1018, 'transmision', 184),
(1019, 'privilege', 191),
(1019, 'privlege', 192),
(1019, 'privelege', 193),
(1019, 'previlge', 194),
(1020, 'vacination', 201),
(1020, 'vaccination', 202),
(1020, 'vaxination', 203),
(1020, 'vaccenation', 204),
(1021, 'To achieve two different things with a single action', 211),
(1021, 'To trap two birds with one stone', 212),
(1021, 'To throw the stone onto others', 213),
(1021, 'To have two opportunities', 214),
(1022, 'Work late into the night', 221),
(1022, 'Would never like to do something', 222),
(1022, 'Work hard to achieve targets', 223),
(1022, 'Finish two different things on time', 224),
(1023, 'To hide from someone', 231),
(1023, 'To try and remain distant', 232),
(1023, 'To avoid making an eye contact', 233),
(1023, 'To avoid speaking on the main topic of discussion', 234),
(1024, 'To make something new', 241),
(1024, 'To do carpenters work', 242),
(1024, 'To do exactly the right thing', 243),
(1024, 'To announce someones fixed views', 244),
(1025, 'To stop talking', 251),
(1025, 'To hold ones anger', 252),
(1025, 'To be aloof', 253),
(1025, 'To become angry', 254),
(1026, 'A person who has no rights', 261),
(1026, 'A person who has no duties', 262),
(1026, 'A person who has no manners', 263),
(1026, 'A person who has no energy', 264),
(1027, 'Don\'t judge something by its cover', 271),
(1027, 'Don\'t judge a book by its price', 272),
(1027, 'Don\'t judge something by its appearance', 273),
(1027, 'Don\'t judge something from outside', 274),
(1028, 'To worsen a negative situation', 281),
(1028, 'To insult a physically injured person', 282),
(1028, 'To laugh at someone', 283),
(1028, 'To taunt someone', 284),
(1029, 'It is better to lie than to say truth', 291),
(1029, 'Honestly is equivalent to truth', 292),
(1029, 'Honesty is equal to making a policy', 293),
(1029, 'It is better to tell the truth than lie', 294),
(1030, 'Take advantage of yourself', 301),
(1030, 'Take advantage of the opportunity', 302),
(1030, 'Take advantage of the sun', 303),
(1030, 'Take advantage of the hay', 304),
(1887, ' Globe', 1512980007),
(1887, 'Atlas', 1512980008),
(1887, 'Geography', 1512980009),
(1887, 'Location', 1512980010),
(1888, 'Wood', 1512980011),
(1888, 'Rack', 1512980012),
(1888, 'Shelf', 1512980013),
(1888, ' Sack', 1512980014),
(1889, 'Potter', 1512980015),
(1889, 'Sculptor', 1512980016),
(1889, 'Architect', 1512980017),
(1889, 'Mason', 1512980018),
(1890, 'Sentence', 1512980019),
(1890, 'Language', 1512980020),
(1890, 'Education', 1512980021),
(1890, 'Meaning', 1512980022),
(1891, 'Coward', 1512980023),
(1891, ' Indifferent', 1512980024),
(1891, 'Hesitant', 1512980025),
(1891, 'Pessimistic', 1512980026),
(1892, 'Present', 1512980027),
(1892, 'Past', 1512980028),
(1892, 'Mistake', 1512980029),
(1892, 'Apology', 1512980030),
(1893, 'Journey', 1512980031),
(1893, 'Trial', 1512980032),
(1893, 'Election', 1512980033),
(1893, 'Royalty', 1512980034),
(1894, 'Size', 1512980035),
(1894, 'Surface', 1512980036),
(1894, 'Worth', 1512980037),
(1894, 'Volume', 1512980038),
(1895, 'Hive', 1512980039),
(1895, 'Field', 1512980040),
(1895, 'Form', 1512980041),
(1895, 'Nest', 1512980042),
(1896, 'Harbour', 1512980043),
(1896, 'Sail', 1512980044),
(1896, 'Mast', 1512980045),
(1896, 'Anchor', 1512980046),
(1897, 'Page', 1512980047),
(1897, 'Word', 1512980048),
(1897, 'Knowledge', 1512980049),
(1897, 'Letter', 1512980050),
(1898, 'Punishment', 1512980051),
(1898, 'Scold', 1512980052),
(1898, 'Complaint', 1512980053),
(1898, 'Regret', 1512980054),
(1899, 'Iron', 1512980055),
(1899, 'Cotton', 1512980056),
(1899, 'Plastic', 1512980057),
(1899, 'Pearl', 1512980058),
(1900, 'Earthquake', 1512980059),
(1900, 'Storm', 1512980060),
(1900, 'Drizzle', 1512980061),
(1900, 'Flood', 1512980062),
(1901, 'Road', 1512980063),
(1901, 'Passage', 1512980064),
(1901, 'Mountain', 1512980065),
(1901, 'Travel', 1512980066),
(1902, 'Road ---- Drink', 1512980067),
(1902, 'Road ---- Boat', 1512980068),
(1902, 'Tyre ---- Boat', 1512980069),
(1902, 'Driver ---- Sailor', 1512980070),
(1903, 'Court ---- Teacher', 1512980071),
(1903, 'Law ---- Education', 1512980072),
(1903, 'Law ---- Class', 1512980073),
(1903, 'Court ---- Education', 1512980074),
(1904, 'President ---- State', 1512980075),
(1904, 'Flag ---- Nation', 1512980076),
(1904, 'President ---- District', 1512980077),
(1904, 'Minister ---- State', 1512980078),
(1905, 'Movement ---- Grass', 1512980079),
(1905, 'Air ---- Cut', 1512980080),
(1905, 'Spokes ---- Fan', 1512980081),
(1905, 'Circle ---- Shave', 1512980082),
(1906, 'Weather ---- Fire', 1512980083),
(1906, 'Thunder ---- Fire', 1512980084),
(1906, 'Danger ---- Cooking', 1512980085),
(1906, 'Thunder ---- Cooking', 1512980086),
(1907, 'Glove ---- Feet', 1512980087),
(1907, 'Pencil ---- Feet', 1512980088),
(1907, 'Glove ---- Shoe', 1512980089),
(1907, 'Ring ---- Toes', 1512980090),
(1908, 'Snake ---- Quack', 1512980091),
(1908, 'Sparrow ---- Chatter', 1512980092),
(1908, 'Frog ---- Quack', 1512980093),
(1908, 'Sparrow ---- Quack', 1512980094),
(1909, 'Cub ---- Deer', 1512980095),
(1909, 'Kid ---- Deer', 1512980096),
(1909, 'Cub ---- Sheep', 1512980097),
(1909, 'Kid ---- Sheep', 1512980098),
(1910, 'Fish ---- Earth', 1512980099),
(1910, 'Whale ---- Desert', 1512980100),
(1910, 'Fish ---- Land', 1512980101),
(1910, 'Whale ---- Land', 1512980102),
(1911, 'Border ---- Colour', 1512980103),
(1911, 'Border ---- Picture', 1512980104),
(1911, 'Capital ---- Picture', 1512980105),
(1911, 'Capital ---- Colour', 1512980106),
(1912, 'Carpenter ---- Cloth', 1512980107),
(1912, 'Plumber ---- Sewing', 1512980108),
(1912, 'Table ---- Cloth', 1512980109),
(1912, 'Carpenter ---- Sewing', 1512980110),
(1913, 'Horse ---- Shed', 1512980111),
(1913, 'Cow ---- House', 1512980112),
(1913, 'Cow ---- Kennel', 1512980113),
(1913, 'Horse ---- Kennel', 1512980114),
(1914, 'Bold ---- Loud', 1512980115),
(1914, 'Bold ---- Noise', 1512980116),
(1914, 'Thin ---- Noise', 1512980117),
(1914, 'Thin ---- Loud', 1512980118),
(1915, 'Meteorology ---- Heart', 1512980119),
(1915, 'Radiology ---- Teeth', 1512980120),
(1915, 'Meteorology ---- Eyes', 1512980121),
(1915, 'Radiology ---- Skin', 1512980122),
(1916, 'Glass ---- Elastic', 1512980123),
(1916, 'Sponge ---- Elastic', 1512980124),
(1916, 'Sponge ---- Solid', 1512980125),
(1916, 'Glass ---- Solid', 1512980126);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` int(100) NOT NULL,
  `qid` int(100) NOT NULL,
  `qns` text CHARACTER SET utf8 NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(1, 1001, 'REMEDY', 4, 1),
(1, 1002, 'STAMINA', 4, 2),
(1, 1003, 'CAUTIONS', 4, 3),
(1, 1004, 'CLUMSY', 4, 4),
(1, 1005, 'ANCESTOR', 4, 5),
(1, 1006, 'FATAL', 4, 6),
(1, 1007, 'PERSUADE', 4, 7),
(1, 1008, 'PROSPERITY', 4, 8),
(1, 1009, 'CONTAMINATE', 4, 9),
(1, 1010, 'Accountable', 4, 10),
(1, 1011, 'Find Correct Spelling:', 4, 11),
(1, 1012, 'Find Correct Spelling:', 4, 12),
(1, 1013, 'Find Correct Spelling:', 4, 13),
(1, 1014, 'Find Correct Spelling:', 4, 14),
(1, 1015, 'Find Correct Spelling:', 4, 15),
(1, 1016, 'Find Correct Spelling:', 4, 16),
(1, 1017, 'Find Correct Spelling:', 4, 17),
(1, 1018, 'Find Correct Spelling:', 4, 18),
(1, 1019, 'Find Correct Spelling:', 4, 19),
(1, 1020, 'Find Correct Spelling:', 4, 20),
(1, 1021, 'Kill two birds with one stone', 4, 21),
(1, 1022, 'Burn the midnight oil', 4, 22),
(1, 1023, 'Beat around the bush', 4, 23),
(1, 1024, 'Hit the nail on the head', 4, 24),
(1, 1025, 'To keep ones temper', 4, 25),
(1, 1026, 'Not a spark of decency', 4, 26),
(1, 1027, 'Don\'t judge a book by its cover', 4, 27),
(1, 1028, 'Add insult to injury', 4, 28),
(1, 1029, 'Honesty is the best policy', 4, 29),
(1, 1030, 'Make hay while the sun shines', 4, 30),
(113, 1887, 'Word is to Dictionary as Map is to ___', 4, 1),
(113, 1888, 'Thread is to Needle as Book is to___', 4, 2),
(113, 1889, 'Wood is to Carpenter as Clay is to ___', 4, 3),
(113, 1890, 'Skeleton is to Body as Grammar is to ___', 4, 4),
(113, 1891, 'Flexible is to Rigid as Confident is to ___', 4, 5),
(113, 1892, 'Forecast is to Future as Regret is to ___', 4, 6),
(113, 1893, 'Contestant is to Competition as Witness is to ___', 4, 7),
(113, 1894, 'Innumerable is to Quantity as Invaluable is to ___', 4, 8),
(113, 1895, 'Ice is to Igloo as Straw is to ___', 4, 9),
(113, 1896, 'Train is to Station as Ship is to ___', 4, 10),
(113, 1897, 'Comb is to Teeth as Book is to ___', 4, 11),
(113, 1898, 'Appreciation is to Reward as Repentence is to ___', 4, 12),
(113, 1899, 'Insulator is to Wood as Coductor is to ___', 4, 13),
(113, 1900, 'Breeze is to Cyclone as Rain is to ___', 4, 14),
(113, 1901, 'Bridge is to River as Tunnel is to ___', 4, 15),
(113, 1902, '___ is to Car as Water is to ___', 4, 16),
(113, 1903, '___ is to Justice as School is to ___', 4, 17),
(113, 1904, '___ is to Country as Governor is to ___', 4, 18),
(113, 1905, '___ is to Wheel as Blade is to ___', 4, 19),
(113, 1906, ' ___ is to Storm as Smoke is to ___', 4, 20),
(113, 1907, ' ___ is to Hand as Sock is to ___', 4, 21),
(113, 1908, '___ is to Chirp as Duck is to ___', 4, 22),
(113, 1909, '___ is to Lion as Lamb is to ___', 4, 23),
(113, 1910, ' ___ is to Ocean as Elephant is to ___', 4, 24),
(113, 1911, '___ is to Country as Frame is to ___', 4, 25),
(113, 1912, ' ___ is to Wood as Tailor is to ___', 4, 26),
(113, 1913, '___ is to Stable as Dog is to ___', 4, 27),
(113, 1914, ' ___ is to Thick as Silence is to ___', 4, 28),
(113, 1915, ' ___ is to Weather as Cardiology is to ___', 4, 29),
(113, 1916, ' ___ is to Porous as Rubber is to ___', 4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` int(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `right_answer_score` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `right_answer_score`, `wrong`, `total`, `date`) VALUES
(1, 'Language Aptitute', 1, 0, 30, '2021-09-23 10:51:50'),
(113, 'Verbal Reasoning', 1, 0, 30, '2021-09-27 11:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('shreya@gmail.com', 11, '2021-09-26 08:46:41'),
('ak@gmail.com', 49, '2021-09-28 05:07:48'),
('kanika@gmail.com', 8, '2021-09-26 09:20:34'),
('supraja@gmail.com', 12, '2021-09-29 06:32:36'),
('sia07@gmail.com', 10, '2021-09-29 06:54:12'),
('k@gmail.com', -2, '2021-09-30 04:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `school_name`, `email`, `password`) VALUES
('akaash', 'DTU', 'ak@gmail.com', 'ak'),
('akanksha', 'igdtuw', 'akanksha@gmail.com', 'Akanksha'),
('a', 'igdtuw', 'k@gmail.com', 'k'),
('kanika', 'SSSVV', 'kanika@gmail.com', 'Kanika'),
('shreya', 'KV', 'shreya@gmail.com', 'Shreya'),
('shweta', 'Amity ', 'shweta@gmail.com', 'Shweta'),
('sia07', 'igdtuw', 'sia07@gmail.com', 'sia07'),
('Supraja', 'igdtuw', 'supraja@gmail.com', 'supraja'),
('xyz', 'igdtuw', 'xyz@gmail.com', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD KEY `qid_ques` (`qid`),
  ADD KEY `ansid_options` (`ansid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD KEY `eid_quiz` (`eid`),
  ADD KEY `email_user` (`email`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`optionid`),
  ADD KEY `ques_qid` (`qid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `quiz_eid` (`eid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD KEY `user_email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `optionid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1512980151;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1923;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `eid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6151;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `ansid_options` FOREIGN KEY (`ansid`) REFERENCES `options` (`optionid`),
  ADD CONSTRAINT `qid_ques` FOREIGN KEY (`qid`) REFERENCES `questions` (`qid`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `eid_quiz` FOREIGN KEY (`eid`) REFERENCES `quiz` (`eid`),
  ADD CONSTRAINT `email_user` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `ques_qid` FOREIGN KEY (`qid`) REFERENCES `questions` (`qid`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `quiz_eid` FOREIGN KEY (`eid`) REFERENCES `quiz` (`eid`);

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `user_email` FOREIGN KEY (`email`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
