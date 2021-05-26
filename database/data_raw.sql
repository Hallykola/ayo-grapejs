-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2021 at 04:30 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grape`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_raw`
--

DROP TABLE IF EXISTS `data_raw`;
CREATE TABLE IF NOT EXISTS `data_raw` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `assets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `css` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `styles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_raw`
--

INSERT INTO `data_raw` (`id`, `data`, `html`, `components`, `assets`, `css`, `styles`) VALUES
(1, '{\"gjs-html\":\"<div id=\\\"ig09\\\">Insert your text here</div><div class=\\\"gjs-row\\\"><div class=\\\"gjs-cell\\\" id=\\\"iu77\\\"></div><div class=\\\"gjs-cell\\\" id=\\\"ilxm\\\"></div></div>\",\"gjs-components\":\"[{\\\"type\\\":\\\"text\\\",\\\"attributes\\\":{\\\"id\\\":\\\"ig09\\\"},\\\"components\\\":[{\\\"type\\\":\\\"textnode\\\",\\\"removable\\\":false,\\\"draggable\\\":false,\\\"highlightable\\\":0,\\\"copyable\\\":false,\\\"content\\\":\\\"Insert your text here\\\",\\\"_innertext\\\":false}]},{\\\"name\\\":\\\"Row\\\",\\\"droppable\\\":\\\".gjs-cell\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":0,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-row\\\",\\\"private\\\":1}],\\\"components\\\":[{\\\"name\\\":\\\"Cell\\\",\\\"draggable\\\":\\\".gjs-row\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":1,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1,\\\"bc\\\":0,\\\"currentUnit\\\":1,\\\"step\\\":0.2},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"attributes\\\":{\\\"id\\\":\\\"iu77\\\"}},{\\\"name\\\":\\\"Cell\\\",\\\"draggable\\\":\\\".gjs-row\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":1,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1,\\\"bc\\\":0,\\\"currentUnit\\\":1,\\\"step\\\":0.2},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"attributes\\\":{\\\"id\\\":\\\"ilxm\\\"}}]}]\",\"gjs-assets\":\"[]\",\"gjs-css\":\"* { box-sizing: border-box; } body {margin: 0;}#ig09{padding:10px;}.gjs-row{display:table;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;width:100%;}.gjs-cell{width:8%;display:table-cell;height:75px;}#iu77{width:30%;}#ilxm{width:70%;}@media not all{.gjs-cell{width:100%;display:block;}}\",\"gjs-styles\":\"[{\\\"selectors\\\":[\\\"txt-red\\\"],\\\"style\\\":{\\\"color\\\":\\\"red\\\"}},{\\\"selectors\\\":[\\\"#ig09\\\"],\\\"style\\\":{\\\"padding\\\":\\\"10px\\\"}},{\\\"selectors\\\":[{\\\"name\\\":\\\"gjs-row\\\",\\\"private\\\":1}],\\\"style\\\":{\\\"display\\\":\\\"table\\\",\\\"padding-top\\\":\\\"10px\\\",\\\"padding-right\\\":\\\"10px\\\",\\\"padding-bottom\\\":\\\"10px\\\",\\\"padding-left\\\":\\\"10px\\\",\\\"width\\\":\\\"100%\\\"}},{\\\"selectors\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"style\\\":{\\\"width\\\":\\\"100%\\\",\\\"display\\\":\\\"block\\\"},\\\"mediaText\\\":\\\"not all\\\",\\\"atRuleType\\\":\\\"media\\\"},{\\\"selectors\\\":[\\\"gjs-cell30\\\"],\\\"style\\\":{\\\"width\\\":\\\"100%\\\",\\\"display\\\":\\\"block\\\"},\\\"mediaText\\\":\\\"not all\\\",\\\"atRuleType\\\":\\\"media\\\"},{\\\"selectors\\\":[\\\"gjs-cell70\\\"],\\\"style\\\":{\\\"width\\\":\\\"100%\\\",\\\"display\\\":\\\"block\\\"},\\\"mediaText\\\":\\\"not all\\\",\\\"atRuleType\\\":\\\"media\\\"},{\\\"selectors\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"style\\\":{\\\"width\\\":\\\"8%\\\",\\\"display\\\":\\\"table-cell\\\",\\\"height\\\":\\\"75px\\\"}},{\\\"selectors\\\":[\\\"gjs-cell30\\\"],\\\"style\\\":{\\\"width\\\":\\\"30%\\\"}},{\\\"selectors\\\":[\\\"gjs-cell70\\\"],\\\"style\\\":{\\\"width\\\":\\\"70%\\\"}},{\\\"selectors\\\":[\\\"#iu77\\\"],\\\"style\\\":{\\\"width\\\":\\\"30%\\\"}},{\\\"selectors\\\":[\\\"#ilxm\\\"],\\\"style\\\":{\\\"width\\\":\\\"70%\\\"}}]\",\"id\":1}', '<div id=\"ig09\">Insert your text here</div><div class=\"gjs-row\"><div class=\"gjs-cell\" id=\"iu77\"></div><div class=\"gjs-cell\" id=\"ilxm\"></div></div>', '[{\"type\":\"text\",\"attributes\":{\"id\":\"ig09\"},\"components\":[{\"type\":\"textnode\",\"removable\":false,\"draggable\":false,\"highlightable\":0,\"copyable\":false,\"content\":\"Insert your text here\",\"_innertext\":false}]},{\"name\":\"Row\",\"droppable\":\".gjs-cell\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":0,\"bl\":0,\"br\":0,\"minDim\":1},\"classes\":[{\"name\":\"gjs-row\",\"private\":1}],\"components\":[{\"name\":\"Cell\",\"draggable\":\".gjs-row\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":1,\"bl\":0,\"br\":0,\"minDim\":1,\"bc\":0,\"currentUnit\":1,\"step\":0.2},\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}],\"attributes\":{\"id\":\"iu77\"}},{\"name\":\"Cell\",\"draggable\":\".gjs-row\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":1,\"bl\":0,\"br\":0,\"minDim\":1,\"bc\":0,\"currentUnit\":1,\"step\":0.2},\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}],\"attributes\":{\"id\":\"ilxm\"}}]}]', '[]', '* { box-sizing: border-box; } body {margin: 0;}#ig09{padding:10px;}.gjs-row{display:table;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;width:100%;}.gjs-cell{width:8%;display:table-cell;height:75px;}#iu77{width:30%;}#ilxm{width:70%;}@media not all{.gjs-cell{width:100%;display:block;}}', '[{\"selectors\":[\"txt-red\"],\"style\":{\"color\":\"red\"}},{\"selectors\":[\"#ig09\"],\"style\":{\"padding\":\"10px\"}},{\"selectors\":[{\"name\":\"gjs-row\",\"private\":1}],\"style\":{\"display\":\"table\",\"padding-top\":\"10px\",\"padding-right\":\"10px\",\"padding-bottom\":\"10px\",\"padding-left\":\"10px\",\"width\":\"100%\"}},{\"selectors\":[{\"name\":\"gjs-cell\",\"private\":1}],\"style\":{\"width\":\"100%\",\"display\":\"block\"},\"mediaText\":\"not all\",\"atRuleType\":\"media\"},{\"selectors\":[\"gjs-cell30\"],\"style\":{\"width\":\"100%\",\"display\":\"block\"},\"mediaText\":\"not all\",\"atRuleType\":\"media\"},{\"selectors\":[\"gjs-cell70\"],\"style\":{\"width\":\"100%\",\"display\":\"block\"},\"mediaText\":\"not all\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"gjs-cell\",\"private\":1}],\"style\":{\"width\":\"8%\",\"display\":\"table-cell\",\"height\":\"75px\"}},{\"selectors\":[\"gjs-cell30\"],\"style\":{\"width\":\"30%\"}},{\"selectors\":[\"gjs-cell70\"],\"style\":{\"width\":\"70%\"}},{\"selectors\":[\"#iu77\"],\"style\":{\"width\":\"30%\"}},{\"selectors\":[\"#ilxm\"],\"style\":{\"width\":\"70%\"}}]'),
(2, '\"{\\\"gjs-html\\\":\\\"<div class=\\\\\\\"gjs-row\\\\\\\"><div class=\\\\\\\"gjs-cell\\\\\\\" id=\\\\\\\"i5k3\\\\\\\"><\\/div><div class=\\\\\\\"gjs-cell\\\\\\\" id=\\\\\\\"iu09\\\\\\\"><\\/div><\\/div>\\\",\\\"gjs-components\\\":\\\"[{\\\\\\\"name\\\\\\\":\\\\\\\"Row\\\\\\\",\\\\\\\"droppable\\\\\\\":\\\\\\\".gjs-cell\\\\\\\",\\\\\\\"resizable\\\\', '', '', '', '', ''),
(3, '{\"gjs-html\":\"<div id=\\\"ia76\\\">Insert your text here</div><div><div><img src=\\\"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+\\\" width=\\\"258\\\" height=\\\"169\\\" alt=\\\"\\\"/></div><div><h1>  Organisation Name </h1><p> About Organisation </p><p> Address </p><p>Telephone|Email</p></div></div>\",\"gjs-components\":\"[{\\\"type\\\":\\\"text\\\",\\\"attributes\\\":{\\\"id\\\":\\\"ia76\\\"},\\\"components\\\":[{\\\"type\\\":\\\"textnode\\\",\\\"removable\\\":false,\\\"draggable\\\":false,\\\"highlightable\\\":0,\\\"copyable\\\":false,\\\"content\\\":\\\"Insert your text here\\\",\\\"_innertext\\\":false}]},{\\\"components\\\":[{\\\"components\\\":[{\\\"type\\\":\\\"image\\\",\\\"attributes\\\":{\\\"src\\\":\\\"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+\\\",\\\"width\\\":\\\"258\\\",\\\"height\\\":\\\"169\\\",\\\"alt\\\":\\\"\\\"}}]},{\\\"components\\\":[{\\\"tagName\\\":\\\"h1\\\",\\\"type\\\":\\\"text\\\",\\\"components\\\":[{\\\"type\\\":\\\"textnode\\\",\\\"content\\\":\\\"  Organisation Name \\\"}]},{\\\"tagName\\\":\\\"p\\\",\\\"type\\\":\\\"text\\\",\\\"components\\\":[{\\\"type\\\":\\\"textnode\\\",\\\"content\\\":\\\" About Organisation \\\"}]},{\\\"tagName\\\":\\\"p\\\",\\\"type\\\":\\\"text\\\",\\\"components\\\":[{\\\"type\\\":\\\"textnode\\\",\\\"content\\\":\\\" Address \\\"}]},{\\\"tagName\\\":\\\"p\\\",\\\"type\\\":\\\"text\\\",\\\"components\\\":[{\\\"type\\\":\\\"textnode\\\",\\\"content\\\":\\\"Telephone|Email\\\"}]}]}]}]\",\"gjs-assets\":\"[]\",\"gjs-css\":\"* { box-sizing: border-box; } body {margin: 0;}#ia76{padding:10px;}\",\"gjs-styles\":\"[{\\\"selectors\\\":[\\\"txt-red\\\"],\\\"style\\\":{\\\"color\\\":\\\"red\\\"}},{\\\"selectors\\\":[\\\"#ia76\\\"],\\\"style\\\":{\\\"padding\\\":\\\"10px\\\"}}]\",\"id\":3}', '<div id=\"ia76\">Insert your text here</div><div><div><img src=\"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+\" width=\"258\" height=\"169\" alt=\"\"/></div><div><h1>  Organisation Name </h1><p> About Organisation </p><p> Address </p><p>Telephone|Email</p></div></div>', '[{\"type\":\"text\",\"attributes\":{\"id\":\"ia76\"},\"components\":[{\"type\":\"textnode\",\"removable\":false,\"draggable\":false,\"highlightable\":0,\"copyable\":false,\"content\":\"Insert your text here\",\"_innertext\":false}]},{\"components\":[{\"components\":[{\"type\":\"image\",\"attributes\":{\"src\":\"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIHZpZXdCb3g9IjAgMCAyNCAyNCIgc3R5bGU9ImZpbGw6IHJnYmEoMCwwLDAsMC4xNSk7IHRyYW5zZm9ybTogc2NhbGUoMC43NSkiPgogICAgICAgIDxwYXRoIGQ9Ik04LjUgMTMuNWwyLjUgMyAzLjUtNC41IDQuNSA2SDVtMTYgMVY1YTIgMiAwIDAgMC0yLTJINWMtMS4xIDAtMiAuOS0yIDJ2MTRjMCAxLjEuOSAyIDIgMmgxNGMxLjEgMCAyLS45IDItMnoiPjwvcGF0aD4KICAgICAgPC9zdmc+\",\"width\":\"258\",\"height\":\"169\",\"alt\":\"\"}}]},{\"components\":[{\"tagName\":\"h1\",\"type\":\"text\",\"components\":[{\"type\":\"textnode\",\"content\":\"  Organisation Name \"}]},{\"tagName\":\"p\",\"type\":\"text\",\"components\":[{\"type\":\"textnode\",\"content\":\" About Organisation \"}]},{\"tagName\":\"p\",\"type\":\"text\",\"components\":[{\"type\":\"textnode\",\"content\":\" Address \"}]},{\"tagName\":\"p\",\"type\":\"text\",\"components\":[{\"type\":\"textnode\",\"content\":\"Telephone|Email\"}]}]}]}]', '[]', '* { box-sizing: border-box; } body {margin: 0;}#ia76{padding:10px;}', '[{\"selectors\":[\"txt-red\"],\"style\":{\"color\":\"red\"}},{\"selectors\":[\"#ia76\"],\"style\":{\"padding\":\"10px\"}}]'),
(4, '\"{\\\"gjs-html\\\":\\\"<div class=\\\\\\\"gjs-row\\\\\\\"><div class=\\\\\\\"gjs-cell\\\\\\\" id=\\\\\\\"i5k3\\\\\\\"><img id=\\\\\\\"i20l\\\\\\\" src=\\\\\\\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQEAkACQAAD\\/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD\\/7AARRHVja3kAAQAEAAAAUAAA\\/9sAQwACA', '', '', '', '', ''),
(5, '\"{\\\"gjs-html\\\":\\\"<div class=\\\\\\\"gjs-row\\\\\\\"><div class=\\\\\\\"gjs-cell\\\\\\\" id=\\\\\\\"i5k3\\\\\\\"><img id=\\\\\\\"i20l\\\\\\\" src=\\\\\\\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQEAkACQAAD\\/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD\\/7AARRHVja3kAAQAEAAAAUAAA\\/9sAQwACA', '', '', '', '', ''),
(6, '\"{\\\"gjs-html\\\":\\\"<div class=\\\\\\\"gjs-row\\\\\\\"><div class=\\\\\\\"gjs-cell\\\\\\\" id=\\\\\\\"i5k3\\\\\\\"><img id=\\\\\\\"i20l\\\\\\\" src=\\\\\\\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQEAkACQAAD\\/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD\\/7AARRHVja3kAAQAEAAAAUAAA\\/9sAQwACA', '', '', '', '', ''),
(7, '{\"gjs-html\":\"<div class=\\\"gjs-row\\\"><div class=\\\"gjs-cell\\\" id=\\\"i5k3\\\"><img id=\\\"i20l\\\" src=\\\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAkACQAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/7AARRHVja3kAAQAEAAAAUAAA/9sAQwACAQECAQECAgICAgICAgMFAwMDAwMGB', '', '', '', '', ''),
(8, '{\"gjs-html\":\"<div id=\\\"icqw\\\">Insert your text here</div><div class=\\\"gjs-row\\\"><div class=\\\"gjs-cell\\\"><div class=\\\"gjs-row\\\"><div class=\\\"gjs-cell\\\" id=\\\"ispj\\\"></div><div class=\\\"gjs-cell\\\" id=\\\"i8s3\\\"></div></div></div><div class=\\\"gjs-cell\\\"></div><div class=\\\"gjs-cell\\\"></div></div>\",\"gjs-components\":\"[{\\\"type\\\":\\\"text\\\",\\\"attributes\\\":{\\\"id\\\":\\\"icqw\\\"},\\\"components\\\":[{\\\"type\\\":\\\"textnode\\\",\\\"removable\\\":false,\\\"draggable\\\":false,\\\"highlightable\\\":0,\\\"copyable\\\":false,\\\"content\\\":\\\"Insert your text here\\\",\\\"_innertext\\\":false}]},{\\\"name\\\":\\\"Row\\\",\\\"droppable\\\":\\\".gjs-cell\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":0,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-row\\\",\\\"private\\\":1}],\\\"components\\\":[{\\\"name\\\":\\\"Cell\\\",\\\"draggable\\\":\\\".gjs-row\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":1,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1,\\\"bc\\\":0,\\\"currentUnit\\\":1,\\\"step\\\":0.2},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"components\\\":[{\\\"name\\\":\\\"Row\\\",\\\"droppable\\\":\\\".gjs-cell\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":0,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-row\\\",\\\"private\\\":1}],\\\"components\\\":[{\\\"name\\\":\\\"Cell\\\",\\\"draggable\\\":\\\".gjs-row\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":1,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1,\\\"bc\\\":0,\\\"currentUnit\\\":1,\\\"step\\\":0.2},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"attributes\\\":{\\\"id\\\":\\\"ispj\\\"}},{\\\"name\\\":\\\"Cell\\\",\\\"draggable\\\":\\\".gjs-row\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":1,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1,\\\"bc\\\":0,\\\"currentUnit\\\":1,\\\"step\\\":0.2},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"attributes\\\":{\\\"id\\\":\\\"i8s3\\\"}}]}]},{\\\"name\\\":\\\"Cell\\\",\\\"draggable\\\":\\\".gjs-row\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":1,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1,\\\"bc\\\":0,\\\"currentUnit\\\":1,\\\"step\\\":0.2},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}]},{\\\"name\\\":\\\"Cell\\\",\\\"draggable\\\":\\\".gjs-row\\\",\\\"resizable\\\":{\\\"tl\\\":0,\\\"tc\\\":0,\\\"tr\\\":0,\\\"cl\\\":0,\\\"cr\\\":1,\\\"bl\\\":0,\\\"br\\\":0,\\\"minDim\\\":1,\\\"bc\\\":0,\\\"currentUnit\\\":1,\\\"step\\\":0.2},\\\"classes\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}]}]}]\",\"gjs-assets\":\"[]\",\"gjs-css\":\"* { box-sizing: border-box; } body {margin: 0;}#icqw{padding:10px;}.gjs-row{display:table;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;width:100%;}.gjs-cell{width:8%;display:table-cell;height:75px;}#ispj{width:30%;}#i8s3{width:70%;}@media not all{.gjs-cell{width:100%;display:block;}}\",\"gjs-styles\":\"[{\\\"selectors\\\":[\\\"txt-red\\\"],\\\"style\\\":{\\\"color\\\":\\\"red\\\"}},{\\\"selectors\\\":[\\\"#icqw\\\"],\\\"style\\\":{\\\"padding\\\":\\\"10px\\\"}},{\\\"selectors\\\":[{\\\"name\\\":\\\"gjs-row\\\",\\\"private\\\":1}],\\\"style\\\":{\\\"display\\\":\\\"table\\\",\\\"padding-top\\\":\\\"10px\\\",\\\"padding-right\\\":\\\"10px\\\",\\\"padding-bottom\\\":\\\"10px\\\",\\\"padding-left\\\":\\\"10px\\\",\\\"width\\\":\\\"100%\\\"}},{\\\"selectors\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"style\\\":{\\\"width\\\":\\\"100%\\\",\\\"display\\\":\\\"block\\\"},\\\"mediaText\\\":\\\"not all\\\",\\\"atRuleType\\\":\\\"media\\\"},{\\\"selectors\\\":[\\\"gjs-cell30\\\"],\\\"style\\\":{\\\"width\\\":\\\"100%\\\",\\\"display\\\":\\\"block\\\"},\\\"mediaText\\\":\\\"not all\\\",\\\"atRuleType\\\":\\\"media\\\"},{\\\"selectors\\\":[\\\"gjs-cell70\\\"],\\\"style\\\":{\\\"width\\\":\\\"100%\\\",\\\"display\\\":\\\"block\\\"},\\\"mediaText\\\":\\\"not all\\\",\\\"atRuleType\\\":\\\"media\\\"},{\\\"selectors\\\":[{\\\"name\\\":\\\"gjs-cell\\\",\\\"private\\\":1}],\\\"style\\\":{\\\"width\\\":\\\"8%\\\",\\\"display\\\":\\\"table-cell\\\",\\\"height\\\":\\\"75px\\\"}},{\\\"selectors\\\":[\\\"gjs-cell30\\\"],\\\"style\\\":{\\\"width\\\":\\\"30%\\\"}},{\\\"selectors\\\":[\\\"gjs-cell70\\\"],\\\"style\\\":{\\\"width\\\":\\\"70%\\\"}},{\\\"selectors\\\":[\\\"#ispj\\\"],\\\"style\\\":{\\\"width\\\":\\\"30%\\\"}},{\\\"selectors\\\":[\\\"#i8s3\\\"],\\\"style\\\":{\\\"width\\\":\\\"70%\\\"}}]\",\"id\":8}', '<div id=\"icqw\">Insert your text here</div><div class=\"gjs-row\"><div class=\"gjs-cell\"><div class=\"gjs-row\"><div class=\"gjs-cell\" id=\"ispj\"></div><div class=\"gjs-cell\" id=\"i8s3\"></div></div></div><div class=\"gjs-cell\"></div><div class=\"gjs-cell\"></div></div>', '[{\"type\":\"text\",\"attributes\":{\"id\":\"icqw\"},\"components\":[{\"type\":\"textnode\",\"removable\":false,\"draggable\":false,\"highlightable\":0,\"copyable\":false,\"content\":\"Insert your text here\",\"_innertext\":false}]},{\"name\":\"Row\",\"droppable\":\".gjs-cell\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":0,\"bl\":0,\"br\":0,\"minDim\":1},\"classes\":[{\"name\":\"gjs-row\",\"private\":1}],\"components\":[{\"name\":\"Cell\",\"draggable\":\".gjs-row\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":1,\"bl\":0,\"br\":0,\"minDim\":1,\"bc\":0,\"currentUnit\":1,\"step\":0.2},\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}],\"components\":[{\"name\":\"Row\",\"droppable\":\".gjs-cell\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":0,\"bl\":0,\"br\":0,\"minDim\":1},\"classes\":[{\"name\":\"gjs-row\",\"private\":1}],\"components\":[{\"name\":\"Cell\",\"draggable\":\".gjs-row\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":1,\"bl\":0,\"br\":0,\"minDim\":1,\"bc\":0,\"currentUnit\":1,\"step\":0.2},\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}],\"attributes\":{\"id\":\"ispj\"}},{\"name\":\"Cell\",\"draggable\":\".gjs-row\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":1,\"bl\":0,\"br\":0,\"minDim\":1,\"bc\":0,\"currentUnit\":1,\"step\":0.2},\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}],\"attributes\":{\"id\":\"i8s3\"}}]}]},{\"name\":\"Cell\",\"draggable\":\".gjs-row\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":1,\"bl\":0,\"br\":0,\"minDim\":1,\"bc\":0,\"currentUnit\":1,\"step\":0.2},\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}]},{\"name\":\"Cell\",\"draggable\":\".gjs-row\",\"resizable\":{\"tl\":0,\"tc\":0,\"tr\":0,\"cl\":0,\"cr\":1,\"bl\":0,\"br\":0,\"minDim\":1,\"bc\":0,\"currentUnit\":1,\"step\":0.2},\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}]}]}]', '[]', '* { box-sizing: border-box; } body {margin: 0;}#icqw{padding:10px;}.gjs-row{display:table;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;width:100%;}.gjs-cell{width:8%;display:table-cell;height:75px;}#ispj{width:30%;}#i8s3{width:70%;}@media not all{.gjs-cell{width:100%;display:block;}}', '[{\"selectors\":[\"txt-red\"],\"style\":{\"color\":\"red\"}},{\"selectors\":[\"#icqw\"],\"style\":{\"padding\":\"10px\"}},{\"selectors\":[{\"name\":\"gjs-row\",\"private\":1}],\"style\":{\"display\":\"table\",\"padding-top\":\"10px\",\"padding-right\":\"10px\",\"padding-bottom\":\"10px\",\"padding-left\":\"10px\",\"width\":\"100%\"}},{\"selectors\":[{\"name\":\"gjs-cell\",\"private\":1}],\"style\":{\"width\":\"100%\",\"display\":\"block\"},\"mediaText\":\"not all\",\"atRuleType\":\"media\"},{\"selectors\":[\"gjs-cell30\"],\"style\":{\"width\":\"100%\",\"display\":\"block\"},\"mediaText\":\"not all\",\"atRuleType\":\"media\"},{\"selectors\":[\"gjs-cell70\"],\"style\":{\"width\":\"100%\",\"display\":\"block\"},\"mediaText\":\"not all\",\"atRuleType\":\"media\"},{\"selectors\":[{\"name\":\"gjs-cell\",\"private\":1}],\"style\":{\"width\":\"8%\",\"display\":\"table-cell\",\"height\":\"75px\"}},{\"selectors\":[\"gjs-cell30\"],\"style\":{\"width\":\"30%\"}},{\"selectors\":[\"gjs-cell70\"],\"style\":{\"width\":\"70%\"}},{\"selectors\":[\"#ispj\"],\"style\":{\"width\":\"30%\"}},{\"selectors\":[\"#i8s3\"],\"style\":{\"width\":\"70%\"}}]'),
(9, '{\"gjs-html\":\"<div class=\\\"gjs-row\\\"><div class=\\\"gjs-cell\\\" id=\\\"i5k3\\\"><img id=\\\"i20l\\\" src=\\\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAkACQAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/7AARRHVja3kAAQAEAAAAUAAA/9sAQwACAQECAQECAgICAgICAgMFAwMDAwMGB', '', '', '', '', ''),
(10, '{\"gjs-html\":\"<div id=\\\"iy6v\\\">Insert your text here</div>\",\"gjs-components\":\"[{\\\"type\\\":\\\"text\\\",\\\"attributes\\\":{\\\"id\\\":\\\"iy6v\\\"},\\\"components\\\":[{\\\"type\\\":\\\"textnode\\\",\\\"removable\\\":false,\\\"draggable\\\":false,\\\"highlightable\\\":0,\\\"copyable\\\":false,\\\"content\\\":\\\"Insert your text here\\\",\\\"_innertext\\\":false}]}]\",\"gjs-assets\":\"[]\",\"gjs-css\":\"* { box-sizing: border-box; } body {margin: 0;}#iy6v{padding:10px;}\",\"gjs-styles\":\"[{\\\"selectors\\\":[\\\"txt-red\\\"],\\\"style\\\":{\\\"color\\\":\\\"red\\\"}},{\\\"selectors\\\":[\\\"#iy6v\\\"],\\\"style\\\":{\\\"padding\\\":\\\"10px\\\"}}]\"}', '<div id=\"iy6v\">Insert your text here</div>', '[{\"type\":\"text\",\"attributes\":{\"id\":\"iy6v\"},\"components\":[{\"type\":\"textnode\",\"removable\":false,\"draggable\":false,\"highlightable\":0,\"copyable\":false,\"content\":\"Insert your text here\",\"_innertext\":false}]}]', '[]', '* { box-sizing: border-box; } body {margin: 0;}#iy6v{padding:10px;}', '[{\"selectors\":[\"txt-red\"],\"style\":{\"color\":\"red\"}},{\"selectors\":[\"#iy6v\"],\"style\":{\"padding\":\"10px\"}}]');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;