-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 10:08 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `meal_types_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`, `image`, `description`, `price`, `restaurant_id`, `meal_types_id`) VALUES
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
-- Table structure for table `meal_types`
--

CREATE TABLE `meal_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meal_types`
--

INSERT INTO `meal_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'салата', NULL, '2017-11-02 15:03:09'),
(2, 'основно ястие', NULL, NULL),
(3, 'десерт', NULL, NULL),
(4, 'питие', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meal_user`
--

CREATE TABLE `meal_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meal_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `order_list` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `restaurant_id`, `order_list`, `user_id`) VALUES
(1, 1, '[\"1\",\"3\",\"14\",\"20\"]', 6),
(2, 2, '[\"4\",\"11\",\"21\"]', 6),
(3, 2, '[\"4\",\"11\",\"21\"]', 6),
(4, 2, '[\"4\",\"11\",\"21\"]', 6);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `menu` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL,
  `date_deleted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `menu`, `description`, `short_desc`, `image`, `date_deleted`) VALUES
(1, 'Български ресторант \"Левски\"', 'Българско меню', 'предлага уютна обстановка в старобългарски стил с богато меню, включващо традисионни ястия от всички крайща на България.\r\n\r\nНезависимо дали искате да видите битова обстановка, да опитате типично български ястия по изпитани рецепти като печено агне на чеверме, което да полеете с мавруд, да научите стъпките на правото хоро и поне една народна песен, заедно с певците и танцьорите от вечерното фолклорно шоу, тук ще намерите и трите.', 'Предлага голям избор на всякакви трядиционни ястия.', 'intro-bg', '0000-00-00'),
(2, 'Италиански ресторант \"Дон Домат\"', 'Италианско меню', 'предлага уютна обстановка в италиански стил с богато меню, включващо традисионни ястия от всички крайща на Италия.\r\n\r\nМенюто на ресторанта е разнообразно, като едно от нещата, които трябва да опитате на всяка цена е прясната паста, поднесена с манатарки, морски дарове или хрупкав бекон. Ако сте фенове на лазанята, нека тя да бъде прясно печена, отворена, със зеленчуков рататуй, бешамел и пекорино. Ако пък обичате пица, можете да се спрете на някое от класическите предложения или на Тартювита - домати, моцарела, сирене \"Фондю\", сотирана кладница с паста от трюфел и чесън.', 'Предлага голям избор на всякакви италиански ястия.', 'intro-it', '0000-00-00'),
(3, 'Рибен ресторант \"Златната котва\"', 'Рибно меню', 'предлага уютна обстановка в рибарски стил с богато меню, включващо традисионни рибни ястия от всички крайща на света.\r\n\r\nПодарете си приятни мигове с вашите любими хора в нашата уютна обстановка. Акцент в нашето меню са многобройните видове черноморска риба, морските дарове и разнообразието от свежи салати. На Ваше разположение са още просторната лятна градина с изглед към морето.', 'Предлага голям избор на всякакви морски дарове.', 'intro-fish', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(4, 'Tsurka151', 'Tsurka15@abv.bg', '$2y$10$tqr6AVTyqtAkDSailPVh.eTcf6tbEwA8RRrS6NZhwAHHcKOiUCpQG', 'CJFUd3Lu15tTD2wpgh8QoCERCbkV8SSpXwZOP78bwTckwNUKY2BThwjlECuW', '2017-11-02 07:51:44', '2017-11-27 12:02:26', 'admin'),
(5, 'Tsurka88', 'Tsurka88@abv.bg', '$2y$10$Qvt245viHghXYIdc4REumuODSMAKhrTh5aEPh4UELnFjWXx1MWd9m', NULL, '2017-11-27 12:04:39', '2017-11-27 12:04:39', 'client'),
(6, 'Test', 'test@abv.bg', '$2y$10$vlKVvTAFKN4mtGIyPGwvbO2JBWVHB3JCUd6xcN3aMKtbQ7QNvNCwi', NULL, '2017-11-28 13:23:53', '2017-11-28 13:23:53', 'client');

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
  ADD KEY `restaurant.id` (`restaurant_id`),
  ADD KEY `meal_types.id` (`meal_types_id`);

--
-- Indexes for table `meal_types`
--
ALTER TABLE `meal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_user`
--
ALTER TABLE `meal_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_id` (`meal_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `meal_user`
--
ALTER TABLE `meal_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`),
  ADD CONSTRAINT `meals_ibfk_2` FOREIGN KEY (`meal_types_id`) REFERENCES `meal_types` (`id`);

--
-- Constraints for table `meal_user`
--
ALTER TABLE `meal_user`
  ADD CONSTRAINT `meal_user_ibfk_1` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`),
  ADD CONSTRAINT `meal_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
