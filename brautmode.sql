-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 04 2018 г., 12:28
-- Версия сервера: 5.7.20
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `brautmode`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categorys`
--

INSERT INTO `categorys` (`id`, `name`) VALUES
(1, 'Свадебные платья'),
(2, 'Вечерние платья'),
(3, 'Детские платья '),
(4, 'Мужские костюмы'),
(5, 'Аксессуары');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `email`) VALUES
(1, 'Barabara', 380999576, 'Barabara@gmail.com'),
(2, 'Ketty', 380999003, 'Ketty@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `fasony`
--

CREATE TABLE `fasony` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fasony`
--

INSERT INTO `fasony` (`id`, `name`) VALUES
(1, 'Пышные'),
(2, 'Прямые'),
(3, 'А-силуэт'),
(4, 'Греческие'),
(5, 'Русалка'),
(6, 'Классика'),
(7, 'Фрак'),
(8, 'Смокинг');

-- --------------------------------------------------------

--
-- Структура таблицы `manufactory`
--

CREATE TABLE `manufactory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `manufactory`
--

INSERT INTO `manufactory` (`id`, `name`) VALUES
(1, 'Украина'),
(2, 'Польща'),
(3, 'Греция'),
(4, 'Италия'),
(5, 'Германия');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `discription` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `fason_id` int(11) NOT NULL,
  `manufactory_id` int(11) NOT NULL,
  `price` int(6) NOT NULL,
  `sale` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `discription`, `category_id`, `fason_id`, `manufactory_id`, `price`, `sale`) VALUES
(21, 'Merion', '', 1, 5, 1, 10500, 5),
(22, 'Leni', '', 1, 3, 2, 9000, 0),
(23, 'Arabelia', '', 1, 6, 1, 15000, 10),
(24, 'Greigen', '', 1, 3, 2, 12000, 5),
(25, 'FLORIDA', '', 2, 2, 1, 5000, 0),
(26, 'Carmen', '', 2, 4, 3, 6500, 10),
(27, 'Lasira', '', 2, 2, 5, 9000, 10),
(28, 'Фата', '', 5, 1, 1, 300, 0),
(29, 'Лорд2V-Денді07', '', 4, 8, 1, 3000, 0),
(30, 'Маркіз2-Гамма01КVN', '', 4, 8, 1, 6500, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `termin`
--

CREATE TABLE `termin` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `datatime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `termin`
--

INSERT INTO `termin` (`id`, `client_id`, `product_id`, `datatime`) VALUES
(1, 1, 23, '2018-08-31'),
(2, 2, 25, '2018-08-23');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fasony`
--
ALTER TABLE `fasony`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `manufactory`
--
ALTER TABLE `manufactory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fason_id` (`fason_id`),
  ADD KEY `manufactory_id` (`manufactory_id`);

--
-- Индексы таблицы `termin`
--
ALTER TABLE `termin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fasony`
--
ALTER TABLE `fasony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `manufactory`
--
ALTER TABLE `manufactory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `termin`
--
ALTER TABLE `termin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`fason_id`) REFERENCES `fasony` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`manufactory_id`) REFERENCES `manufactory` (`id`);

--
-- Ограничения внешнего ключа таблицы `termin`
--
ALTER TABLE `termin`
  ADD CONSTRAINT `termin_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `termin_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
