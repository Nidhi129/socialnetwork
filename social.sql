-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2019 at 06:36 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(5, 'Hi Nidhi, hope you\'re enjoying! ', 'sonal_shinde', 'nidhi_parihar', '2019-10-09 22:03:52', 'no', 127),
(6, 'Welcome! :)', 'namrata_jewargi', 'nidhi_parihar', '2019-10-09 22:04:34', 'no', 127),
(7, 'Oh yes, I was thinking that too. Lets do it', 'nidhi_parihar', 'namrata_jewargi', '2019-10-09 22:07:07', 'no', 128),
(8, 'Lets go for garba!', 'sonal_shinde', 'namrata_jewargi', '2019-10-09 22:09:14', 'no', 128),
(9, 'Yes! I\'m coming', 'nidhi_parihar', 'sonal_shinde', '2019-10-09 22:46:01', 'no', 138),
(10, 'Uniquess is what makes you stand out', 'nidhi_parihar', 'sonal_shinde', '2019-10-09 22:47:15', 'no', 137),
(11, 'Good for you :)', 'nidhi_parihar', 'sonal_shinde', '2019-10-09 22:47:37', 'no', 136);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(26, 'sonal_shinde', 127),
(27, 'namrata_jewargi', 127),
(28, 'nidhi_parihar', 128),
(29, 'nidhi_parihar', 137),
(30, 'nidhi_parihar', 136),
(31, 'nidhi_parihar', 135),
(32, 'nidhi_parihar', 138);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(127, 'Heyy guys, this is my first post!', 'nidhi_parihar', 'none', '2019-10-09 22:02:13', 'no', 'no', 2),
(128, 'Hey Nidhi, Lets catch up!', 'namrata_jewargi', 'nidhi_parihar', '2019-10-09 22:05:29', 'no', 'no', 1),
(129, 'FACT:  Madame Curie\'s notebooks are still radioactive. Researchers wishing to study them must sign a waiver in order to do so', 'namrata_jewargi', 'none', '2019-10-09 22:30:22', 'no', 'no', 0),
(130, 'Leonardo da Vinci could write with one hand and draw with the other at the same time.\r\n', 'namrata_jewargi', 'none', '2019-10-09 22:31:03', 'no', 'no', 0),
(131, 'There are over 200 corpses on Mount Everest and they are used as way points for climbers.\r\n', 'namrata_jewargi', 'none', '2019-10-09 22:32:31', 'no', 'no', 0),
(132, 'Has anybody watched Harry Potter series?', 'namrata_jewargi', 'none', '2019-10-09 22:34:17', 'no', 'no', 0),
(133, 'If anyone interested in web development internship, ping me!', 'nidhi_parihar', 'none', '2019-10-09 22:36:23', 'no', 'no', 0),
(134, 'LinkdIn is the best networking site for building contacts\r\n ', 'nidhi_parihar', 'none', '2019-10-09 22:38:21', 'no', 'no', 0),
(135, 'â€œBe yourself; everyone else is already taken.â€\r\n', 'sonal_shinde', 'none', '2019-10-09 22:40:17', 'no', 'no', 1),
(136, 'Nothing makes me so happy as to observe nature and to paint what I see.', 'sonal_shinde', 'none', '2019-10-09 22:40:37', 'no', 'no', 1),
(137, 'The greatness of art is not to find what is common but what is unique.', 'sonal_shinde', 'none', '2019-10-09 22:42:12', 'no', 'no', 1),
(138, 'Are you coming to college tomorrow?', 'sonal_shinde', 'nidhi_parihar', '2019-10-09 22:45:29', 'no', 'no', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(10, 'Nidhi', 'Parihar', 'nidhi_parihar', 'Nidhiparihar@gmail.com', '64605c59ab62dbcd925af40d7de11276', '2019-10-04', 'assets/images/profile_pics/nidhi.jpg', 3, 2, 'no', ',namrata_jewargi,sonal_shinde,'),
(11, 'Sonal', 'Shinde', 'sonal_shinde', 'Sonalshinde@gmail.com', '2e4c54a60ae5156c6082797a6816e067', '2019-10-04', 'assets/images/profile_pics/sonal.jpg', 4, 4, 'no', ',nidhi_parihar,namrata_jewargi,'),
(12, 'Namrata', 'Jewargi', 'namrata_jewargi', 'Namratajewargi@gmail.com', '5bda88ef3739b6d721de7cad617640a6', '2019-10-04', 'assets/images/profile_pics/namrata.jpg', 5, 1, 'no', ',sonal_shinde,nidhi_parihar,sonal_shinde,'),
(13, 'Shweta', 'Parihar', 'shweta_parihar', 'Shwetaparihar@gmail.com', '4207e1e6e3809688a8b9ed1b2c1b7faa', '2019-10-04', 'assets/images/profile_pics/shweta.jpg', 0, 0, 'no', ','),
(14, 'Jhanavi', 'Chadha', 'jhanavi_chadha', 'Jhanavichadha@gmail.com', '6f05f0d4239e0ae5bb9bf50918ae4f0f', '2019-10-04', 'assets/images/profile_pics/jhanavi.jpg', 0, 0, 'no', ','),
(15, 'Priti', 'Chouhan', 'priti_chouhan', 'Pritichouhan@gmail.com', '03087548757591325c25a6161986b7f8', '2019-10-04', 'assets/images/profile_pics/priti.jpg', 0, 0, 'no', ','),
(16, 'Shruti', 'Mundargi', 'shruti_mundargi', 'Shrutimundargi@gmail.com', 'eab6930b3c87b22874b40a0e52fe1ca3', '2019-10-04', 'assets/images/profile_pics/shruti.jpg', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
