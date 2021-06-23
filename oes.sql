-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 03:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
 

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oes`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_users`
--

CREATE TABLE `a_users` (
  `username` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `email` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `password` varchar(20) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `a_users`
--

INSERT INTO `a_users` (`username`, `email`, `password`) VALUES
('a1', 's160947@rguktsklm.ac.in', 'admin'),
('a2', 's160577@rguktsklm.ac.in', 'admin'),
('a3', 's160022@rguktsklm.ac.in', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'AI'),
(2, 'MAD'),
(3, 'flat');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `ans1` varchar(80) NOT NULL,
  `ans2` varchar(80) NOT NULL,
  `ans3` varchar(80) NOT NULL,
  `ans4` varchar(80) NOT NULL,
  `ans` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `cat_id`) VALUES
(2, 'Artificial Intelligence is about_____.	', 'Playing a game on Computer', 'Making a machine Intelligent', 'Programming on Machine with your Own Intelligence', 'Putting your intelligence in Machine', 1, 1),
(3, 'Who is known as the -Father of AI&quot;?			', 'Fisher Ada', 'Alan Turing', 'John McCarthy', 'Allen Newell', 2, 1),
(4, 'Select the most appropriate situation for that a blind search can be used.		', 'Real-life situation', 'Small Search Space', 'Complex game', 'All of the above', 1, 1),
(5, 'How many sizes are supported by Android?	', 'Android supported all sizes', 'Android does not support all sizes', ' Android supports small,normal, large and extra-large sizes', 'Size is undefined in android', 2, 2),
(6, 'What is the use of content provider in android?		', 'To send the data from an application to another application', ' To store the data in a database', 'To share the data between applications', 'None of the above.', 2, 2),
(7, 'Android is -			', 'an operating system', 'a web browser', 'a web server', 'None of the above.', 0, 2),
(8, 'Under which of the following Android is licensed?			', 'OSS', 'Sourceforge', 'Apache/MIT', 'None of the above.', 2, 2),
(9, 'Hi			', 'a', 'b', 'c', 'd', 0, 1),
(10, '  what is FLAT?			', '                            haha                        ', '                                hehe                        ', '                            hahaha                        ', '                            hehehe  hihi                      ', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `st_users`
--

CREATE TABLE `st_users` (
  `id` varchar(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st_users`
--

INSERT INTO `st_users` (`id`, `email`, `password`) VALUES
('s160022', 's160022@rguktsklm.ac.in', 'student'),
('S160577', 's160577@rguktsklm.ac.in', 'hello'),
('S160947', 's160947@rguktsklm.ac.in', 'student'),
('S161322', 's161322@rguktsklm.ac.in', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `t_pending_requests`
--

CREATE TABLE `t_pending_requests` (
  `username` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `Email` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `Password` varchar(20) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Table structure for table `t_users`
--

CREATE TABLE `t_users` (
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_users`
--

INSERT INTO `t_users` (`username`, `email`, `password`) VALUES
('t1', 's160577@rguktsklm.ac.in', 'hello'),
('t2', 'sowmya123@gmail.com', 'harshi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_users`
--
ALTER TABLE `st_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
