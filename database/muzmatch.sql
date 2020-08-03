-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2020 at 01:14 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muzmatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'male'),
(2, 'female'),
(3, 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `interested_in_gender`
--

CREATE TABLE `interested_in_gender` (
  `id` int(11) NOT NULL,
  `user_account_id` int(11) NOT NULL,
  `gender_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interested_in_gender`
--

INSERT INTO `interested_in_gender` (`id`, `user_account_id`, `gender_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `gender_id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `latitude` decimal(11,7) NOT NULL,
  `longitude` decimal(11,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `email`, `password`, `name`, `gender_id`, `age`, `latitude`, `longitude`) VALUES
(1, 'darthvader@deathstar.com', '*M)X*qkFQ!Z5W7 F', 'Darth Vader', 1, 50, '51.5254760', '-0.0874700'),
(2, 'yoda@jedimaster.com', 'zds7J@-jrh(M~R;4', 'Yoda', 1, 90, '51.5146230', '-0.0969570'),
(3, 'chewbacca@copit.com', '4^3V6]`Fz-)*t6Sn', 'Chewbacca', 1, 30, '51.5046630', '-0.1141350'),
(4, 'hansolo@pilot.com', '7d Q6Vy_uWF,Y#n4', 'Han Solo', 1, 25, '51.5050440', '-0.1131160'),
(5, 'luke@jedimaster.com', 'pJ5Zuhf;RM4hMS-~', 'Luke Skywalker', 1, 20, '51.5075490', '-0.0878710'),
(6, 'leia@princess.com', '*k&amp;E^6u8g7Q56-Jr', 'Princess Leia', 2, 20, '51.5120630', '-0.0925700'),
(7, 'padme@senator.com', '*k&amp;E^6u8g7Q56-Jr', 'Padme Amidala', 2, 26, '51.5161830', '-0.1018720'),
(8, 'c3po@droid.com', 'CRLv~hX3&quot;L(ehvTx', 'C3-PO', 3, 99, '51.5458770', '-0.1029000'),
(9, 'jyn@rogue.com', 'Tjx&lt;R&amp;`!X5;_3^nx', 'Jyn Erso', 2, 25, '51.5188920', '-0.1114910'),
(10, 'mon@rogue.com', 'pY:Gd3mcCVft&amp;Hk-', 'Mon Mothma', 2, 50, '51.5177840', '-0.0864720');

-- --------------------------------------------------------

--
-- Table structure for table `user_match`
--

CREATE TABLE `user_match` (
  `id` int(11) NOT NULL,
  `user_account_id` int(11) NOT NULL,
  `user_referral_id` int(11) NOT NULL,
  `preference` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_match`
--

INSERT INTO `user_match` (`id`, `user_account_id`, `user_referral_id`, `preference`) VALUES
(1, 1, 6, 0),
(2, 1, 7, 1),
(3, 1, 8, 0),
(4, 1, 9, 0),
(5, 1, 10, 0),
(6, 2, 10, 1),
(7, 2, 9, 1),
(8, 2, 8, 1),
(9, 2, 7, 0),
(10, 2, 6, 1),
(11, 3, 6, 1),
(12, 3, 7, 1),
(13, 3, 8, 1),
(14, 3, 9, 1),
(15, 3, 10, 0),
(16, 4, 10, 0),
(17, 4, 9, 1),
(18, 4, 8, 0),
(19, 4, 7, 1),
(20, 4, 6, 1),
(21, 5, 6, 1),
(22, 5, 7, 1),
(23, 5, 8, 1),
(24, 5, 9, 1),
(25, 5, 10, 1),
(26, 6, 1, 0),
(27, 6, 2, 0),
(28, 6, 3, 1),
(29, 6, 4, 1),
(30, 6, 5, 1),
(31, 7, 5, 1),
(32, 7, 4, 1),
(33, 7, 3, 1),
(34, 7, 2, 0),
(35, 7, 1, 1),
(36, 9, 1, 0),
(37, 9, 2, 0),
(38, 9, 3, 1),
(39, 9, 4, 1),
(40, 9, 5, 1),
(41, 10, 5, 1),
(42, 10, 4, 1),
(43, 10, 3, 1),
(44, 10, 2, 1),
(45, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_photo`
--

CREATE TABLE `user_photo` (
  `id` int(11) NOT NULL,
  `user_account_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `url` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_photo`
--

INSERT INTO `user_photo` (`id`, `user_account_id`, `name`, `url`, `created`) VALUES
(1, 1, 'me in the death start', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:56:07'),
(2, 1, 'me as a kid', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:56:24'),
(3, 1, 'me in my space ship', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:56:39'),
(4, 2, 'young me', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:56:55'),
(5, 3, 'after haircut', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:57:12'),
(6, 3, 'me and Han', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:57:19'),
(7, 4, 'yeah! thats my ship', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:57:35'),
(8, 4, 'me and chewie', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:57:42'),
(9, 4, 'me and luke', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:57:48'),
(10, 5, 'me as a jedi', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:58:00'),
(11, 6, 'me with my bro', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:58:20'),
(12, 6, 'me shooting', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:58:26'),
(13, 6, 'me giving medals', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:58:35'),
(14, 6, 'me me me me', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:58:41'),
(15, 7, 'me in a speeder', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:58:59'),
(16, 7, 'me diying', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:59:04'),
(17, 8, 'me and the factory where i born', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:59:36'),
(18, 9, 'me and my dad', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:59:45'),
(19, 9, 'me shooting imperials', 'url-of-the-img-storage-in-aws.com', '2020-07-29 12:59:57'),
(20, 10, 'plans for the rebels', 'url-of-the-img-storage-in-aws.com', '2020-07-29 13:00:11'),
(21, 10, 'rebellion is build on hope', 'url-of-the-img-storage-in-aws.com', '2020-07-29 13:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `id` int(11) NOT NULL,
  `user_account_id` int(11) NOT NULL,
  `token` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_in_gender`
--
ALTER TABLE `interested_in_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_match`
--
ALTER TABLE `user_match`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_photo`
--
ALTER TABLE `user_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `interested_in_gender`
--
ALTER TABLE `interested_in_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_match`
--
ALTER TABLE `user_match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `user_photo`
--
ALTER TABLE `user_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user_session`
--
ALTER TABLE `user_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
