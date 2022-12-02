-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 08:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be17_cr6_bigeventsjunaid`
--
CREATE DATABASE IF NOT EXISTS `be17_cr6_bigeventsjunaid` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be17_cr6_bigeventsjunaid`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221202163715', '2022-04-08 22:43:01', 324);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `time`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `url`, `eventtype`) VALUES
(1, 'SURREAL! Imagining New Realities', '2022-12-02 10:00:00', 'From May 5 to October 16, 2022, the special exhibition SURREAL! Imagining New Realities at the Sigmund Freud Museum explores the tense relationship between psychoanalysis and surrealism.', 'https://events.wien.info/media/full/brauner_somnambule.jpg', 270, 'visit@museum.com', 678575, 'Berggasse 19, Vienna 1090', 'https://events.wien.info/en/14v9/surreal-imagining-new-realities/', 'Theatre'),
(2, 'SUNDAY FOOTBALL FRIENDLY VIENNA', '2022-12-04 18:00:00', 'We play Sunday Football (outdoor only) - 90 minutes (kick off 18:00, we meet at least 45 mins before for the warm up phase). A post Corona Football Matches most likely with 20+ players. If you would like to join please bring astro turf shoes (artificial g', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F260020869%2F185450883257%2F1%2Foriginal.20211014-091141?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C18%2C486%2C243&s=ee18176ebcb875cd2b651491a49c8f20', 340, 'wienstadt@football.com', 987654321, 'Polizei Sport Verein Wien', 'https://www.eventbrite.com/e/sunday-football-friendly-vienna-tickets-314300299657?aff=ebdssbcategorybrowse&keep_tld=1', 'Sport'),
(3, 'Avatar 2 - The Way of Water', '2022-12-15 20:00:00', 'Jake Sully and Ney\'tiri have formed a family and are doing everything to stay together. However, they must leave their home and explore the regions of Pandora. When an ancient threat resurfaces, Jake must fight a difficult war against the humans.', 'https://images.news18.com/ibnlive/uploads/2022/09/avatar-16631299953x2.jpg?impolicy=website&width=510&height=356', 80, 'avatar2@movie.com', 3523646, 'Artis Kino, 1010 Wien', 'https://www.cineplexx.at/film/avatar-2/', 'Movie'),
(4, 'English Stand up Comedy Night with Tamas Vamos', '2022-12-14 21:00:00', 'Tamas is a half Hungarian, half South - African all round great guy who first tried doing stand up comedy in 2014 in Vienna as a \"laugh\" but having years of experience in improvisation as well as acting in theaters and small movies,he quickly got addicted', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F368190049%2F197743367502%2F1%2Foriginal.20220404-185302?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C45%2C3840%2C1920&s=2236fc3deea1265647e05ac1cff5e84d', 70, 'standup@comedy.com', 235236347, 'Burgkino 17, Wien 1120', 'https://www.eventbrite.com/e/english-stand-up-comedy-night-with-tamas-vamos-tickets-433463118857?aff=ebdssbdestsearch', 'Theatre'),
(5, 'Sebastians Outdoor Training', '2022-02-05 06:00:00', 'Hi, I am Sebastian and I\'m a certified fitness and health trainer. Currently I am starting my own business and therefore I am offering a fun and effective outdoor training.  The focus is on sports to feel good and have fun together. I address your needs a', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F350417459%2F259908440096%2F1%2Foriginal.20220908-113750?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=3799669557fd8b8729c45013c547ae4e', 40, 'outdoor@track.com', 32523664, 'Meidling 40, Vienna 1120', 'https://www.eventbrite.com/e/sebastians-outdoor-training-wild-wednesday-tickets-411247451197?aff=ebdssbdestsearch&keep_tld=1', 'Sport'),
(6, 'Mozart and Strauss Concert', '2022-12-28 20:30:00', 'The Vienna Royal Orchestra presents the masterworks of renowned Austrian composers.  Accompanied by Viennese opera singers, the Vienna Royal Orchestra interprets this “most charming”music in one of the most magnificient buildings of the imperial era.', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F238672579%2F275165094296%2F1%2Foriginal.20190920-161412?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C99%2C2398%2C1199&s=05cc1f060386377ade3e0f83a039f874', 110, 'wienorchestra@wien.com', 462352363, 'Oper 1, Vienna 1010', 'https://www.eventbrite.com/e/mozart-and-strauss-concert-vienna-royal-orchestra-tickets-93518395037?aff=ebdssbdestsearch&keep_tld=1', 'Music'),
(7, 'BLACK ADAM', '2022-11-14 19:30:00', 'In ancient Kahndaq, Teth Adam was bestowed the almighty powers of the gods. After using these powers for vengeance, he was imprisoned, becoming Black Adam. Nearly 5,000 years have passed, and Black Adam has gone from man to myth to legend. Now free, his u', 'https://static-koimoi.akamaized.net/wp-content/new-galleries/2022/10/box-office-black-adam-stays-decent-on-friday-is-the-top-performing-film-amidst-competition-001.jpg', 85, 'kino@vienna.com', 355436437, 'Kinogasse 18, Wien 1140', 'https://www.cineplexx.at/film/black-adam/', 'Movie'),
(8, 'The Hunchback of Notre Dame', '2022-12-24 22:00:00', 'Austrian premiere of Disney\'s \"The Hunchback of Notre Dame\": The musical based on the world-famous Disney film started its run at the Ronacher on October 8, 2022. The story about Quasimodo and the beautiful Esmeralda touches audiences young and old. All D', 'https://i.ytimg.com/vi/UsWfKVJdNp0/maxresdefault.jpg', 85, 'musical@vienna.com', 2147483647, 'Seilerstaette 9, Vienna 1010', 'https://www.wien.info/en/music-stage-shows/musicals/the-hunchback-of-notre-dame-422738', 'Music');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
