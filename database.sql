-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 10 mai 2021 à 15:00
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecf_p1_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(190) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `name`, `description`) VALUES
(1, 'Voltsillam', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(2, 'Bitchip', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.'),
(3, 'Tresom', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(4, 'Gembucket', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
(5, 'Mat Lam Tam', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
(6, 'Asoka', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
(7, 'Tempsoft', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
(8, 'Zontrax', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
(9, 'Konklab', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.'),
(10, 'Regrant', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),
(11, 'Tresom', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),
(12, 'Fintone', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(13, 'Span', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
(14, 'Lotlux', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
(15, 'Matsoft', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.'),
(16, 'Cookley', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\r\n\r\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(17, 'Flexidy', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\r\n\r\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.'),
(18, 'Bytecard', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
(19, 'Stronghold', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(20, 'Viva', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.'),
(21, 'Hedy Laproute', 'test'),
(32, 'Hedy Laproute2', 'test'),
(36, 'test', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `project_user`
--

CREATE TABLE `project_user` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `school_year`
--

CREATE TABLE `school_year` (
  `id` int(11) NOT NULL,
  `name` varchar(190) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `school_year`
--

INSERT INTO `school_year` (`id`, `name`, `date_start`, `date_end`) VALUES
(1, 'Hedy Lamarr', '2021-01-12 04:42:57', '2021-02-28 06:51:16'),
(2, 'Kathleen Booth', '2021-01-06 03:16:59', '2020-08-26 09:26:13'),
(3, 'Aaron Swartz', '2020-08-09 13:56:35', '2021-04-21 08:08:04');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `roles` text NOT NULL,
  `password` varchar(190) NOT NULL,
  `firstname` varchar(190) NOT NULL,
  `lastname` varchar(190) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `school_year_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`, `phone`, `school_year_id`) VALUES
(1, 'nbertomeu0@google.cn', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Nataniel', 'Bertomeu', '4544661069', 2),
(2, 'bhairs1@telegraph.co.uk', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Barty', 'Hairs', '7377276316', 2),
(3, 'lrackley2@slashdot.org', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Lucian', 'Rackley', '8565277754', 3),
(4, 'cfennick3@surveymonkey.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Cleve', 'Fennick', '6648690786', 2),
(5, 'lkuhne4@hhs.gov', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Levin', 'Kuhne', '9926012256', 1),
(6, 'tgaffey5@ucla.edu', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Tommie', 'Gaffey', '5104290879', 3),
(7, 'zpinxton6@angelfire.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Zed', 'Pinxton', '4925352786', 1),
(8, 'rgummer7@soup.io', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Ronald', 'Gummer', '7627002544', 2),
(9, 'pcordon8@hao123.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Purcell', 'Cordon', '4734186959', 2),
(10, 'dsturte9@cdbaby.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Dewitt', 'Sturte', '2216842846', 3),
(11, 'tivanchikova@newsvine.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Thor', 'Ivanchikov', '3449203771', 1),
(12, 'msorrellb@thetimes.co.uk', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Michale', 'Sorrell', '7981104571', 1),
(13, 'nlongfellowc@purevolume.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Niel', 'Longfellow', '3513796849', 2),
(14, 'whalvorsend@amazon.co.uk', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Worth', 'Halvorsen', '4435641390', 3),
(15, 'cbridsone@berkeley.edu', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Cly', 'Bridson', '1558231390', 3),
(16, 'coleninf@vinaora.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Curran', 'Olenin', '9892177377', 3),
(17, 'herwing@mtv.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Husein', 'Erwin', '1947683220', 1),
(18, 'speragoh@de.vu', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Shawn', 'Perago', '8329062079', 3),
(19, 'acosgrovei@princeton.edu', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Albrecht', 'Cosgrove', '6832423757', 1),
(20, 'bgametj@seattletimes.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Boigie', 'Gamet', '6184751059', 2),
(21, 'vrentenbeckk@sfgate.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Vinnie', 'Rentenbeck', '2339488201', 3),
(22, 'tnorcockl@biblegateway.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Tadeas', 'Norcock', '2578061164', 1),
(23, 'byoslowitzm@biblegateway.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Brendon', 'Yoslowitz', '8285186051', 2),
(24, 'aryen@independent.co.uk', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Aldo', 'Rye', '8507846597', 2),
(25, 'klaidlero@house.gov', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Kevin', 'Laidler', '5853311196', 3),
(26, 'bpointonp@upenn.edu', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Broderic', 'Pointon', '9039040635', 1),
(27, 'nmosconq@ustream.tv', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Nikolas', 'Moscon', '7023216395', 1),
(28, 'sgladmanr@blogspot.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Sutherlan', 'Gladman', '5844655157', 2),
(29, 'amenis@amazon.co.jp', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Anderson', 'Meni', '3516381659', 3),
(30, 'asainsburybrownt@icq.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Abrahan', 'Sainsbury-Brown', '4329463808', 1),
(31, 'rbolleyu@mapquest.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Randi', 'Bolley', '4056377584', 3),
(32, 'tsutheringtonv@hc360.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Theodoric', 'Sutherington', '2886451813', 1),
(33, 'gkegleyw@state.gov', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Giuseppe', 'Kegley', '6203749137', 2),
(34, 'nvondrax@last.fm', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Nehemiah', 'Vondra', '6281706100', 2),
(35, 'scartmaily@icio.us', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Sammy', 'Cartmail', '1775203707', 1),
(36, 'hhardestyz@blogtalkradio.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Hurley', 'Hardesty', '1758732567', 3),
(37, 'njobling10@house.gov', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Nobe', 'Jobling', '9568447936', 2),
(38, 'rmaddigan11@comcast.net', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Rudolph', 'Maddigan', '5875574453', 2),
(39, 'ncowle12@moonfruit.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Natty', 'Cowle', '6536976808', 3),
(40, 'ifullegar13@sourceforge.net', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Ive', 'Fullegar', '8192062772', 1),
(41, 'rgammack14@census.gov', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Ralph', 'Gammack', '5948942327', 1),
(42, 'lshreeves15@amazon.de', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Louie', 'Shreeves', '1128193132', 2),
(43, 'tericsson16@blogs.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Torrin', 'Ericsson', '7812322869', 3),
(44, 'gouldred17@blog.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Greg', 'Ouldred', '1995535041', 1),
(45, 'hlapthorn18@t-online.de', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Hamnet', 'Lapthorn', '5768951169', 3),
(46, 'hsibly19@constantcontact.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Hewet', 'Sibly', '2801936771', 2),
(47, 'acardero1a@ocn.ne.jp', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Alard', 'Cardero', '8609179553', 3),
(48, 'iwandrich1b@google.fr', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Ingrim', 'Wandrich', '9448229466', 1),
(49, 'amarzele1c@netvibes.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Alon', 'Marzele', '8636659810', 1),
(50, 'tgrimbaldeston1d@reuters.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Tristam', 'Grimbaldeston', '4154913470', 1),
(51, 'blefever1e@woothemes.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Boyce', 'Lefever', '3315807933', 1),
(52, 'jstollsteiner1f@psu.edu', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Jayson', 'Stollsteiner', '5182467759', 1),
(53, 'firemonger1g@vimeo.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Farris', 'Iremonger', '3536301279', 3),
(54, 'cbrims1h@globo.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Cece', 'Brims', '4248904525', 2),
(55, 'lfaltin1i@nature.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Link', 'Faltin', '5055226040', 1),
(56, 'bkershaw1j@issuu.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Blayne', 'Kershaw', '5089395861', 1),
(57, 'wdreier1k@ibm.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Wadsworth', 'Dreier', '1053572878', 2),
(58, 'hwatsonbrown1l@stumbleupon.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Herculie', 'Watson-Brown', '2368395632', 1),
(59, 'amcgillreich1m@nature.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Alden', 'McGillreich', '5577218456', 3),
(60, 'baldcorn1n@ibm.com', 'ROLE_STUDENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Brannon', 'Aldcorn', '4072892162', 2),
(61, 'gwelbourn0@sogou.com', 'ROLE_TEACHER', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Georges', 'Welbourn', '8734646797', 1),
(62, 'bogrady1@squarespace.com', 'ROLE_TEACHER', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Berti', 'O\'Grady', '6138174774', 3),
(63, 'sstreather2@surveymonkey.com', 'ROLE_TEACHER', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Samuele', 'Streather', '5137673059', 3),
(64, 'comand3@php.net', 'ROLE_TEACHER', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Clarke', 'Omand', '5345830761', 2),
(65, 'crummin4@usda.gov', 'ROLE_TEACHER', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Claudian', 'Rummin', '3539200597', 2),
(66, 'nfiddian0@lulu.com', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Nickolai', 'Fiddian', '3434232544', 2),
(67, 'hcortes1@rambler.ru', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Harbert', 'Cortes', '1853322450', 2),
(68, 'hastley2@wunderground.com', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Haroun', 'Astley', '8502259221', 2),
(69, 'oridgewell3@who.int', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Orton', 'Ridgewell', '2934595980', 3),
(70, 'rkewish4@privacy.gov.au', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Reid', 'Kewish', '2513254188', 2),
(71, 'smcilvaney5@webmd.com', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Saleem', 'McIlvaney', '6738047715', 1),
(72, 'lsimone6@yelp.com', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Les', 'Simone', '5178000571', 1),
(73, 'jkilty7@slideshare.net', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Jody', 'Kilty', '8563401634', 3),
(74, 'fdriffill8@europa.eu', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Frans', 'Driffill', '8988950859', 2),
(75, 'bkaroly9@deliciousdays.com', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Brock', 'Karoly', '9337003403', 3),
(76, 'rfoota@princeton.edu', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Rutledge', 'Foot', '3093840521', 3),
(77, 'adellentyb@hexun.com', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Alex', 'Dellenty', '7979882714', 2),
(79, 'dnegrid@cocolog-nifty.com', 'ROLE_CLIENT', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Dallas', 'Negri', '5037016473', 3),
(80, 'foo.foo@example.com', 'ROLE_ADMIN', '$2y$10$/H2ChUxriH.0Q33g3EUEx.S2s4j/rGJH2G88jK9nCP60GbUW8mi5K', 'Foo', 'Foo', NULL, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project_user`
--
ALTER TABLE `project_user`
  ADD KEY `project_id` (`project_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`email`),
  ADD KEY `user` (`school_year_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `project_user_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `project_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user` FOREIGN KEY (`school_year_id`) REFERENCES `school_year` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
