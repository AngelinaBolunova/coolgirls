-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 10 2025 г., 12:55
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `girlfeeria`
--

-- --------------------------------------------------------

--
-- Структура таблицы `futbolki`
--

CREATE TABLE `futbolki` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'не указан',
  `quantity` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `futbolki`
--

INSERT INTO `futbolki` (`id`, `name`, `price`, `image_path`, `description`, `color`, `quantity`) VALUES
(1, 'Футболка \"Cute citten\"', '1500.00', 'футболки/1f.jpg', 'Качественная футболка из 100% хлопка, модная, 2025 год, молодежная', 'Белый', 25),
(2, 'Футболка \"NewYork\"', '1700.00', 'футболки/2f.jpg', 'Розовая, яркая и стильная футболка на каждый день из качественного материала с надписью \"NewYork\"', 'Розовый', 48),
(3, 'Футболка \"Horror Movies\"', '1650.00', 'футболки\\3f.jpg', 'Стильная футболка темного цвета, из 100% хлопка, легко сочетаемая и подойдет для ваших стильных повседневных нарядов.', 'Черный', 13),
(4, 'Футболка \"Good Times\"', '1000.00', 'футболки\\4f.jpg', 'Стильная футболка бежевого цвета с принтом бабочки и надписью. Комфортный крой и приятная к телу.', 'Бежевый', 10),
(5, 'Футболка \"Strawberry\"', '1370.00', 'футболки\\5f.jpg', 'Розовая, яркая футболка с аппетитным принтом клубники, милая и молодежная.Идеальный выбор для создания летнего и беззаботного образа.', 'Розовый', 17);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
