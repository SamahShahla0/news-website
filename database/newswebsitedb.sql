-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 10:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newswebsitedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'local news'),
(2, 'global news'),
(3, 'sports'),
(4, 'science'),
(5, 'politics'),
(6, 'art');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `category`, `date`, `description`) VALUES
(1, 'US 2022 presidential elections', 5, '2022-09-01', 'The 2022 United States elections will be held on Tuesday, November 8, 2022. During this midterm election year, all 435 seats in the House of Representatives and 35 of the 100 seats in the Senate will be contested. Thirty-nine state and territorial gubernatorial and numerous other state and local elections will also be contested. This will be the first election affected by the redistricting that will follow the 2020 census.\r\nRepublicans are benefitting from incumbent Democratic president Joe Biden\'s low approval ratings.[6] His ratings have however increased after several legislative victories, increasing Democrats\' prospects.[9]\r\nAfter the U.S. Supreme Court\'s ruling in Dobbs v. Jackson Women\'s Health Organization that overturned Roe v. Wade in June, Democrats outperformed Biden\'s 2020 results in several House special elections. The ruling has made abortion more important for voters. Women who left the Democratic Party after the 2020 election are returning.[5][6] At least six states have an abortion-related ballot initiative, the most ever in a single year.[7]'),
(2, 'Wimbledon results', 3, '2022-07-10', 'Wimbledon 2022 has officially wrapped up. No. 1 seed and world No. 3 Novak Djokovic earned his seventh Wimbledon title after defeating Nick Kyrgios 4-6, 6-3, 6-4, 7-6 (7-3) on Sunday. On the women\'s side, No. 17 seed Elena Rybakina beat Ons Jabeur in the women\'s final on Saturday to win her first Grand Slam championship.\r\n\r\nSunday\'s result helped Djokovic extend his Wimbledon winning streak to 28 consecutive matches. He now has 21 major titles, which is just one trophy behind Rafael Nadal\'s record. Sunday was also his 32nd Grand Slam final and his eighth at the All England Club. Meanwhile, Kyrgios was competing in his first ever Grand Slam final. Although the 27-year-old lost, Kyrgios is still one of only five players with a winning record against Djokovic at 2-1. \r\n\r\nThe unseeded Kyrgios reached the final by taking a walkover after his opponent, Rafael Nadal, retired from the semifinal because of an abdominal injury. Djokovic advanced to the final by taking down No. 9 seed Cameron Norrie 2-6, 6-3, 6-2, 6-4, his second consecutive comeback win.\r\n\r\nRybakina\'s win made her the first woman representing Kazakhstan to win a major tournament. She was born in Russia -- and still lives in Moscow -- but switched her tennis representation to Kazakhstan in 2018 when the nation\'s tennis federation offered her more support than she found in her home country. Jabeur, meanwhile, was the first Arab woman and African-born player to reach a Grand Slam final. '),
(3, 'Qatar\'s WORLD CUP preparations', 3, '2022-05-10', 'The FIFA World Cup 2022™ in Qatar is the first to be hosted in the Middle East and the most geographically compact since the inaugural edition of the tournament in 1930. The FIFA World Cup 2022™ is unique in many respects, with the type of opportunities and challenges related to sustainability being no exception.\r\n\r\nThe FIFA World Cup™ is the biggest single-sport competition in the world. After a preliminary competition, the 32 qualified men’s national football teams compete to become world champions in a final competition staged during one month in a host country selected by FIFA.\r\n\r\nIt is anticipated that over one million spectators will attend the tournament’s 64 matches, and the competition will reach a global in-home television audience of over 3 billion people, with more than one billion fans tuning in to watch the final match. In addition to the matches, there are a host of other official competition-related events, including draws, team and referee seminars and workshops, opening and closing ceremonies, award ceremonies, cultural events, press conferences and launch events.'),
(4, 'A major breakthrough toward new treatments for type 1 and type 2 diabetes', 4, '2022-07-22', 'A world-first study by Monash University, in Melbourne, Australia has discovered a pathway to the regeneration of insulin in pancreatic stem cells, a major breakthrough toward new therapies to treat Type 1 and Type 2 diabetes.\r\n\r\nUsing the pancreas stem cells of a type 1 diabetic donor, researchers were able to effectively reactivate them to become insulin-expressing and functionally resemble beta-like cells through the use of a drug approved by the US Food and Drug Administration but not currently licensed for diabetes treatment.\r\n\r\nThough it requires further work, in principle the new approach would allow insulin-producing cells (beta-cells) that are destroyed in type 1 diabetics to be replaced with newborn insulin-generating cells.\r\n\r\nThe study, led by diabetes experts Professor Sam El-Osta, Dr Keith Al-Hasani and Dr Ishant Khurana, from the Monash Department of Diabetes, may lead to a potential treatment option for insulin-dependent diabetes which is diagnosed in seven Australian children every day resulting in a lifetime testing of blood glucose and daily insulin injections, to replace the insulin no longer produced by a damaged pancreas.\r\n\r\nAs the number of cases of diabetes worldwide approaches 500 million, researchers are scrambling for a limited pool of treatments with unclear effectiveness.'),
(5, 'Adele\'s one night only', 6, '2022-02-09', 'Adele One Night Only is a television special by English singer-songwriter Adele that aired on November 14, 2021, on CBS while being simulcast on Paramount+.\r\nThe special featured Adele performing three then-unheard songs from her fourth studio album, 30 (2021), as well as songs from her previous three albums 19 (2008), 21 (2011), and 25 (2015).\r\n\r\nThe performances are interspersed with an interview by American television host Oprah Winfrey.[2] Adele performed at Griffith Observatory in Los Angeles on October 24, 2021, and was presented by Winfrey, who was in attendance.\r\n\r\nGuests in the audience of the open-air concert included James Corden, Drake, Selena Gomez, Tyler Perry, Melissa McCarthy, Gayle King, Donald Glover, Nicole Richie, Seth Rogen, Gordon Ramsay, Molly Shannon, Ellen DeGeneres, Kris Jenner, Sarah Paulson, Holland Taylor, Aaron Paul, Jesse Tyler Ferguson, Tracee Ellis Ross, Gabrielle Union, Dwyane Wade, Lizzo, Ava DuVernay, Oprah Winfrey, Bradley Cooper and Leonardo DiCaprio.[4][5]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
