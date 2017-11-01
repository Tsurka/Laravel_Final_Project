-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  1 ное 2017 в 14:05
-- Версия на сървъра: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_project`
--

-- --------------------------------------------------------

--
-- Структура на таблица `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `restaurant.id` int(11) DEFAULT NULL,
  `meal_types.id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `meals`
--

INSERT INTO `meals` (`id`, `name`, `image`, `description`, `price`, `restaurant.id`, `meal_types.id`) VALUES
(1, 'Шопска салата', '', 'Домати, краставици, печени чушки, кромид лук, пресен магданоз и настъргано бяло саламурено сирене и овкусени със сол и олио', 3, 1, 1),
(2, 'Овчарска салата', '', 'Нарязани краставици, домати, лук, магданоз, печени или сурови чушки, шунка, сварено яйце, кашкавал, настъргано бяло саламурено сирене и овкусени със сол и олио', 4, 1, 1),
(3, 'Снежанка', '', 'Кисели краставички, изцедено кисело мляко, чесън, сол, олио, копър, смлени орехови ядки', 5, 1, 1),
(4, 'Салата с паста и риба тон', '', 'Паста пене, риба тон, чери домати, маслини Каламата, босилек, зехтин, сол', 7, 2, 1),
(5, 'Капрезе', '', 'Домати, моцарела, босилек, зехтин и сол', 7, 2, 1),
(6, 'Зелена салата с калмари и маслини', '', 'Мариновани бейби калмари, маслини, маруля, лимонов сок, сол и зехтин', 8, 3, 1),
(7, 'Салата с айсберг, скариди и рукола', '', 'Айсберг, рукола, чери домати, скариди, пармезан, лимонов сок, зехтин, сол', 9, 3, 1),
(8, 'Пиле с картофи', '', 'Пилешко месо, картофи, олио, сол, черен пипер', 3, 1, 2),
(9, 'Мусака', '', 'Кайма, картофи, лук, домати, магданоз, червен пипер, черен пипер, чубрица, сол, олио, яйца, кисело мляко, сода', 4, 1, 2),
(10, 'Спагети \"Болонезе\"', '', 'Спагети, кайма, лук, домати, риган, черен пипер, сол, пармезан, олио', 8, 2, 2),
(11, 'Пица \"Маргарита\"', '', 'Домати, чесън, моцарела, зехтин, сол, босилек', 5, 2, 2),
(12, 'Калмари на плоча', '', 'Калмари, чесън, зехтин, майорана, черен пипер и сол', 8, 3, 2),
(13, 'Ципура на скара', '', 'Ципура, лимон, чесън, магданоз, сол, черен пипер, зехтин', 15, 3, 2),
(14, 'Крем карамел', '', 'Прясно мляко, яйца, захар и ванилия', 2, 1, 3),
(15, 'Мляко с ориз', '', 'Прясно ляко, ориз, захар и канела', 1, 1, 3),
(16, 'Тирамису', '', 'Бишкоти, маскарпоне, захар, яйца, марсала, кафе, какао и сол', 5, 2, 3),
(17, 'Италиански ванилов сладолед', '', 'Прясно мляко, захар и ванилия', 3, 2, 3),
(18, 'Сладоледена торта', '', 'Сладолед(по ваш избор), мляко, захар, блат', 5, 3, 3),
(19, 'Брауни', '', 'масло, шоколад, сол, захар, яйца, ванилия, ягоди', 6, 3, 3),
(20, 'Ракия', '', 'Сливова, кайсиева, гроздова', 3, 1, 4),
(21, 'Бира', '', 'Светла и тъмна бира', 4, 2, 4),
(22, 'Вино', '', 'Бяло, червено, розе', 15, 3, 4);

-- --------------------------------------------------------

--
-- Структура на таблица `meal_types`
--

CREATE TABLE `meal_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `meal_types`
--

INSERT INTO `meal_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'салата', NULL, NULL),
(2, 'основно ястие', NULL, NULL),
(3, 'десерт', NULL, NULL),
(4, 'питие', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `menu` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `date_deleted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `menu`, `description`, `image`, `date_deleted`) VALUES
(1, 'Български ресторант', 'Българско меню', 'Ресторанта предлага българска традиционна кухня.', '', '0000-00-00'),
(2, 'Италиански ресторант', 'Италианско меню', 'Ресторанта предлага традиционни ястия от Италианската кухня.', '', '0000-00-00'),
(3, 'Рибен ресторант', 'Рибно меню', 'Ресторантът прелага средиземноморска кухня', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(2, 'Tsurka88', 'Tsurka88@abv.bg', '$2y$10$7hlTsYoBwlSrkCxujcoTTOXDYMYe6JuWL2mScFD8pj5lawF8iHyda', '5bCIgpmt3JUKFvToX0xcCgL7YQG4Blo05ifA4ksAgpVk8YLNS6ndwkKkfIjo', '2017-10-28 12:47:54', '2017-10-28 12:47:54', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant.id` (`restaurant.id`),
  ADD KEY `meal_types.id` (`meal_types.id`);

--
-- Indexes for table `meal_types`
--
ALTER TABLE `meal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`(191));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `meal_types`
--
ALTER TABLE `meal_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`restaurant.id`) REFERENCES `restaurants` (`id`),
  ADD CONSTRAINT `meals_ibfk_2` FOREIGN KEY (`meal_types.id`) REFERENCES `meal_types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
