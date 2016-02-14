-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2016 at 07:28 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp4711`
--

-- --------------------------------------------------------

--
-- Table structure for table `holdings`
--

CREATE TABLE `holdings` (
  `Player` text NOT NULL,
  `Stock` text NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holdings`
--

INSERT INTO `holdings` (`Player`, `Stock`, `Total`) VALUES
('Donald', 'BOND', 100),
('Donald', 'TECH', -1000),
('Donald', 'IND', -1000),
('Donald', 'OIL', -100),
('Donald', 'GOLD', 0),
('Donald', 'GRAN', 0),
('Henry', 'BOND', 0),
('Henry', 'TECH', -1000),
('Henry', 'IND', 0),
('Henry', 'OIL', 0),
('Henry', 'GOLD', 900),
('Henry', 'GRAN', 0),
('George', 'BOND', 0),
('George', 'TECH', 0),
('George', 'IND', 100),
('George', 'OIL', 600),
('George', 'GOLD', -100),
('George', 'GRAN', 0),
('Mickey', 'BOND', 0),
('Mickey', 'TECH', 0),
('Mickey', 'IND', 0),
('Mickey', 'OIL', 0),
('Mickey', 'GOLD', 0),
('Mickey', 'GRAN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `code` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`code`, `name`, `description`, `price`, `picture`, `category`) VALUES
(1, 'Cheese', 'Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.', '2.95', '1.png', 's'),
(2, 'Turkey', 'Roasted, succulent, stuffed, lovingly sliced turkey breast', '5.95', '2.png', 'm'),
(6, 'Donut', 'Disgustingly sweet, topped with artery clogging chocolate and then sprinkled with Pixie dust', '1.25', '6.png', 's'),
(10, 'Bubbly', '1964 Moet Charmon, made from grapes crushed by elves with clean feet, perfectly chilled.', '14.50', '10.png', 'd'),
(11, 'Ice Cream', 'Combination of decadent chocolate topped with luscious strawberry, churned by gifted virgins using only cream from the Tajima strain of wagyu cattle', '3.75', '11.png', 's'),
(8, 'Hot Dog', 'Pork trimmings mixed with powdered preservatives, flavourings, red colouring and drenched in water before being squeezed into plastic tubes. Topped with onions, bacon, chili or cheese - no extra charge.', '6.90', '8.png', 'm'),
(25, 'Burger', 'Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill''s own unique special sauce.', '9.99', 'burger.png', 'm'),
(21, 'Coffee', 'A delicious cup of the nectar of life, saviour of students, morning kick-starter; made with freshly grounds that you don''t want to know where they came from!', '2.95', 'coffee.png', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `movements`
--

CREATE TABLE `movements` (
  `Datetime` varchar(19) DEFAULT NULL,
  `Code` varchar(4) DEFAULT NULL,
  `Action` varchar(4) DEFAULT NULL,
  `Amount` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movements`
--

INSERT INTO `movements` (`Datetime`, `Code`, `Action`, `Amount`) VALUES
('2016.02.01-09:01:00', 'BOND', 'down', 5),
('2016.02.01-09:01:02', 'IND', 'div', 5),
('2016.02.01-09:01:04', 'OIL', 'down', 10),
('2016.02.01-09:01:06', 'GOLD', 'div', 5),
('2016.02.01-09:01:08', 'BOND', 'up', 20),
('2016.02.01-09:01:10', 'GOLD', 'div', 5),
('2016.02.01-09:01:12', 'GOLD', 'down', 20),
('2016.02.01-09:01:14', 'IND', 'div', 10),
('2016.02.01-09:01:16', 'OIL', 'up', 20),
('2016.02.01-09:01:18', 'BOND', 'down', 5),
('2016.02.01-09:01:20', 'BOND', 'up', 5),
('2016.02.01-09:01:22', 'BOND', 'div', 20),
('2016.02.01-09:01:24', 'BOND', 'div', 20),
('2016.02.01-09:01:26', 'GOLD', 'div', 20),
('2016.02.01-09:01:28', 'IND', 'up', 20),
('2016.02.01-09:01:30', 'OIL', 'down', 20),
('2016.02.01-09:01:32', 'GRAN', 'down', 20),
('2016.02.01-09:01:34', 'BOND', 'up', 5),
('2016.02.01-09:01:36', 'GOLD', 'down', 20),
('2016.02.01-09:01:38', 'GOLD', 'down', 20),
('2016.02.01-09:01:40', 'TECH', 'down', 20),
('2016.02.01-09:01:42', 'TECH', 'up', 5),
('2016.02.01-09:01:44', 'OIL', 'up', 20),
('2016.02.01-09:01:46', 'BOND', 'up', 5),
('2016.02.01-09:01:48', 'GOLD', 'div', 10),
('2016.02.01-09:01:50', 'GOLD', 'down', 5),
('2016.02.01-09:01:52', 'GOLD', 'up', 20),
('2016.02.01-09:01:54', 'IND', 'down', 10),
('2016.02.01-09:01:56', 'GOLD', 'div', 20);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`order`, `item`, `quantity`) VALUES
(3, 2, 4),
(3, 10, 2),
(3, 1, 2),
(3, 21, 1),
(3, 8, 1),
(3, 6, 1),
(4, 2, 2),
(4, 10, 1),
(4, 1, 1),
(4, 11, 1),
(4, 25, 1),
(5, 2, 1),
(6, 2, 2),
(15, 2, 1),
(14, 1, 1),
(14, 10, 1),
(14, 2, 1),
(13, 10, 1),
(13, 2, 1),
(11, 10, 1),
(11, 2, 1),
(15, 10, 1),
(15, 1, 1),
(15, 8, 1),
(15, 21, 1),
(15, 6, 1),
(15, 25, 1),
(15, 11, 1),
(16, 25, 1),
(16, 10, 1),
(16, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`num`, `date`, `status`, `total`) VALUES
(1, '0000-00-00 00:00:00', 'a', '0.00'),
(2, '0000-00-00 00:00:00', 'a', '0.00'),
(3, '0000-00-00 00:00:00', 'a', '0.00'),
(4, '0000-00-00 00:00:00', 'a', '0.00'),
(5, '0000-00-00 00:00:00', 'a', '0.00'),
(6, '0000-00-00 00:00:00', 'a', '0.00'),
(7, '0000-00-00 00:00:00', 'x', '0.00'),
(8, '0000-00-00 00:00:00', 'x', '0.00'),
(9, '0000-00-00 00:00:00', 'x', '0.00'),
(10, '0000-00-00 00:00:00', 'x', '0.00'),
(11, '0000-00-00 00:00:00', 'a', '0.00'),
(12, '0000-00-00 00:00:00', 'x', '0.00'),
(13, '0000-00-00 00:00:00', 'a', '0.00'),
(14, '2016-02-11 08:02:43', 'c', '23.40'),
(15, '2016-02-11 08:03:07', 'c', '48.24'),
(16, '2016-02-11 08:03:58', 'c', '28.24');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `Player` varchar(6) DEFAULT NULL,
  `Cash` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`Player`, `Cash`) VALUES
('Mickey', 1000),
('Donald', 3000),
('George', 2000),
('Henry', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `Code` varchar(4) DEFAULT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Category` varchar(1) DEFAULT NULL,
  `Value` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`Code`, `Name`, `Category`, `Value`) VALUES
('BOND', 'Bonds', 'B', 66),
('GOLD', 'Gold', 'B', 110),
('GRAN', 'Grain', 'B', 113),
('IND', 'Industrial', 'B', 39),
('OIL', 'Oil', 'B', 52),
('TECH', 'Tech', 'B', 37);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `DateTime` varchar(19) DEFAULT NULL,
  `Player` varchar(6) DEFAULT NULL,
  `Stock` varchar(4) DEFAULT NULL,
  `Trans` varchar(4) DEFAULT NULL,
  `Quantity` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`DateTime`, `Player`, `Stock`, `Trans`, `Quantity`) VALUES
('2016.02.01-09:01:00', 'Donald', 'BOND', 'buy', 100),
('2016.02.01-09:01:05', 'Donald', 'TECH', 'sell', 1000),
('2016.02.01-09:01:10', 'Henry', 'TECH', 'sell', 1000),
('2016.02.01-09:01:15', 'Donald', 'IND', 'sell', 1000),
('2016.02.01-09:01:20', 'George', 'GOLD', 'sell', 100),
('2016.02.01-09:01:25', 'George', 'OIL', 'buy', 500),
('2016.02.01-09:01:30', 'Henry', 'GOLD', 'sell', 100),
('2016.02.01-09:01:35', 'Henry', 'GOLD', 'buy', 1000),
('2016.02.01-09:01:40', 'Donald', 'TECH', 'buy', 100),
('2016.02.01-09:01:45', 'Donald', 'OIL', 'sell', 100),
('2016.02.01-09:01:50', 'Donald', 'TECH', 'sell', 100),
('2016.02.01-09:01:55', 'George', 'OIL', 'buy', 100),
('2016.02.01-09:01:60', 'George', 'IND', 'buy', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order`,`item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
