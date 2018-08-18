-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2018 at 12:13 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `voucher`
--

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `offer_id` bigint(20) NOT NULL auto_increment,
  `offer_name` varchar(100) NOT NULL,
  `offer_percentage` decimal(10,2) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  `is_active` varchar(1) NOT NULL,
  PRIMARY KEY  (`offer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `offers`
--


-- --------------------------------------------------------

--
-- Table structure for table `recipient`
--

CREATE TABLE IF NOT EXISTS `recipient` (
  `recipient_id` bigint(20) NOT NULL auto_increment,
  `recipient_name` varchar(100) NOT NULL,
  `recipient_email` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  `is_active` varchar(1) NOT NULL,
  PRIMARY KEY  (`recipient_id`),
  UNIQUE KEY `recipient_email` (`recipient_email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `recipient`
--


-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE IF NOT EXISTS `voucher` (
  `voucher_id` bigint(20) NOT NULL auto_increment,
  `voucher_code` varchar(20) NOT NULL,
  `offer_id` bigint(20) NOT NULL,
  `recipient_id` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  `redeemed_on` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `is_active` varchar(1) NOT NULL,
  PRIMARY KEY  (`voucher_id`),
  UNIQUE KEY `voucher_code` (`voucher_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `voucher`
--

