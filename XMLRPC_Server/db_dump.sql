-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 14 2022 г., 15:38
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `db_users`
--
CREATE DATABASE `db_users` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_users`;

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`ID`, `Name`) VALUES
(1, 'C'),
(2, 'C++'),
(3, 'PHP'),
(7, 'Pascal'),
(8, 'Perl'),
(9, 'Fortran');

-- --------------------------------------------------------

--
-- Структура таблицы `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext NOT NULL,
  `Age` int(11) NOT NULL,
  `Mail` tinytext NOT NULL,
  `LanguageID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `LanguageID` (`LanguageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `people`
--

INSERT INTO `people` (`ID`, `Name`, `Age`, `Mail`, `LanguageID`) VALUES
(2, 'Николай', 30, 'vasya@mail.ru', 3),
(3, 'Сергей', 31, 'serge@mail.ru', 2),
(4, 'Анна', 22, 'ann@usa.us', 8),
(7, 'Android_20210413', 20, 'android@mail.ru', 8),
(8, 'Android_20210413', 20, 'android@mail.ru', 8),
(10, 'ПроверкаПроверка', 22, 'check@mail.ru', 3),
(11, 'Debugger', 22, 'd@mail.ru', 9);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `people_ibfk_1` FOREIGN KEY (`LanguageID`) REFERENCES `languages` (`ID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
