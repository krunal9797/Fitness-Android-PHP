-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 12, 2019 at 11:39 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$0fa42iph7cwd3ANpih0vQOcN2T.Rn9iukw1tRQmvmOGE9tkLfXcnu');

-- --------------------------------------------------------

--
-- Table structure for table `CalorieCounter`
--

CREATE TABLE `CalorieCounter` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calorie` int(11) NOT NULL,
  `weight` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CalorieCounter`
--

INSERT INTO `CalorieCounter` (`id`, `title`, `calorie`, `weight`) VALUES
(1, 'roti', 100, '100 grams'),
(2, 'mango', 200, '100 grams'),
(3, 'bread', 300, '100 grams'),
(4, 'pizza', 1000, '100 grams'),
(5, 'milk', 400, '100 grams'),
(6, 'gathiya', 500, '100 grams'),
(7, 'sev', 250, '100 grams');

-- --------------------------------------------------------

--
-- Table structure for table `dietplan`
--

CREATE TABLE `dietplan` (
  `id` int(11) NOT NULL,
  `meal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1-breakfast,2-snack,3-lunch,4-dinner',
  `food` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'food with quantity',
  `diet_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-standard,1-vegetarian'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dietplan`
--

INSERT INTO `dietplan` (`id`, `meal`, `food`, `diet_type`) VALUES
(1, '1', 'idli-1,dosa-1,sandwich-1\r\n\r\n', 0),
(2, '2', 'poha-1,upma-1\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mycalorie`
--

CREATE TABLE `mycalorie` (
  `id` int(11) NOT NULL,
  `reg_userid` int(11) NOT NULL,
  `caloriecouterid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mycalorie`
--

INSERT INTO `mycalorie` (`id`, `reg_userid`, `caloriecouterid`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipe`
--

CREATE TABLE `receipe` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'receipe title',
  `Ingredients` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'all required things to make this',
  `howtomake` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'cooking instructions',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipe`
--

INSERT INTO `receipe` (`id`, `title`, `Ingredients`, `howtomake`, `image`) VALUES
(1, 'pav-bhaji', '<p>vegetables,pav,bhajiMasala,butter</p>\r\n', '<p>Boil the veggies first and keep them ready. ... Heat 1 tablespoon of butter and 1 tablespoon of oil in a large pot on medium heat. ... Add the chopped onions and mix. ... Cook the onions for around 4 minutes until golden brown in color. Add the finely chopped ginger, garlic and green chili.</p>\r\n', '634118-food.png'),
(2, 'test', '<p>test</p>\r\n', '<p>tst</p>\r\n', '106740-mydocs.png');

-- --------------------------------------------------------

--
-- Table structure for table `reg_user`
--

CREATE TABLE `reg_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reg_user`
--

INSERT INTO `reg_user` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'mansimehta', 'admin@gmail.com', '$2y$10$0fa42iph7cwd3ANpih0vQOcN2T.Rn9iukw1tRQmvmOGE9tkLfXcnu'),
(2, 'Tushar', 'tnztnz5@gmail.com', '$2y$12$SxX6fywJaqdP.nCRhSnaTOSgrlWnWSgdr53ItZkqJYFXEoK9TD6XG');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'title of healthy tip',
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'healthy tip detail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CalorieCounter`
--
ALTER TABLE `CalorieCounter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dietplan`
--
ALTER TABLE `dietplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mycalorie`
--
ALTER TABLE `mycalorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipe`
--
ALTER TABLE `receipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_user`
--
ALTER TABLE `reg_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `CalorieCounter`
--
ALTER TABLE `CalorieCounter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dietplan`
--
ALTER TABLE `dietplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mycalorie`
--
ALTER TABLE `mycalorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receipe`
--
ALTER TABLE `receipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reg_user`
--
ALTER TABLE `reg_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
