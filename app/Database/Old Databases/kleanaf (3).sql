-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 27, 2022 at 11:54 AM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kleanaf`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_budgets`
--

DROP TABLE IF EXISTS `tbl_budgets`;
CREATE TABLE IF NOT EXISTS `tbl_budgets` (
  `budgets_id` int(11) NOT NULL AUTO_INCREMENT,
  `budgets_date` date NOT NULL,
  `budgets_quarter` varchar(250) NOT NULL,
  `budgets_year` int(11) NOT NULL,
  `budgets_total` int(11) NOT NULL,
  `budgets_rd` int(11) NOT NULL,
  `budgets_mf` int(11) NOT NULL,
  `budgets_sm` int(11) NOT NULL,
  `budgets_cp` int(11) NOT NULL,
  PRIMARY KEY (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equipment`
--

DROP TABLE IF EXISTS `tbl_equipment`;
CREATE TABLE IF NOT EXISTS `tbl_equipment` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_purchased` varchar(250) NOT NULL,
  `equipment_item` varchar(250) NOT NULL,
  `equipment_description` varchar(250) NOT NULL,
  `equipment_qty` varchar(250) NOT NULL,
  `equipment_price` varchar(250) NOT NULL,
  `equipment_delivery` int(11) NOT NULL,
  `equipment_vat` int(11) NOT NULL,
  `equipment_supplier` varchar(250) NOT NULL,
  `invoice_file` varchar(250) NOT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_equipment`
--

INSERT INTO `tbl_equipment` (`equipment_id`, `equipment_purchased`, `equipment_item`, `equipment_description`, `equipment_qty`, `equipment_price`, `equipment_delivery`, `equipment_vat`, `equipment_supplier`, `invoice_file`) VALUES
(1, '2022-05-28', 'Stove', 'Stove ', '3', '25', 0, 0, '6', ''),
(2, '2022-06-11', 'Spatula', 'Large', '8', '5', 0, 1, '16', '1654940443_27ac32bddd2c3b2b6bc8.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

DROP TABLE IF EXISTS `tbl_expenses`;
CREATE TABLE IF NOT EXISTS `tbl_expenses` (
  `expenses_id` int(11) NOT NULL AUTO_INCREMENT,
  `expenses_date` date NOT NULL,
  `expenses_category` varchar(250) NOT NULL,
  `expenses_description` varchar(250) NOT NULL,
  `expenses_price` varchar(250) NOT NULL,
  `expenses_vat` int(11) NOT NULL,
  `expenses_supplier` varchar(250) NOT NULL,
  `expenses_file` varchar(250) DEFAULT NULL,
  `expenses_staff` varchar(250) NOT NULL,
  `expenses_status` varchar(250) NOT NULL,
  `expenses_delivery` varchar(255) DEFAULT NULL,
  `expenses_type` varchar(250) DEFAULT NULL,
  `invoice_file` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`expenses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_expenses`
--

INSERT INTO `tbl_expenses` (`expenses_id`, `expenses_date`, `expenses_category`, `expenses_description`, `expenses_price`, `expenses_vat`, `expenses_supplier`, `expenses_file`, `expenses_staff`, `expenses_status`, `expenses_delivery`, `expenses_type`, `invoice_file`) VALUES
(1, '2021-09-22', 'Ingredients', 'Agua', '11.81', 0, '4', NULL, '', '', NULL, NULL, NULL),
(2, '2021-09-25', 'Ingredients', 'Mentha Piperita', '7.29', 0, '13', NULL, '', '', NULL, NULL, NULL),
(3, '2021-09-25', 'Ingredients', 'Melaleuca Alternifolia', '17.99', 0, '13', NULL, '', '', NULL, NULL, NULL),
(4, '2021-09-25', 'Ingredients', 'Cananga Odorata', '9.89', 0, '13', NULL, '', '', NULL, NULL, NULL),
(5, '2021-09-25', 'Ingredients', 'Zingiber Officinalis', '24.09', 0, '13', NULL, '', '', NULL, NULL, NULL),
(6, '0000-00-00', 'Ingredients', 'Lavandula Angustifolia', '16.99', 0, '13', NULL, '', '', NULL, NULL, NULL),
(7, '2021-09-25', 'Ingredients', 'Cedarus Atlantica', '13.49', 0, '13', NULL, '', '', NULL, NULL, NULL),
(8, '2022-05-28', 'Media', 'Labelling', '250', 0, 'User Name', NULL, '', '', NULL, NULL, NULL),
(9, '2022-05-28', 'Media', 'Advertising', '1', 0, '8', NULL, '', '', NULL, NULL, NULL),
(10, '2022-05-28', 'Equipment', 'Stove', '25', 0, '6', NULL, '', '', NULL, NULL, NULL),
(12, '2022-05-29', 'Media', 'Advertising', '100', 0, '9', NULL, '', '', NULL, NULL, NULL),
(13, '2022-05-29', 'Media', 'Advertising', '100', 0, '9', NULL, '', '', NULL, NULL, NULL),
(14, '2022-05-29', 'Media', 'Advertising', 'N/A', 0, '9', NULL, '', '', NULL, NULL, NULL),
(15, '2022-05-29', 'Bank Charges', 'Travel', '100', 20, '20', NULL, '9', 'New', '12', NULL, NULL),
(16, '2022-06-02', 'Ingredient', 'Cedarus Atlantica', '300', 0, '8', NULL, '', '', NULL, NULL, NULL),
(17, '2022-06-02', 'Equipment', 'Stove', '599', 0, '8', NULL, '', '', NULL, NULL, NULL),
(18, '2022-06-02', 'Ingredient', 'Cedarus Atlantica', '352', 0, '4', NULL, '', '', NULL, NULL, NULL),
(19, '2022-06-02', 'Ingredient', 'Cedarus Atlantica', '750', 0, '4', NULL, '', '', NULL, NULL, NULL),
(20, '2022-06-02', 'Ingredient', 'Cedarus Atlantica', '50', 0, '4', NULL, '', '', NULL, NULL, NULL),
(21, '2022-06-02', 'Ingredient', '1', '1', 0, '8', NULL, '', '', NULL, NULL, NULL),
(22, '2022-06-02', 'Media', 'Advertising', '11', 0, '12', NULL, '', '', NULL, NULL, NULL),
(23, '2022-06-02', 'Media', 'Advertising', '111', 0, '12', NULL, '', '', NULL, NULL, NULL),
(24, '2022-06-02', 'Ingredients', 'tt', '100', 0, '1', NULL, '', '', NULL, NULL, NULL),
(25, '2022-06-10', 'Equipment', 'ttt', 'tt', 0, '1', NULL, '', '', NULL, NULL, NULL),
(26, '2022-06-03', 'Ingredient', '1', '11', 0, '8', NULL, '', '', NULL, NULL, NULL),
(27, '2022-06-03', 'Equipment', '1', '11', 0, '8', NULL, '', '', NULL, NULL, NULL),
(28, '2022-06-03', 'Ingredient', '1', '100', 0, '8', NULL, '', '', NULL, NULL, NULL),
(29, '2022-06-03', 'Equipment', '1', '190', 0, '8', NULL, '', '', NULL, NULL, NULL),
(30, '2022-06-04', 'Accountacy Fee', 'tests', '100', 9, '6', '', '12', 'New', '99', 'Choose...', '1656607087_32a4dbbe157e652ff3f2.pdf'),
(31, '2022-06-06', 'Media', 'Advertising', '10', 0, '12', NULL, '', '', NULL, NULL, NULL),
(32, '2022-06-06', 'Ingredient', '1', '100', 0, '4', NULL, '', '', NULL, NULL, NULL),
(33, '2022-06-06', 'Ingredient', '1', '20', 0, '5', NULL, '', '', NULL, NULL, NULL),
(34, '2022-06-07', 'Ingredients', 'Test', '100', 0, '17', NULL, '', '', NULL, NULL, NULL),
(35, '2022-06-11', 'Ingredient', '1', '10', 0, '3', NULL, '', '', NULL, NULL, NULL),
(36, '2022-06-11', 'Equipment', '1', '100', 0, '3', NULL, '', '', NULL, NULL, NULL),
(37, '2022-06-11', 'Equipment', 'Spatula', '5', 0, '16', NULL, '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_formula`
--

DROP TABLE IF EXISTS `tbl_formula`;
CREATE TABLE IF NOT EXISTS `tbl_formula` (
  `formula_id` int(11) NOT NULL AUTO_INCREMENT,
  `formula_date` varchar(250) NOT NULL,
  `formula_version` varchar(250) NOT NULL,
  `formula_creator` varchar(250) NOT NULL,
  `formula_comments` varchar(250) NOT NULL,
  `formula_rdplan` varchar(250) NOT NULL,
  `formula_status` varchar(250) NOT NULL,
  `formula_qa_1` varchar(250) DEFAULT NULL,
  `formula_qa_2` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`formula_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_formula`
--

INSERT INTO `tbl_formula` (`formula_id`, `formula_date`, `formula_version`, `formula_creator`, `formula_comments`, `formula_rdplan`, `formula_status`, `formula_qa_1`, `formula_qa_2`) VALUES
(1, '2022-05-15', 'Tea Tree', 'Test', 'Tea Tree Edititon of shower gel', '1', 'Approved', '', ''),
(3, '2022-05-28', 'Lust', '8', 'Lust is the sensual version of the body wash', '4', 'Approved', '', ''),
(4, '2022-05-28', 'Boost', '8', 'New citrus version for the bodywash', '4', 'Pending', '', ''),
(6, '2022-06-02', 'Body', '12', '1111', '5', 'Approved', '', ''),
(7, '2022-06-15', '2.0', '12', 'this is comment', '5', 'New', '', ''),
(8, '2022-08-10', '2.4', '12', 'This ', '5', 'New', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_formula_ingredients`
--

DROP TABLE IF EXISTS `tbl_formula_ingredients`;
CREATE TABLE IF NOT EXISTS `tbl_formula_ingredients` (
  `f_ingredients_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_ingredients_formula` varchar(250) NOT NULL,
  `f_ingredients_ingredients` varchar(250) NOT NULL,
  `f_ingredients_qty` varchar(250) NOT NULL,
  `f_ingredients_phase` varchar(250) NOT NULL,
  `f_ingredients_instructions` varchar(250) NOT NULL,
  PRIMARY KEY (`f_ingredients_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_formula_ingredients`
--

INSERT INTO `tbl_formula_ingredients` (`f_ingredients_id`, `f_ingredients_formula`, `f_ingredients_ingredients`, `f_ingredients_qty`, `f_ingredients_phase`, `f_ingredients_instructions`) VALUES
(1, '1', '3', '97', 'Phase A', 'Add to beaker'),
(2, '1', '1', '97', 'Phase B', 'Add to Phase A beaker'),
(3, '3', '1', '97', 'Phase A', 'Add to beaker'),
(4, '3', '3', '97', 'Phase B', 'Add to Beaker'),
(5, '3', '5', '97', 'Phase C', 'Add to Beaker'),
(6, '3', '7', '97', 'Phase A', 'Add to Beaker'),
(7, '4', '1', '97', 'Phase A', 'add to beaker a'),
(8, '5', '1', '97', 'Phase A', '111112'),
(10, '6', '1', '6', 'Phase A', '1004'),
(14, '6', '4', '5', 'Phase C', 'fd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredients`
--

DROP TABLE IF EXISTS `tbl_ingredients`;
CREATE TABLE IF NOT EXISTS `tbl_ingredients` (
  `ingredient_id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_date` date NOT NULL,
  `ingredient_name` varchar(250) NOT NULL,
  `ingredient_inci` varchar(250) NOT NULL,
  `ingredient_category` varchar(250) NOT NULL,
  `ingredient_qty` varchar(250) NOT NULL,
  `ingredient_vat` int(11) NOT NULL,
  `ingredient_price` varchar(250) NOT NULL,
  `ingredient_supplier` varchar(250) NOT NULL,
  `ingredient_delivery` int(11) NOT NULL,
  `invoice_file` varchar(250) NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ingredients`
--

INSERT INTO `tbl_ingredients` (`ingredient_id`, `ingredient_date`, `ingredient_name`, `ingredient_inci`, `ingredient_category`, `ingredient_qty`, `ingredient_vat`, `ingredient_price`, `ingredient_supplier`, `ingredient_delivery`, `invoice_file`) VALUES
(1, '2021-09-22', 'Distilled Water', 'Agua', 'Base', '9', 0, '11.81', '4', 0, ''),
(2, '2021-09-25', 'Peppermint Essential Oil', 'Mentha Piperita', 'Essential Oil', '5', 0, '7.29', '13', 0, ''),
(3, '2021-09-25', 'Tea Tree Essential Oil', 'Melaleuca Alternifolia', 'Essential Oil', '4', 0, '17.99', '13', 0, ''),
(4, '2021-09-25', 'Ylang Ylang Essential Oil', 'Cananga Odorata', 'Essential Oil', '5', 0, '9.89', '13', 0, ''),
(5, '2021-09-25', 'Ginger Essential Oil', 'Zingiber Officinalis', 'Essential Oil', '6', 0, '24.09', '13', 0, ''),
(6, '0000-00-00', 'Lavender Essential Oil', 'Lavandula Angustifolia', 'Essential Oil', '9', 0, '16.99', '13', 0, ''),
(7, '2021-09-25', 'Cedarwood Essential Oil', 'Cedarus Atlantica', 'Essential Oil', '8', 0, '13.49', '18', 0, '1656607255_ab513c8b9c45dd2caf83.pdf'),
(8, '2022-06-07', 'Test', 'Test', 'Oil', '5', 300, '100', '17', 100, '1654543773_eb750dac4227d90e8be4.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manuf_production`
--

DROP TABLE IF EXISTS `tbl_manuf_production`;
CREATE TABLE IF NOT EXISTS `tbl_manuf_production` (
  `manuf_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `manuf_product_date` varchar(250) NOT NULL,
  `manuf_product_formula` varchar(250) NOT NULL,
  `manuf_product_creator` varchar(250) NOT NULL,
  `manuf_product_qty` varchar(250) NOT NULL,
  `manuf_product_batch` varchar(250) NOT NULL,
  `manuf_product_status` varchar(250) NOT NULL,
  PRIMARY KEY (`manuf_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_manuf_production`
--

INSERT INTO `tbl_manuf_production` (`manuf_product_id`, `manuf_product_date`, `manuf_product_formula`, `manuf_product_creator`, `manuf_product_qty`, `manuf_product_batch`, `manuf_product_status`) VALUES
(1, '2022-05-15', '1', 'Nathan', '1000', '1-2022-05-15-Nathan', 'Produced'),
(2, '2022-05-28', '3', '8', '1500', '2-2022-05-28-8', 'Produced'),
(3, '2022-06-02', '3', '12', '500', 'TBC', 'In Progress'),
(5, '2022-06-02', '6', '12', '1000', '5-2022-06-02-12', 'Produced');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manuf_production_batch`
--

DROP TABLE IF EXISTS `tbl_manuf_production_batch`;
CREATE TABLE IF NOT EXISTS `tbl_manuf_production_batch` (
  `manuf_production_batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `manuf_production_batch_production` varchar(250) NOT NULL,
  `manuf_production_batch_ingredients` varchar(250) NOT NULL,
  `manuf_production_batch_qty` varchar(250) NOT NULL,
  PRIMARY KEY (`manuf_production_batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_manuf_production_batch`
--

INSERT INTO `tbl_manuf_production_batch` (`manuf_production_batch_id`, `manuf_production_batch_production`, `manuf_production_batch_ingredients`, `manuf_production_batch_qty`) VALUES
(1, '1', '3', '505'),
(2, '1', '1', '500'),
(3, '2', '1', '825'),
(4, '2', '7', '75'),
(5, '2', '3', '150'),
(6, '2', '5', '450'),
(20, '5', '1', '43'),
(21, '5', '4', '44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_marketing`
--

DROP TABLE IF EXISTS `tbl_marketing`;
CREATE TABLE IF NOT EXISTS `tbl_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `marketing_date` varchar(250) NOT NULL,
  `marketing_platform` varchar(250) NOT NULL,
  `marketing_budget` varchar(250) NOT NULL,
  `marketing_start` varchar(250) NOT NULL,
  `marketing_end` varchar(250) NOT NULL,
  `marketing_duration` varchar(250) NOT NULL,
  `marketing_outcome` varchar(250) NOT NULL,
  `marketing_target` varchar(250) NOT NULL,
  `marketing_details` varchar(250) NOT NULL,
  `marketing_status` varchar(250) NOT NULL,
  `marketing_result` varchar(250) NOT NULL,
  `marketing_creator` varchar(250) NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_marketing`
--

INSERT INTO `tbl_marketing` (`marketing_id`, `marketing_date`, `marketing_platform`, `marketing_budget`, `marketing_start`, `marketing_end`, `marketing_duration`, `marketing_outcome`, `marketing_target`, `marketing_details`, `marketing_status`, `marketing_result`, `marketing_creator`) VALUES
(1, '28/05/2022', 'Facebook', '150', '2022-05-02', '2022-05-28', '27', 'Conversions', '500', 'Roas 3', 'New', 'TBC', ''),
(2, '28/05/2022', 'Facebook', '100', '2022-05-07', '2022-06-04', '29', 'Conversions', '300', 'Target a roas of 3', 'New', 'TBC', 'New'),
(3, '28/05/2022', 'Facebook', '100', '2022-05-01', '2022-05-30', '30', 'Conversions', '300', 'Target roas of 3', 'New', 'TBC', 'New'),
(4, '28/05/2022', 'Facebook', '100', '2022-05-01', '2022-05-30', '30', 'Conversions', '300', 'Target a roas of 3', 'New', 'In Progress', '8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policies`
--

DROP TABLE IF EXISTS `tbl_policies`;
CREATE TABLE IF NOT EXISTS `tbl_policies` (
  `policy_id` int(11) NOT NULL AUTO_INCREMENT,
  `policy_title` varchar(255) NOT NULL,
  `policy_effective_date` date NOT NULL,
  `policy_creator` varchar(255) NOT NULL,
  PRIMARY KEY (`policy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_policies`
--

INSERT INTO `tbl_policies` (`policy_id`, `policy_title`, `policy_effective_date`, `policy_creator`) VALUES
(8, 'Safety Policies&nbsp;  ', '2022-06-05', '12'),
(7, 'PersonnelPolicies ', '2022-06-05', '12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_processes`
--

DROP TABLE IF EXISTS `tbl_processes`;
CREATE TABLE IF NOT EXISTS `tbl_processes` (
  `process_id` int(11) NOT NULL AUTO_INCREMENT,
  `process_title` varchar(255) NOT NULL,
  `process_effective_date` date NOT NULL,
  `process_creator` varchar(255) NOT NULL,
  PRIMARY KEY (`process_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_processes`
--

INSERT INTO `tbl_processes` (`process_id`, `process_title`, `process_effective_date`, `process_creator`) VALUES
(2, 'Research &amp; Development Proceed&nbsp;', '2022-06-05', '12'),
(3, 'Corporate Process', '2022-06-05', '12'),
(5, 'Manufacturing Process', '2022-06-05', '12'),
(6, 'Sales', '2022-06-06', '12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rd_log`
--

DROP TABLE IF EXISTS `tbl_rd_log`;
CREATE TABLE IF NOT EXISTS `tbl_rd_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_date` date NOT NULL,
  `log_product` varchar(250) NOT NULL,
  `log_outcome` varchar(250) NOT NULL,
  `log_comments` varchar(250) NOT NULL,
  `log_method` varchar(250) NOT NULL,
  `log_ratios` varchar(250) NOT NULL,
  `log_user` varchar(250) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rd_log`
--

INSERT INTO `tbl_rd_log` (`log_id`, `log_date`, `log_product`, `log_outcome`, `log_comments`, `log_method`, `log_ratios`, `log_user`) VALUES
(1, '2022-05-28', '3', 'Success', 'Success', 'N/A', 'N/A', '8'),
(2, '2022-05-29', '3', 'Fail', 'Test', 'N/A', 'N/A', '9'),
(5, '2022-06-02', '7', 'Success', 'N/A', 'N/A', 'N/A', '12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rd_media`
--

DROP TABLE IF EXISTS `tbl_rd_media`;
CREATE TABLE IF NOT EXISTS `tbl_rd_media` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_date` date NOT NULL,
  `media_category` varchar(250) NOT NULL,
  `media_creator` varchar(250) NOT NULL,
  `media_product` varchar(250) NOT NULL,
  `media_comments` varchar(250) NOT NULL,
  `media_cost` varchar(250) NOT NULL,
  `media_vat` int(11) NOT NULL,
  `media_status` varchar(250) NOT NULL,
  `media_file` varchar(250) NOT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rd_media`
--

INSERT INTO `tbl_rd_media` (`media_id`, `media_date`, `media_category`, `media_creator`, `media_product`, `media_comments`, `media_cost`, `media_vat`, `media_status`, `media_file`) VALUES
(2, '2022-05-28', 'Advertising', 'User Name', '3', 'New label', '1', 0, 'New', 'coa_-_btms_225_-_27263.pdf'),
(3, '2022-05-29', 'Advertising', 'User Name', '3', 'Test', '100', 0, 'Pending', 'coa_-_btms_225_-_27264.pdf'),
(4, '2022-05-29', 'Advertising', 'User Name', '3', 'N/A', '100', 0, 'Approved', 'coa_-_btms_225_-_27265.pdf'),
(5, '2022-05-29', 'Advertising', '9', '3', 'N/A', 'N/A', 0, 'Pending', 'WhatsApp Image 2022-05-28 at 11.31.51 AM.jpeg'),
(8, '2022-06-06', 'Advertising', '12', '6', 'test', '10', 2, 'New', '1654534556_367a80954c4836946f0e.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rd_plan`
--

DROP TABLE IF EXISTS `tbl_rd_plan`;
CREATE TABLE IF NOT EXISTS `tbl_rd_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_date` varchar(250) NOT NULL,
  `plan_user` varchar(250) NOT NULL,
  `plan_title` varchar(250) NOT NULL,
  `plan_description` varchar(250) NOT NULL,
  `plan_status` varchar(250) NOT NULL,
  `plan_file` varchar(250) NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rd_plan`
--

INSERT INTO `tbl_rd_plan` (`plan_id`, `plan_date`, `plan_user`, `plan_title`, `plan_description`, `plan_status`, `plan_file`) VALUES
(5, '2022-06-02', '12', 'test', 'ttt', 'Approved', '1654336739_4e2be3c4606ce99c0bb7.pdf'),
(6, '2022-06-03', '12', 'this', 'si', 'New', '1654336648_ff791275168d648d7380.png'),
(7, '2022-06-03', '12', 'Not', 'this', 'New', '1654336610_51796cdb4cc5aab3e692.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rd_production`
--

DROP TABLE IF EXISTS `tbl_rd_production`;
CREATE TABLE IF NOT EXISTS `tbl_rd_production` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_date` varchar(250) NOT NULL,
  `product_formula` varchar(250) NOT NULL,
  `product_creator` varchar(250) NOT NULL,
  `product_qty` varchar(250) NOT NULL,
  `product_batch` varchar(250) NOT NULL,
  `product_status` varchar(250) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rd_production`
--

INSERT INTO `tbl_rd_production` (`product_id`, `product_date`, `product_formula`, `product_creator`, `product_qty`, `product_batch`, `product_status`) VALUES
(1, '2022-05-15', '1', 'Test', '1000', '1-2022-05-15-Test', 'Produced'),
(2, '2022-05-15', '1', 'Test', '1000', '2-2022-05-15-Test', 'Produced'),
(3, '2022-05-28', '3', '8', '5000', '3-2022-05-28-8', 'Produced'),
(4, '2022-05-28', '3', '8', '7500', 'TBC', 'In Progress'),
(5, '2022-06-02', '3', '12', '11', 'TBC', 'In Progress'),
(7, '2022-06-02', '6', '12', '400', '7-2022-06-02-12', 'Produced'),
(8, '2022-06-02', '6', '12', '100', '8-2022-06-02-12', 'Produced'),
(9, '2022-08-10', 'Choose...', '12', '32', 'TBC', 'In Progress'),
(10, '2022-08-19', 'Choose...', '12', '8', 'TBC', 'In Progress');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rd_production_batch`
--

DROP TABLE IF EXISTS `tbl_rd_production_batch`;
CREATE TABLE IF NOT EXISTS `tbl_rd_production_batch` (
  `production_batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `production_batch_production` varchar(250) NOT NULL,
  `production_batch_ingredients` varchar(250) NOT NULL,
  `production_batch_qty` varchar(250) NOT NULL,
  PRIMARY KEY (`production_batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rd_production_batch`
--

INSERT INTO `tbl_rd_production_batch` (`production_batch_id`, `production_batch_production`, `production_batch_ingredients`, `production_batch_qty`) VALUES
(53, '8', '1', '3'),
(54, '8', '4', '3'),
(55, '7', '1', '2'),
(56, '7', '4', '3'),
(57, '8', '1', '3'),
(58, '8', '4', '2'),
(59, '7', '1', '2'),
(60, '7', '4', '1'),
(61, '8', '1', '4'),
(62, '8', '4', '6'),
(63, '8', '1', '4'),
(64, '8', '4', '6'),
(65, '8', '1', '4'),
(66, '8', '4', '6'),
(67, '8', '1', '4'),
(68, '8', '4', '6'),
(69, '8', '1', '4'),
(70, '8', '4', '6'),
(71, '8', '1', '4'),
(72, '8', '4', '6'),
(73, '8', '1', '4'),
(74, '8', '4', '6'),
(75, '8', '1', '4'),
(76, '8', '4', '6'),
(77, '8', '1', '4'),
(78, '8', '4', '6'),
(79, '8', '1', '4'),
(80, '8', '4', '6'),
(81, '8', '1', '4'),
(82, '8', '4', '6'),
(83, '8', '1', '4'),
(84, '8', '4', '6'),
(85, '8', '1', '4'),
(86, '8', '4', '6'),
(87, '8', '1', '4'),
(88, '8', '4', '6'),
(89, '8', '1', '4'),
(90, '8', '4', '6'),
(91, '8', '1', '4'),
(92, '8', '4', '6'),
(93, '8', '1', '4'),
(94, '8', '1', '4'),
(95, '8', '4', '6'),
(96, '8', '1', '4'),
(97, '8', '4', '6'),
(98, '8', '1', '4'),
(99, '8', '4', '6'),
(100, '8', '1', '4'),
(101, '8', '4', '6'),
(102, '8', '1', '1'),
(103, '8', '4', '1'),
(104, '8', '1', '6'),
(105, '8', '4', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

DROP TABLE IF EXISTS `tbl_schedule`;
CREATE TABLE IF NOT EXISTS `tbl_schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheduled_Id` varchar(250) NOT NULL,
  `schedule_description` varchar(5000) DEFAULT NULL,
  `schedule_endtime` datetime DEFAULT NULL,
  `schedule_endtimezone` varchar(250) DEFAULT NULL,
  `schedule_following_id` varchar(45) DEFAULT NULL,
  `schedule_isallday` varchar(5) DEFAULT NULL,
  `schedule_location` varchar(500) DEFAULT NULL,
  `schedule_recurrenceEx` varchar(1000) DEFAULT NULL,
  `schedule_recID` varchar(45) DEFAULT NULL,
  `schedule_recRule` varchar(1000) DEFAULT NULL,
  `schedule_startTime` datetime DEFAULT NULL,
  `schedule_startTimezone` varchar(250) DEFAULT NULL,
  `schedule_subject` varchar(5000) DEFAULT NULL,
  `schedule_generate_date` varchar(500) DEFAULT NULL,
  `schedule_guid` varchar(45) DEFAULT NULL,
  `schedule_assigned` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`schedule_id`, `scheduled_Id`, `schedule_description`, `schedule_endtime`, `schedule_endtimezone`, `schedule_following_id`, `schedule_isallday`, `schedule_location`, `schedule_recurrenceEx`, `schedule_recID`, `schedule_recRule`, `schedule_startTime`, `schedule_startTimezone`, `schedule_subject`, `schedule_generate_date`, `schedule_guid`, `schedule_assigned`, `created_at`, `deleted_at`) VALUES
(4, '1', 'this is', '2022-08-03 00:00:00', '', '', 'true', '', '', '', 'FREQ=MONTHLY;BYMONTHDAY=3;INTERVAL=1;UNTIL=20220829T230000Z;', '2022-08-02 00:00:00', '', 'HIle', '', '689ff98d-505a-abe1-b96f-e18e6238971a', 12, NULL, NULL),
(2, '2', '', '2022-08-03 09:30:00', '', '', 'false', '', '', '', '', '2022-08-03 09:00:00', '', 'HIeil', '', '', NULL, NULL, NULL),
(3, '3', '', '2022-08-02 00:00:00', '', '', 'true', '', '', '', 'FREQ=WEEKLY;BYDAY=MO,TH,SA;INTERVAL=5;UNTIL=20220929T230000Z;', '2022-08-01 00:00:00', '', 'Nwe 1', '', '', NULL, NULL, NULL),
(6, '0b86e38a-c68a-949c-8b12-2aade7699e5a', 'this is descript', '2022-08-02 00:00:00', '', '', 'true', 'Location updated', '', '', '', '2022-08-01 00:00:00', '', 'this is title updated', '', '6bb6a5a0-c539-8af7-28d8-70bcd6188c68', NULL, NULL, NULL),
(8, '080cb390-45da-81da-bb08-92b9ff4a9c02', 'This is for children day entertainment, So you have to be there', '2022-08-17 23:00:00', 'Europe/Madrid', '', 'false', 'Ayedaade Grammar School', '', '', 'FREQ=YEARLY;BYMONTHDAY=27;BYMONTH=5;INTERVAL=1;COUNT=2;', '2022-08-17 00:00:00', 'Africa/Lagos', 'Children Day', '', '8b3380a1-9918-bd5c-3ab8-6292ae59868a', 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stockcheck`
--

DROP TABLE IF EXISTS `tbl_stockcheck`;
CREATE TABLE IF NOT EXISTS `tbl_stockcheck` (
  `stockcheck_id` int(11) NOT NULL AUTO_INCREMENT,
  `stockcheck_date` varchar(250) NOT NULL,
  `stockcheck_checker` varchar(250) NOT NULL,
  `stockcheck_status` varchar(250) NOT NULL,
  PRIMARY KEY (`stockcheck_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stockcheck`
--

INSERT INTO `tbl_stockcheck` (`stockcheck_id`, `stockcheck_date`, `stockcheck_checker`, `stockcheck_status`) VALUES
(1, '2022-05-28', '8', 'Complete'),
(2, '2022-06-11', '12', 'Complete'),
(3, '2022-06-11', '12', 'Complete'),
(4, '2022-06-11', '12', 'Complete'),
(6, '2022-06-11', '12', 'Complete'),
(7, '2022-06-15', '12', 'Complete'),
(8, '2022-08-19', '12', 'In Progress');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stockcheck_delivery`
--

DROP TABLE IF EXISTS `tbl_stockcheck_delivery`;
CREATE TABLE IF NOT EXISTS `tbl_stockcheck_delivery` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_date` varchar(250) NOT NULL,
  `delivery_supplier` varchar(250) NOT NULL,
  `delivery_logger` varchar(250) NOT NULL,
  `delivery_price` varchar(250) NOT NULL,
  `delivery_vat` int(11) NOT NULL,
  `delivery_fee` varchar(250) NOT NULL,
  `invoice_file` varchar(250) NOT NULL,
  `delivery_status` varchar(250) NOT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stockcheck_delivery`
--

INSERT INTO `tbl_stockcheck_delivery` (`delivery_id`, `delivery_date`, `delivery_supplier`, `delivery_logger`, `delivery_price`, `delivery_vat`, `delivery_fee`, `invoice_file`, `delivery_status`) VALUES
(2, '2022-06-02', '8', '12', '45', 0, '15', '', ''),
(3, '2022-06-06', '4', '12', '100', 24, '20', '1654536926_0332fe3c54b669d567bb.pdf', 'Completed'),
(4, '2022-06-07', '5', '12', '99', 10, '50', '1654537143_77476ab5b5191065c537.pdf', 'Completed'),
(5, '2022-06-10', '3', '12', '500', 35, '12', '1654940096_0a37b0765144c7dcb7c9.pdf', 'Completed'),
(6, '2022-06-10', '4', '12', '100', 20, '10', '1654940532_7e855ae5b41e0a4d3661.pdf', 'Started');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stockcheck_delivery_items`
--

DROP TABLE IF EXISTS `tbl_stockcheck_delivery_items`;
CREATE TABLE IF NOT EXISTS `tbl_stockcheck_delivery_items` (
  `delivery_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_id` varchar(250) NOT NULL,
  `delivery_item_qty` varchar(250) NOT NULL,
  `delivery_item_category` varchar(250) NOT NULL,
  `delivery_equipment_item` varchar(250) NOT NULL,
  `delivery_ingredient_item` varchar(250) NOT NULL,
  `delivery_item_date` datetime NOT NULL,
  `delivery_item_price` varchar(250) NOT NULL,
  PRIMARY KEY (`delivery_items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stockcheck_delivery_items`
--

INSERT INTO `tbl_stockcheck_delivery_items` (`delivery_items_id`, `delivery_id`, `delivery_item_qty`, `delivery_item_category`, `delivery_equipment_item`, `delivery_ingredient_item`, `delivery_item_date`, `delivery_item_price`) VALUES
(1, '1', '9598', 'Ingredient', '', '1', '2022-05-28 08:06:07', ''),
(2, '1', '5', 'Equipment', '1', '', '2022-05-28 08:07:09', ''),
(3, '1', '100', 'Ingredient', '', '6', '2022-06-02 12:54:09', ''),
(13, '2', '10', 'Equipment', '1', '', '2022-06-02 19:56:16', '599'),
(14, '1', '999999', 'Ingredient', '', '1', '2022-06-02 19:57:58', '352'),
(15, '1', '321', 'Ingredient', '', '1', '2022-06-02 19:58:42', '750'),
(16, '1', '7', 'Ingredient', '', '1', '2022-06-02 19:59:22', '50'),
(19, '2', '11', 'Ingredient', '', '1', '2022-06-03 01:22:10', '11'),
(20, '2', '11', 'Equipment', '1', '', '2022-06-03 01:22:15', '11'),
(21, '2', '100', 'Ingredient', '', '1', '2022-06-03 01:26:58', '100'),
(22, '2', '100', 'Equipment', '1', '', '2022-06-03 01:27:05', '190'),
(23, '3', '9', 'Ingredient', '', '1', '2022-06-06 18:38:13', '100'),
(24, '4', '9', 'Ingredient', '', '1', '2022-06-06 18:39:14', '20'),
(26, '5', '5', 'Equipment', '1', '', '2022-06-11 10:36:43', '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stockcheck_items`
--

DROP TABLE IF EXISTS `tbl_stockcheck_items`;
CREATE TABLE IF NOT EXISTS `tbl_stockcheck_items` (
  `stockcheck_items_id` int(11) NOT NULL,
  `stockcheck_id` int(11) NOT NULL,
  `stockcheck_item_category` varchar(250) NOT NULL,
  `stockcheck_item_expected` int(11) NOT NULL,
  `stockcheck_item_actual` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stockcheck_items`
--

INSERT INTO `tbl_stockcheck_items` (`stockcheck_items_id`, `stockcheck_id`, `stockcheck_item_category`, `stockcheck_item_expected`, `stockcheck_item_actual`) VALUES
(1, 4, 'ingredient', 7, 21),
(2, 4, 'ingredient', 8, 32),
(3, 4, 'ingredient', 5, 2),
(4, 4, 'ingredient', 4, 4),
(5, 4, 'ingredient', 7, 23),
(6, 4, 'ingredient', 9, 54),
(7, 4, 'ingredient', 5, 22),
(8, 4, 'ingredient', 8, 32),
(1, 4, 'equipment', 9, 28),
(2, 4, 'equipment', 5, 30),
(1, 6, 'ingredient', 21, 2),
(2, 6, 'ingredient', 32, 5),
(3, 6, 'ingredient', 2, 4),
(4, 6, 'ingredient', 4, 8),
(5, 6, 'ingredient', 23, 6),
(6, 6, 'ingredient', 54, 9),
(7, 6, 'ingredient', 22, 7),
(8, 6, 'ingredient', 32, 5),
(1, 6, 'equipment', 28, 3),
(2, 6, 'equipment', 30, 7),
(1, 7, 'ingredient', 2, 7),
(2, 7, 'ingredient', 5, 5),
(3, 7, 'ingredient', 4, 4),
(4, 7, 'ingredient', 8, 8),
(5, 7, 'ingredient', 6, 6),
(6, 7, 'ingredient', 9, 9),
(7, 7, 'ingredient', 8, 8),
(8, 7, 'ingredient', 5, 5),
(1, 7, 'equipment', 3, 3),
(2, 7, 'equipment', 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_policies`
--

DROP TABLE IF EXISTS `tbl_sub_policies`;
CREATE TABLE IF NOT EXISTS `tbl_sub_policies` (
  `p_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `policy_id` int(11) NOT NULL,
  `p_sub_title` varchar(45) NOT NULL,
  `p_sub_date` varchar(45) NOT NULL,
  `p_sub_file` varchar(5000) NOT NULL,
  `delete_at` datetime NOT NULL,
  PRIMARY KEY (`p_sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_policies`
--

INSERT INTO `tbl_sub_policies` (`p_sub_id`, `policy_id`, `p_sub_title`, `p_sub_date`, `p_sub_file`, `delete_at`) VALUES
(4, 7, 'Disciplinary Action', '2022-06-05', '', '0000-00-00 00:00:00'),
(5, 7, 'Employee Complaints', '2022-06-05', '', '0000-00-00 00:00:00'),
(7, 7, 'Recruitments', '2022-06-05', '', '0000-00-00 00:00:00'),
(8, 7, 'Equality & Diversity', '2022-06-05', '', '0000-00-00 00:00:00'),
(9, 8, 'Workplace Health & Safety', '2022-06-05', '', '0000-00-00 00:00:00'),
(10, 8, 'Manufacturing Health & Safety', '2022-06-05', '1654447927_0829e1bb459679566d92.pdf', '0000-00-00 00:00:00'),
(11, 8, 'Home Working', '2022-06-05', '', '0000-00-00 00:00:00'),
(12, 9, 'Find the value of x? in the equation', '2022-06-05', '1654461333_ccf9ff63f7104b446943.pdf', '0000-00-00 00:00:00'),
(13, 7, 'Test', '2022-06-06', '1654543556_49e8b12b9e922c1e827e.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_processes`
--

DROP TABLE IF EXISTS `tbl_sub_processes`;
CREATE TABLE IF NOT EXISTS `tbl_sub_processes` (
  `pr_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` varchar(255) NOT NULL,
  `pr_sub_title` varchar(255) NOT NULL,
  `pr_sub_file` varchar(5000) NOT NULL,
  `delete_at` datetime NOT NULL,
  `pr_sub_date` varchar(45) NOT NULL,
  PRIMARY KEY (`pr_sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_processes`
--

INSERT INTO `tbl_sub_processes` (`pr_sub_id`, `process_id`, `pr_sub_title`, `pr_sub_file`, `delete_at`, `pr_sub_date`) VALUES
(1, '2', 'Create Research & Development Plan', '1654468841_14acf20d9d46d188da42.pdf', '0000-00-00 00:00:00', '2022-06-05'),
(3, '6', 'Marketing ', '1654543469_ff806c8199e0318e563b.pdf', '0000-00-00 00:00:00', '2022-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

DROP TABLE IF EXISTS `tbl_suppliers`;
CREATE TABLE IF NOT EXISTS `tbl_suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(250) NOT NULL,
  `supplier_location` varchar(250) NOT NULL,
  `supplier_category` varchar(250) NOT NULL,
  `supplier_eco` varchar(250) NOT NULL,
  `supplier_products` varchar(250) NOT NULL,
  `supplier_pricing` varchar(250) NOT NULL,
  `supplier_documents` varchar(250) NOT NULL,
  `supplier_delivery` varchar(250) NOT NULL,
  `supplier_service` varchar(250) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`supplier_id`, `supplier_name`, `supplier_location`, `supplier_category`, `supplier_eco`, `supplier_products`, `supplier_pricing`, `supplier_documents`, `supplier_delivery`, `supplier_service`) VALUES
(1, 'Ionos', 'ionos.co.uk', 'Other', '1', '5', '5', '5', '5', '4'),
(2, 'Envato', 'envato.com', 'Other', '1', '1', '3', '5', '5', '5'),
(3, 'Fiverr', 'fiverr.com', 'Other', '1', '4', '5', '5', '5', '4'),
(4, 'APC', 'apcpure.com', 'Ingredients', '1', '3', '5', '5', '3', '5'),
(5, 'Mystic Moments', 'mysticmomentsuk.com', 'Ingredients', '2', '3', '3', '5', '5', '3'),
(6, 'eBay', 'ebay.co.uk', 'Other', '1', '4', '5', '1', '3', '3'),
(7, 'The Soapery', 'thesoapery.co.uk', 'Ingredients', '5', '4', '5', '2', '5', '5'),
(8, 'Naturally Thinking', 'naturallythinking.com', 'Ingredients', '5', '5', '4', '4', '4', '5'),
(9, 'The Soap Kitchen', 'thesoapkitchen.co.uk', 'Ingredients', '2', '2', '3', '5', '1', '5'),
(10, 'Makers Ingredients', 'www.makersingredients.com', 'Ingredients', '2', '2', '1', '5', '1', '5'),
(11, 'Gracefruit', 'www.gracefruit.com', 'Ingredients', '1', '1', '3', '4', '2', '5'),
(12, 'Wilko', 'wilko.com', 'Equipment', '1', '3', '4', '5', '5', '5'),
(13, 'Freshskin', 'freshskin.co.uk', 'Ingredients', '3', '5', '5', '5', '5', '5'),
(14, 'Ampulla', 'ampulla.co.uk', 'Other', '1', '2', '4', '5', '1', '5'),
(15, 'Hobbycraft', 'hobbycraft.co.uk', 'Equipment', '1', '2', '3', '5', '5', '5'),
(16, 'Amazon', 'amazon.co.uk', 'Equipment', '2', '3', '3', '2', '5', '5'),
(17, 'Poundland', 'poundland.co.uk', 'Equipment', '1', '2', '5', '1', '5', '5'),
(18, 'iBottles', 'ibottles.co.uk', 'Other', '1', '4', '4', '4', '2', '5'),
(19, 'Home Bargins', 'homebargins.co.uk', 'Other', '1', '1', '4', '1', '5', '5'),
(20, 'Aldi', 'aldi.co.uk', 'Other', '1', '1', '3', '1', '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_first_name` varchar(50) NOT NULL,
  `staff_last_name` varchar(50) NOT NULL,
  `staff_email` varchar(100) NOT NULL,
  `staff_password` varchar(50) NOT NULL,
  `staff_role` varchar(50) NOT NULL,
  `staff_department` varchar(250) NOT NULL,
  `staff_level` varchar(250) NOT NULL,
  `staff_phone` varchar(250) NOT NULL,
  `staff_bio` varchar(250) NOT NULL,
  `staff_image` varchar(250) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`staff_id`, `staff_first_name`, `staff_last_name`, `staff_email`, `staff_password`, `staff_role`, `staff_department`, `staff_level`, `staff_phone`, `staff_bio`, `staff_image`) VALUES
(5, 'Nathan', 'Reid', 'nathan.reid@kleanaf.com', '123456', 'CEO', 'All Access', 'Authorisor', '', '', ''),
(8, 'Test', 'User', 'test@kleanaf.com', '123456', 'Accountant', 'Corporate', 'Editor', '', '', ''),
(9, 'Rochelle', 'Saunders', 'rsaunders@kleanaf.com', '123456', 'Administrator', 'Research & Development', 'Contributor', '', '', ''),
(10, 'Authorisor', 'Test', 'auth@kleanaf.com', '', 'Manager', 'All Access', 'Authorisor', '', '', ''),
(11, 'Test1', 'User', 'test1@kleanaf.com', '123456', 'Accountant', 'Corporate', 'Authorisor', '', '', 'image1.jpeg'),
(12, 'Nathan', 'Reid', 'nathanr@kleanaf.com', '000000', 'CEO', 'All Access', 'Authorisor', '', '', 'Nathan.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
