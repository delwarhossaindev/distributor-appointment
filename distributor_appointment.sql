-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2024 at 03:38 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distributor_appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_details`
--

DROP TABLE IF EXISTS `applicant_details`;
CREATE TABLE IF NOT EXISTS `applicant_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_info_master_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ownership_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operating_market` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operating_business_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operating_business_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avg_annual_turnover` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicant_details`
--

INSERT INTO `applicant_details` (`id`, `distributorship_info_master_id`, `name`, `father_name`, `mother_name`, `present_address`, `permanent_address`, `nid_no`, `tin_no`, `business_name`, `ownership_type`, `operating_market`, `operating_business_type`, `operating_business_year`, `avg_annual_turnover`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'taukir', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 03:41:47', '2024-06-06 03:41:47'),
(2, 2, 'testaci', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 06:24:51', '2024-06-06 06:24:51'),
(3, 3, 'ERA', 'ghhv', 'ghhh', 'ghhb', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 06:50:19', '2024-06-06 06:50:19'),
(4, 4, 'test', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 03:31:15', '2024-06-09 03:31:15'),
(5, 5, 'test1', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:20:18', '2024-06-09 04:20:18'),
(6, 6, 'test2', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:21:20', '2024-06-09 04:21:20'),
(7, 7, 'test3', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:25:14', '2024-06-09 04:25:14'),
(8, 8, 'test30', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:28:22', '2024-06-09 04:28:22'),
(9, 9, 'hellodata', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:34:54', '2024-06-09 04:34:54'),
(10, 10, 'Delwar', 'fjgg', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 07:35:35', '2024-06-09 07:35:35'),
(11, 11, 'ira', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:56:37', '2024-06-12 02:56:37'),
(12, 12, 'ira', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:56:41', '2024-06-12 02:56:41'),
(13, 13, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:59:49', '2024-06-12 02:59:49'),
(14, 14, 'test12', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 03:00:12', '2024-06-12 03:00:12'),
(15, 15, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-19 01:10:29', '2024-06-19 01:10:29'),
(16, 16, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:30', '2024-11-05 06:58:30'),
(17, 17, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:30', '2024-11-05 06:58:30'),
(18, 18, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(19, 19, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(20, 20, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(21, 21, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 07:29:28', '2024-11-05 07:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `business_information`
--

DROP TABLE IF EXISTS `business_information`;
CREATE TABLE IF NOT EXISTS `business_information` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_info_master_id` int DEFAULT NULL,
  `coverage_info` text COLLATE utf8mb4_unicode_ci,
  `month_business_salt` text COLLATE utf8mb4_unicode_ci,
  `month_business_flour` text COLLATE utf8mb4_unicode_ci,
  `month_business_oil` text COLLATE utf8mb4_unicode_ci,
  `month_business_rice` text COLLATE utf8mb4_unicode_ci,
  `month_business_pulse` text COLLATE utf8mb4_unicode_ci,
  `month_business_tea` text COLLATE utf8mb4_unicode_ci,
  `month_business_dairy` text COLLATE utf8mb4_unicode_ci,
  `month_business` text COLLATE utf8mb4_unicode_ci,
  `comm_earnings` text COLLATE utf8mb4_unicode_ci,
  `vehicle_prod` text COLLATE utf8mb4_unicode_ci,
  `sr_productivity` text COLLATE utf8mb4_unicode_ci,
  `urban_wetmarket_grocer` text COLLATE utf8mb4_unicode_ci,
  `urban_neighborhood_grocer` text COLLATE utf8mb4_unicode_ci,
  `urban_general_store` text COLLATE utf8mb4_unicode_ci,
  `urban_cosmetic_store` text COLLATE utf8mb4_unicode_ci,
  `confectionary` text COLLATE utf8mb4_unicode_ci,
  `urban_retail_coverage` text COLLATE utf8mb4_unicode_ci,
  `smmt` text COLLATE utf8mb4_unicode_ci,
  `chemist_pharmacy` text COLLATE utf8mb4_unicode_ci,
  `rural_grocer` text COLLATE utf8mb4_unicode_ci,
  `tong_tea_stall` text COLLATE utf8mb4_unicode_ci,
  `horeca` text COLLATE utf8mb4_unicode_ci,
  `rural_retail_coverage` text COLLATE utf8mb4_unicode_ci,
  `dd_institution` text COLLATE utf8mb4_unicode_ci,
  `others_channel` text COLLATE utf8mb4_unicode_ci,
  `route_wholesale` text COLLATE utf8mb4_unicode_ci,
  `csm_route_ols` text COLLATE utf8mb4_unicode_ci,
  `sd_coverage_ols` text COLLATE utf8mb4_unicode_ci,
  `alt_coverage` text COLLATE utf8mb4_unicode_ci,
  `direct_coverage` text COLLATE utf8mb4_unicode_ci,
  `controlled_coverage` text COLLATE utf8mb4_unicode_ci,
  `daily_total_routes` text COLLATE utf8mb4_unicode_ci,
  `bi_weekly_3_total_routes` text COLLATE utf8mb4_unicode_ci,
  `bi_weekly_2_total_routes` text COLLATE utf8mb4_unicode_ci,
  `weekly_total_routes` text COLLATE utf8mb4_unicode_ci,
  `fortnightly_total_routes` text COLLATE utf8mb4_unicode_ci,
  `daily_total_sections` text COLLATE utf8mb4_unicode_ci,
  `bi_weekly_3_total_sections` text COLLATE utf8mb4_unicode_ci,
  `bi_weekly_2_total_sections` text COLLATE utf8mb4_unicode_ci,
  `weekly_total_sections` text COLLATE utf8mb4_unicode_ci,
  `fortnightly_total_sections` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `peripheral_db_east` text COLLATE utf8mb4_unicode_ci,
  `peripheral_db_west` text COLLATE utf8mb4_unicode_ci,
  `peripheral_db_north` text COLLATE utf8mb4_unicode_ci,
  `peripheral_db_south` text COLLATE utf8mb4_unicode_ci,
  `peripheral_md_east` text COLLATE utf8mb4_unicode_ci,
  `peripheral_md_west` text COLLATE utf8mb4_unicode_ci,
  `peripheral_md_north` text COLLATE utf8mb4_unicode_ci,
  `peripheral_md_south` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_manager` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_supervisor` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_comp_operator` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_csm` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_office_clerk` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_godown_keeper` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_peon_guards` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_driver_nmv` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_others` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_field_forces` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_sales_representative` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_delivery_man` text COLLATE utf8mb4_unicode_ci,
  `back_office_team_driver_mech_vehicle` text COLLATE utf8mb4_unicode_ci,
  `back_office_force` text COLLATE utf8mb4_unicode_ci,
  `total_manpower` text COLLATE utf8mb4_unicode_ci,
  `logistics_vehicles` text COLLATE utf8mb4_unicode_ci,
  `logistics_number_of_mv_4wh` text COLLATE utf8mb4_unicode_ci,
  `logistics_tempoo_3whl` text COLLATE utf8mb4_unicode_ci,
  `logistics_engine_boat_mv` text COLLATE utf8mb4_unicode_ci,
  `logistics_number_of_nmv` text COLLATE utf8mb4_unicode_ci,
  `logistics_total_vehicles` text COLLATE utf8mb4_unicode_ci,
  `logistics_vehicle_section` text COLLATE utf8mb4_unicode_ci,
  `logistics_ol_productivity` text COLLATE utf8mb4_unicode_ci,
  `logistics_route_prod` text COLLATE utf8mb4_unicode_ci,
  `logistics_section_prod` text COLLATE utf8mb4_unicode_ci,
  `logistics_route` text COLLATE utf8mb4_unicode_ci,
  `route_service_mv_route` text COLLATE utf8mb4_unicode_ci,
  `route_service_nmv_route` text COLLATE utf8mb4_unicode_ci,
  `outlet_coverage_mv_route` text COLLATE utf8mb4_unicode_ci,
  `outlet_coverage_nmv_route` text COLLATE utf8mb4_unicode_ci,
  `route_productivity_mv_route` text COLLATE utf8mb4_unicode_ci,
  `route_productivity_nmv_route` text COLLATE utf8mb4_unicode_ci,
  `total_routes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `leverage_it` text COLLATE utf8mb4_unicode_ci,
  `computer` text COLLATE utf8mb4_unicode_ci,
  `printer` text COLLATE utf8mb4_unicode_ci,
  `warehouse_address` text COLLATE utf8mb4_unicode_ci,
  `warehouse_district` text COLLATE utf8mb4_unicode_ci,
  `warehouse_thana` text COLLATE utf8mb4_unicode_ci,
  `office_hight` text COLLATE utf8mb4_unicode_ci,
  `warehouse_hight` text COLLATE utf8mb4_unicode_ci,
  `hight_total` text COLLATE utf8mb4_unicode_ci,
  `office_length` text COLLATE utf8mb4_unicode_ci,
  `warehouse_length` text COLLATE utf8mb4_unicode_ci,
  `length_total` text COLLATE utf8mb4_unicode_ci,
  `workspace_structure_office` text COLLATE utf8mb4_unicode_ci,
  `warehouse_structure_length` text COLLATE utf8mb4_unicode_ci,
  `warehouse_condition` text COLLATE utf8mb4_unicode_ci,
  `electrical_wiring` text COLLATE utf8mb4_unicode_ci,
  `insurance_coverage` text COLLATE utf8mb4_unicode_ci,
  `insurance_coverage_office` text COLLATE utf8mb4_unicode_ci,
  `insurance_coverage_warehouse` text COLLATE utf8mb4_unicode_ci,
  `team_sitting_arrangement` text COLLATE utf8mb4_unicode_ci,
  `fire_fighting_facilities` text COLLATE utf8mb4_unicode_ci,
  `investment_capabilities` text COLLATE utf8mb4_unicode_ci,
  `self_finance` text COLLATE utf8mb4_unicode_ci,
  `loan` text COLLATE utf8mb4_unicode_ci,
  `working_capital` text COLLATE utf8mb4_unicode_ci,
  `stock_value` text COLLATE utf8mb4_unicode_ci,
  `credit_to_trade` text COLLATE utf8mb4_unicode_ci,
  `cash_in_hand` text COLLATE utf8mb4_unicode_ci,
  `pending_claims` text COLLATE utf8mb4_unicode_ci,
  `mechanized_vehicle` text COLLATE utf8mb4_unicode_ci,
  `non_mechanized_vehicle` text COLLATE utf8mb4_unicode_ci,
  `office_furniture_equipment` text COLLATE utf8mb4_unicode_ci,
  `total_investment` text COLLATE utf8mb4_unicode_ci,
  `wc_to` text COLLATE utf8mb4_unicode_ci,
  `stock_days_cover` text COLLATE utf8mb4_unicode_ci,
  `stock_salt` text COLLATE utf8mb4_unicode_ci,
  `stock_flour` text COLLATE utf8mb4_unicode_ci,
  `stock_oil` text COLLATE utf8mb4_unicode_ci,
  `stock_rice` text COLLATE utf8mb4_unicode_ci,
  `stock_pulse` text COLLATE utf8mb4_unicode_ci,
  `stock_tea` text COLLATE utf8mb4_unicode_ci,
  `stock_dairy` text COLLATE utf8mb4_unicode_ci,
  `investment_stock` text COLLATE utf8mb4_unicode_ci,
  `investment_to` text COLLATE utf8mb4_unicode_ci,
  `distributor_bank_name` text COLLATE utf8mb4_unicode_ci,
  `bank_account_number` text COLLATE utf8mb4_unicode_ci,
  `branch_name` text COLLATE utf8mb4_unicode_ci,
  `payment_mode` text COLLATE utf8mb4_unicode_ci,
  `delivery_product` text COLLATE utf8mb4_unicode_ci,
  `carrying_charge_claimable` text COLLATE utf8mb4_unicode_ci,
  `pending_approval` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `business_information_created_by_foreign` (`created_by`),
  KEY `business_information_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_information`
--

INSERT INTO `business_information` (`id`, `distributorship_info_master_id`, `coverage_info`, `month_business_salt`, `month_business_flour`, `month_business_oil`, `month_business_rice`, `month_business_pulse`, `month_business_tea`, `month_business_dairy`, `month_business`, `comm_earnings`, `vehicle_prod`, `sr_productivity`, `urban_wetmarket_grocer`, `urban_neighborhood_grocer`, `urban_general_store`, `urban_cosmetic_store`, `confectionary`, `urban_retail_coverage`, `smmt`, `chemist_pharmacy`, `rural_grocer`, `tong_tea_stall`, `horeca`, `rural_retail_coverage`, `dd_institution`, `others_channel`, `route_wholesale`, `csm_route_ols`, `sd_coverage_ols`, `alt_coverage`, `direct_coverage`, `controlled_coverage`, `daily_total_routes`, `bi_weekly_3_total_routes`, `bi_weekly_2_total_routes`, `weekly_total_routes`, `fortnightly_total_routes`, `daily_total_sections`, `bi_weekly_3_total_sections`, `bi_weekly_2_total_sections`, `weekly_total_sections`, `fortnightly_total_sections`, `peripheral_db_east`, `peripheral_db_west`, `peripheral_db_north`, `peripheral_db_south`, `peripheral_md_east`, `peripheral_md_west`, `peripheral_md_north`, `peripheral_md_south`, `back_office_team_manager`, `back_office_team_supervisor`, `back_office_team_comp_operator`, `back_office_team_csm`, `back_office_team_office_clerk`, `back_office_team_godown_keeper`, `back_office_team_peon_guards`, `back_office_team_driver_nmv`, `back_office_team_others`, `back_office_team_field_forces`, `back_office_team_sales_representative`, `back_office_team_delivery_man`, `back_office_team_driver_mech_vehicle`, `back_office_force`, `total_manpower`, `logistics_vehicles`, `logistics_number_of_mv_4wh`, `logistics_tempoo_3whl`, `logistics_engine_boat_mv`, `logistics_number_of_nmv`, `logistics_total_vehicles`, `logistics_vehicle_section`, `logistics_ol_productivity`, `logistics_route_prod`, `logistics_section_prod`, `logistics_route`, `route_service_mv_route`, `route_service_nmv_route`, `outlet_coverage_mv_route`, `outlet_coverage_nmv_route`, `route_productivity_mv_route`, `route_productivity_nmv_route`, `total_routes`, `leverage_it`, `computer`, `printer`, `warehouse_address`, `warehouse_district`, `warehouse_thana`, `office_hight`, `warehouse_hight`, `hight_total`, `office_length`, `warehouse_length`, `length_total`, `workspace_structure_office`, `warehouse_structure_length`, `warehouse_condition`, `electrical_wiring`, `insurance_coverage`, `insurance_coverage_office`, `insurance_coverage_warehouse`, `team_sitting_arrangement`, `fire_fighting_facilities`, `investment_capabilities`, `self_finance`, `loan`, `working_capital`, `stock_value`, `credit_to_trade`, `cash_in_hand`, `pending_claims`, `mechanized_vehicle`, `non_mechanized_vehicle`, `office_furniture_equipment`, `total_investment`, `wc_to`, `stock_days_cover`, `stock_salt`, `stock_flour`, `stock_oil`, `stock_rice`, `stock_pulse`, `stock_tea`, `stock_dairy`, `investment_stock`, `investment_to`, `distributor_bank_name`, `bank_account_number`, `branch_name`, `payment_mode`, `delivery_product`, `carrying_charge_claimable`, `pending_approval`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-06 06:20:46', '2024-06-06 06:20:46'),
(2, 1, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-06 06:25:35', '2024-06-06 06:25:35'),
(3, 1, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-06 06:28:52', '2024-06-06 06:28:52'),
(4, 2, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-06 06:31:32', '2024-06-06 06:31:32'),
(5, 3, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-06 06:52:37', '2024-06-06 06:52:37'),
(6, 4, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-09 03:31:36', '2024-06-09 03:31:36'),
(7, 5, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-09 04:20:38', '2024-06-09 04:20:38'),
(8, 6, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-09 04:21:38', '2024-06-09 04:21:38'),
(9, 7, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-09 04:25:39', '2024-06-09 04:25:39'),
(10, 8, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-09 04:30:48', '2024-06-09 04:30:48'),
(11, 9, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-09 06:45:04', '2024-06-09 06:45:04'),
(12, 10, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-09 07:37:47', '2024-06-09 07:37:47'),
(13, 14, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-06-12 03:01:18', '2024-06-12 03:01:18'),
(14, 11, '[{\"district\": \"rangpur\",\"thana\": \"sheyedpur\"},{\"district\": \"chardpur\",\"thana\": \"laksam\"}]', '20', '20', '20', '20', 'new 20', '20', '20', '20', '20', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '20', '20', '20', '20', '20', '20', '20', '20', '20', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1', 1, NULL, NULL, '2024-11-05 07:03:06', '2024-11-05 07:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `code_amendment`
--

DROP TABLE IF EXISTS `code_amendment`;
CREATE TABLE IF NOT EXISTS `code_amendment` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `requisition_date` date DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `territory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upazilla` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `union` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hat_bazar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_amendment` text COLLATE utf8mb4_unicode_ci,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amendment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `code_amendment`
--

INSERT INTO `code_amendment` (`id`, `requisition_date`, `region`, `depot`, `business`, `customer_name`, `contact_person`, `address_one`, `address_two`, `phone`, `mobile`, `email`, `category`, `customer_type`, `payment_mode`, `metro`, `route`, `territory`, `district`, `upazilla`, `union`, `hat_bazar`, `nid`, `reason_amendment`, `field_name`, `current_data`, `amendment`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2023-09-09', 'Your Zone', 'region', 'business', 'customer_name', 'contact_person', 'address_one', 'address_two', 'phone', 'mobile', 'email', 'category', 'customer_type', 'payment_mode', 'metro', 'route', 'territory', 'district', 'upazilla', 'union', 'hat_bazar', 'nid', 'reason_amendment', 'field_name', '2023-04-03', 'Your Current Finance Details', NULL, NULL, '2024-06-06 06:40:39', '2024-06-06 06:40:39'),
(2, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:42:46', '2024-06-06 06:42:46'),
(3, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:53:19', '2024-06-06 06:53:19'),
(4, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 07:06:58', '2024-06-06 07:06:58'),
(5, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-08 23:51:01', '2024-06-08 23:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `code_closure`
--

DROP TABLE IF EXISTS `code_closure`;
CREATE TABLE IF NOT EXISTS `code_closure` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_info_master_id` int NOT NULL,
  `requisition_date` date DEFAULT NULL,
  `code_closed_on` date DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `territory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_distributor_date` date DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` text COLLATE utf8mb4_unicode_ci,
  `flour` text COLLATE utf8mb4_unicode_ci,
  `edible_oil` text COLLATE utf8mb4_unicode_ci,
  `rice` text COLLATE utf8mb4_unicode_ci,
  `dairy` text COLLATE utf8mb4_unicode_ci,
  `tea` text COLLATE utf8mb4_unicode_ci,
  `distribution_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proprietor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_closure` text COLLATE utf8mb4_unicode_ci,
  `business` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claim_month` date DEFAULT NULL,
  `type_claim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claim_details` text COLLATE utf8mb4_unicode_ci,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `code_closure`
--

INSERT INTO `code_closure` (`id`, `distributorship_info_master_id`, `requisition_date`, `code_closed_on`, `region`, `zone`, `territory`, `location`, `selection_distributor_date`, `customer_type`, `salt`, `flour`, `edible_oil`, `rice`, `dairy`, `tea`, `distribution_name`, `proprietor_name`, `reason_closure`, `business`, `claim_month`, `type_claim`, `claim_details`, `amount`, `grand_total`, `account_name`, `bank_name`, `ac_no`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:37:25', '2024-06-06 06:37:25'),
(2, 2, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:37:44', '2024-06-06 06:37:44'),
(3, 2, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:38:08', '2024-06-06 06:38:08'),
(4, 2, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:38:29', '2024-06-06 06:38:29'),
(5, 2, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:41:32', '2024-06-06 06:41:32'),
(6, 1, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:44:22', '2024-06-06 06:44:22'),
(7, 3, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-06 06:52:58', '2024-06-06 06:52:58'),
(8, 6, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-09 04:23:27', '2024-06-09 04:23:27'),
(9, 7, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-09 04:25:56', '2024-06-09 04:25:56'),
(10, 9, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-06-09 07:30:29', '2024-06-09 07:30:29'),
(11, 2, '2023-09-09', '2023-09-09', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2023-09-09', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, NULL, '2024-11-05 06:59:44', '2024-11-05 06:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_info_master_id` int NOT NULL,
  `sm_comment` text COLLATE utf8mb4_unicode_ci,
  `sm_distributor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_distributor_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `distributorship_info_master`
--

DROP TABLE IF EXISTS `distributorship_info_master`;
CREATE TABLE IF NOT EXISTS `distributorship_info_master` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `territory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replacement_reappointment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inception_date` timestamp NULL DEFAULT NULL,
  `reason_for_replacing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projected_monthly_business` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projected_roi_percent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `competes_evaluated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_relationship_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `past_relationship_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_office` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_office_structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_warehouse_structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `existing_staff_market_operation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mechanised` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_mechanised` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_license_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_registration_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distributorship_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_finance_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending_approval` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributorship_info_master`
--

INSERT INTO `distributorship_info_master` (`id`, `date`, `region`, `zone`, `territory`, `location_name`, `business_type`, `appointment_type`, `replacement_reappointment`, `inception_date`, `reason_for_replacing`, `business`, `projected_monthly_business`, `projected_roi_percent`, `competes_evaluated`, `current_relationship_details`, `past_relationship_details`, `workspace_office`, `workspace_warehouse`, `workspace_office_structure`, `workspace_warehouse_structure`, `existing_staff_market_operation`, `mechanised`, `non_mechanised`, `trade_license_no`, `vat_registration_no`, `distributorship_companies`, `current_finance_details`, `pending_approval`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-06 03:41:47', '2024-06-06 03:41:47'),
(2, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-06 06:24:51', '2024-06-06 06:24:51'),
(3, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-06 06:50:19', '2024-06-06 06:50:19'),
(4, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-09 03:31:15', '2024-06-09 03:31:15'),
(5, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-09 04:20:18', '2024-06-09 04:20:18'),
(6, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-09 04:21:20', '2024-06-09 04:21:20'),
(7, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-09 04:25:14', '2024-06-09 04:25:14'),
(8, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-09 04:28:22', '2024-06-09 04:28:22'),
(9, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-09 04:34:54', '2024-06-09 04:34:54'),
(10, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-09 07:35:35', '2024-06-09 07:35:35'),
(11, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-12 02:56:37', '2024-06-12 02:56:37'),
(12, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-12 02:56:41', '2024-06-12 02:56:41'),
(13, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-12 02:59:49', '2024-06-12 02:59:49'),
(14, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-12 03:00:12', '2024-06-12 03:00:12'),
(15, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-06-19 01:10:29', '2024-06-19 01:10:29'),
(16, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-11-05 06:58:30', '2024-11-05 06:58:30'),
(17, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-11-05 06:58:30', '2024-11-05 06:58:30'),
(18, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(19, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(20, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(21, NULL, 'dhaka', 'smallzone', 'territory1', 'tejgaon', 'testbusinesstype', 'new appointment', 'Replacement Reappointment', '2024-05-19 18:00:00', 'bad reason', 'old business', '10000', '20', 'Your Competes Evaluated', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000', 'test', 'test', 1, NULL, NULL, '2024-11-05 07:29:28', '2024-11-05 07:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `distributor_pending`
--

DROP TABLE IF EXISTS `distributor_pending`;
CREATE TABLE IF NOT EXISTS `distributor_pending` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_info_master_id` int DEFAULT NULL,
  `distributor_form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_infor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributor_pending`
--

INSERT INTO `distributor_pending` (`id`, `distributorship_info_master_id`, `distributor_form`, `business_infor`, `documents_comments`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '1', NULL, NULL, '2024-06-08 23:25:57', '2024-06-08 23:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_master_id` int NOT NULL,
  `comments_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_comments_id_foreign` (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_comment`
--

DROP TABLE IF EXISTS `document_comment`;
CREATE TABLE IF NOT EXISTS `document_comment` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_info_master_id` int NOT NULL,
  `sm_comment` text COLLATE utf8mb4_unicode_ci,
  `sm_distributor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_distributor_description` text COLLATE utf8mb4_unicode_ci,
  `gm_comment` text COLLATE utf8mb4_unicode_ci,
  `gm_distributor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gm_distributor_description` text COLLATE utf8mb4_unicode_ci,
  `passport_size_image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_size_image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_size_image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_registration_details_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_statements_file_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_statements_file_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etin_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utility_bill_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_warehouse_photo_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partnership_memorandum_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roi_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_declaration_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending_approval` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_comment`
--

INSERT INTO `document_comment` (`id`, `distributorship_info_master_id`, `sm_comment`, `sm_distributor_type`, `sm_distributor_description`, `gm_comment`, `gm_distributor_type`, `gm_distributor_description`, `passport_size_image_one`, `passport_size_image_two`, `passport_size_image_three`, `vat_registration_details_file`, `bank_statements_file_one`, `bank_statements_file_two`, `nid_file`, `etin_file`, `utility_bill_file`, `office_warehouse_photo_file`, `partnership_memorandum_file`, `roi_file`, `db_declaration_file`, `pending_approval`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, 1, NULL, NULL),
(2, 1, '1', '1', 'sm_distributor_description', '1', '1', 'gm_distributor_description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 00:51:54', '2024-06-09 00:51:54'),
(3, 2, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', 'public/eZb115qpg18SlxK8bMquVSlQ9zfUt41irFT3dvjd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/tQ3CFsd7AiT5q2Ic1u0cdT8rf85U6uZx0Iv9Elec.jpg', 1, '2024-06-09 01:23:35', '2024-06-09 01:23:35'),
(4, 3, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', 'public/J4INYME90jLg2sbgeLFDxjrO8NIcPKcY4HZU1dms.jpg', 'public/ylXnxBYctspDaNVe9KigNI0Ra9nubGfaisfgztQ2.jpg', NULL, 'public/FDv9r3HMqpFSnkbAOJ95NRN0Jwmw61bdcRTX7t1e.jpg', 'public/bBaXi1T1qfe5Mg1uhq30HMMGc9MBQlxFUIvTRRIF.jpg', 'public/uAK6ywDBRj1bIEZyuwQuJDQsxBD2WMDh3IgvIvHM.jpg', 'public/POV7B0BFl1zgJWvPoN7D0yGsyd4FIyOgOaMdTgqR.jpg', NULL, NULL, 'public/6TGEJd1bWbQf372viz7hJ8ygb7aEWrIRsSiDBy8m.jpg', 'public/vhEUafVARBrU96ckEAKRdGpTlxlsD29dH4FD0My4.jpg', 'public/kg2PLemthjmGIKUREpr6DcC0HxVkqTlSwLfBhpyS.jpg', 'public/0x9aC3a92XljaMsGTCLbiNQtxKC0eNzoT7T5lkuP.jpg', 1, '2024-06-09 01:47:34', '2024-06-09 01:47:34'),
(5, 4, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 04:17:09', '2024-06-09 04:17:09'),
(6, 4, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 04:17:59', '2024-06-09 04:17:59'),
(7, 6, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 04:21:57', '2024-06-09 04:21:57'),
(8, 7, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 04:27:19', '2024-06-09 04:27:19'),
(9, 8, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 04:28:46', '2024-06-09 04:28:46'),
(10, 8, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 04:30:29', '2024-06-09 04:30:29'),
(11, 5, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', 'public/l4OdgIx9KavjDpat8IJvht5yMvuvhiw4jORSad2k.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 05:04:50', '2024-06-09 05:04:50'),
(12, 10, '\"1\"', '\"1\"', '\"test\"', '\"1\"', '\"1\"', '\"test\"', 'public/49SV9acjuXUy6255poDJIEAgSqWEcVd8UD6Vr7QK.jpg', NULL, NULL, 'public/40BdDKYi8zH1FKOkbLrNhnmxQxWIx1TLekO7dxhl.jpg', 'public/UFoON4KHlwxlTQTbe2y1xJL83G1WkqOWPiQuGVcJ.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-09 07:40:17', '2024-06-09 07:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_25_122100_create_distributorship_info_master_table', 1),
(6, '2024_04_28_051600_create_applicant_details_table', 1),
(7, '2024_04_28_051616_create_office_info_table', 1),
(8, '2024_04_28_051706_create_warehouse_address_table', 1),
(9, '2024_04_25_122100_create_business_information_table', 2),
(10, '2024_04_25_122100_create_comments_table', 2),
(11, '2024_04_25_122100_create_documents_table', 2),
(12, '2024_04_28_051706_create_code_amendment_table', 2),
(13, '2024_04_28_051706_create_code_closure_table', 2),
(14, '2024_04_28_051706_create_distributor_pending_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `office_info`
--

DROP TABLE IF EXISTS `office_info`;
CREATE TABLE IF NOT EXISTS `office_info` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_info_master_id` bigint NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `union_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office_info`
--

INSERT INTO `office_info` (`id`, `distributorship_info_master_id`, `address`, `city`, `post_code`, `union_name`, `thana`, `telephone`, `mobile`, `fax`, `contact_person`, `email`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 03:41:47', '2024-06-06 03:41:47'),
(2, 2, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 06:24:51', '2024-06-06 06:24:51'),
(3, 3, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 06:50:19', '2024-06-06 06:50:19'),
(4, 4, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 03:31:15', '2024-06-09 03:31:15'),
(5, 5, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:20:18', '2024-06-09 04:20:18'),
(6, 6, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:21:21', '2024-06-09 04:21:21'),
(7, 7, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:25:14', '2024-06-09 04:25:14'),
(8, 8, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:28:22', '2024-06-09 04:28:22'),
(9, 9, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:34:54', '2024-06-09 04:34:54'),
(10, 10, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 07:35:35', '2024-06-09 07:35:35'),
(11, 11, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:56:37', '2024-06-12 02:56:37'),
(12, 12, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:56:41', '2024-06-12 02:56:41'),
(13, 13, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:59:49', '2024-06-12 02:59:49'),
(14, 14, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 03:00:12', '2024-06-12 03:00:12'),
(15, 15, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-19 01:10:30', '2024-06-19 01:10:30'),
(16, 16, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:30', '2024-11-05 06:58:30'),
(17, 17, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:30', '2024-11-05 06:58:30'),
(18, 18, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(19, 20, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(20, 19, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(21, 21, 'Address (current business)', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 07:29:28', '2024-11-05 07:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'delwar@aci-bd.com', '361f7a9a338ac88b731aa1733727cc9a7f04b76505523987e9b283d448cfc955', '[\"*\"]', NULL, NULL, '2024-05-07 04:42:44', '2024-05-07 04:42:44'),
(2, 'App\\Models\\User', 1, '33231', '5599cf8da2756f51cb5c04cb1d21a8181b4f94dc255b87d67436b0512f9a56de', '[\"*\"]', NULL, NULL, '2024-05-07 04:48:25', '2024-05-07 04:48:25'),
(3, 'App\\Models\\User', 1, '33231', 'd3e303ee0ed8f76833c9b91141157820e13afbea18234fa7a2ba445e031f1034', '[\"*\"]', NULL, NULL, '2024-05-08 04:16:13', '2024-05-08 04:16:13'),
(4, 'App\\Models\\User', 1, '33231', 'af389b852a5e12626e2e40180c069e9cab659238d241bc727c829f19c0738b5b', '[\"*\"]', '2024-05-08 04:17:28', NULL, '2024-05-08 04:16:41', '2024-05-08 04:17:28'),
(5, 'App\\Models\\User', 1, '33231', '4e740a40523004470a3c15ec0ca7c82eb2923a82f6d4cf0d80bd7decce24c800', '[\"*\"]', NULL, NULL, '2024-05-12 04:18:37', '2024-05-12 04:18:37'),
(6, 'App\\Models\\User', 1, '33231', '9514d28ae29a51b079db8c678cf9fadcbc4c79830e8be1442735978a2eb115bf', '[\"*\"]', '2024-05-19 06:26:05', NULL, '2024-05-19 04:44:08', '2024-05-19 06:26:05'),
(7, 'App\\Models\\User', 1, '33231', '1e9aee0a198fac247acdf1d9ece0639c3922a906806f0710b20e331647a43a48', '[\"*\"]', NULL, NULL, '2024-05-19 06:04:46', '2024-05-19 06:04:46'),
(8, 'App\\Models\\User', 1, '33231', '6d7e0232a6ad394914c81e246230f537c9ef8ecebee15f93fd2ac4f0e75f64c2', '[\"*\"]', NULL, NULL, '2024-05-19 06:05:44', '2024-05-19 06:05:44'),
(9, 'App\\Models\\User', 1, '33231', '5c99881ab3ec91e07d04b0674fe746e2e9afd4b5cb3bda04a05caee53785dceb', '[\"*\"]', '2024-05-19 23:17:05', NULL, '2024-05-19 22:39:09', '2024-05-19 23:17:05'),
(10, 'App\\Models\\User', 1, '33231', '13e090c85868037f613fff0aeeae0da5e6388aac9df777336c24888eecf11b00', '[\"*\"]', '2024-05-26 03:46:07', NULL, '2024-05-20 00:58:16', '2024-05-26 03:46:07'),
(11, 'App\\Models\\User', 1, '33231', '352fa2b36f3ddc4d80a05c6d20c319282a523a9b4cff309f84fc2cf126830e8f', '[\"*\"]', NULL, NULL, '2024-05-20 02:10:02', '2024-05-20 02:10:02'),
(12, 'App\\Models\\User', 1, '33231', '0cd9abd62d439ca084ba606c6044a936b8a069b0cb3f712c43bfc7c57165116c', '[\"*\"]', NULL, NULL, '2024-05-20 02:10:41', '2024-05-20 02:10:41'),
(13, 'App\\Models\\User', 1, '33231', '75326275cad857610c4988ab18d2fde3e1c347c34483201a8d9e3448664c12b2', '[\"*\"]', NULL, NULL, '2024-05-20 02:15:33', '2024-05-20 02:15:33'),
(14, 'App\\Models\\User', 1, '33231', '50b94afa0cf910173ab6c998f79f69d5e3608e01747a7c588a2259f24aea589a', '[\"*\"]', NULL, NULL, '2024-05-20 02:16:17', '2024-05-20 02:16:17'),
(15, 'App\\Models\\User', 1, '33231', 'ebb2c25f95e0daf3573957fb1bc065a368c98ea3b2cd032cb30d4cfe6cadc130', '[\"*\"]', NULL, NULL, '2024-05-20 02:24:22', '2024-05-20 02:24:22'),
(16, 'App\\Models\\User', 1, '33231', '60f627e8fb139e48b49baeb33be323777714ce80ac87543e926bba666182126d', '[\"*\"]', NULL, NULL, '2024-05-20 02:39:02', '2024-05-20 02:39:02'),
(17, 'App\\Models\\User', 1, '33231', 'f2e37d9419e0789314a0bd366040cb8690abd9eaafb76022d1102e35afe48c69', '[\"*\"]', NULL, NULL, '2024-05-20 02:40:23', '2024-05-20 02:40:23'),
(18, 'App\\Models\\User', 1, '33231', '57c97530379df44749b56074c39902443c1c13d83189bbbea7ba28904631088e', '[\"*\"]', NULL, NULL, '2024-05-20 02:42:18', '2024-05-20 02:42:18'),
(19, 'App\\Models\\User', 1, '33231', '84f3cd1724e8e835586087a92646f39cfd6e848ed50b384d06c47a3b3c23e893', '[\"*\"]', NULL, NULL, '2024-05-20 02:46:33', '2024-05-20 02:46:33'),
(20, 'App\\Models\\User', 1, '33231', '0d30b939632cef085324bfed9b83870de99bfa522d71fd57565ce3de43a2f7f4', '[\"*\"]', NULL, NULL, '2024-05-20 02:47:19', '2024-05-20 02:47:19'),
(21, 'App\\Models\\User', 1, '33231', 'b9f97f45328ce45e52f6441e0275db10e4bfd09b1017c44745f081ce41d0faff', '[\"*\"]', NULL, NULL, '2024-05-20 03:05:02', '2024-05-20 03:05:02'),
(22, 'App\\Models\\User', 1, '33231', '320b5517551cd71001bb126091311068f147c9b0f63d56673cf2301618fadad4', '[\"*\"]', NULL, NULL, '2024-05-20 03:05:30', '2024-05-20 03:05:30'),
(23, 'App\\Models\\User', 1, '33231', 'a0ab080b0917e4031cfa6e88f553481eb9db7f54b4dce669d748cb2caef2ebf2', '[\"*\"]', NULL, NULL, '2024-05-20 03:05:44', '2024-05-20 03:05:44'),
(24, 'App\\Models\\User', 1, '33231', '751d145440814c1281378fc478b7e8e9bb89b8263239b6aa247b367bfcd178ca', '[\"*\"]', NULL, NULL, '2024-05-20 03:21:07', '2024-05-20 03:21:07'),
(25, 'App\\Models\\User', 1, '33231', 'edee698aa128c8b18cbe679ccd393a4c2bd4ee62ea97ad3acfbc5180093d7663', '[\"*\"]', NULL, NULL, '2024-05-20 03:22:23', '2024-05-20 03:22:23'),
(26, 'App\\Models\\User', 1, '33231', '126519bd64fb0dc3b46be41b91dc9bace61dc550812bf691fb8724fe055267aa', '[\"*\"]', NULL, NULL, '2024-05-20 03:23:14', '2024-05-20 03:23:14'),
(27, 'App\\Models\\User', 1, '33231', '5f4ae05133b7078e849c37b34529469baf2600b62bb3fb74267f64b1571a2b75', '[\"*\"]', NULL, NULL, '2024-05-20 03:35:56', '2024-05-20 03:35:56'),
(28, 'App\\Models\\User', 1, '33231', '51cb7714a2e66a4e6e489bd09c290d64f6666ae365b3774abc952d00236c11cc', '[\"*\"]', NULL, NULL, '2024-05-20 04:28:01', '2024-05-20 04:28:01'),
(29, 'App\\Models\\User', 1, '33231', '68accbf362bfc787a4ef9473327ee70d8979aea2df6ff831a022365bcf4de70b', '[\"*\"]', '2024-05-20 04:53:52', NULL, '2024-05-20 04:50:31', '2024-05-20 04:53:52'),
(30, 'App\\Models\\User', 1, '33231', '8e328f36176ed1a600afabf6705604893b9b648513e35d448f9b1f2c3389e20d', '[\"*\"]', NULL, NULL, '2024-05-23 03:27:36', '2024-05-23 03:27:36'),
(31, 'App\\Models\\User', 1, '33231', 'b305d1dbdd3bb6d8c5427665ec83b24c830456afc422a70e86adc712054e2960', '[\"*\"]', '2024-05-23 04:57:47', NULL, '2024-05-23 04:26:44', '2024-05-23 04:57:47'),
(32, 'App\\Models\\User', 1, '33231', '2848d626453fa514d7d3a623899734bf44d2e54eb24657dda4bb199197d5dfca', '[\"*\"]', '2024-05-23 04:28:56', NULL, '2024-05-23 04:28:44', '2024-05-23 04:28:56'),
(33, 'App\\Models\\User', 1, '33231', 'fa3fd35655cbbbda64b4284a1e40f03808206244367a9647f2024d3e4904706a', '[\"*\"]', NULL, NULL, '2024-05-26 03:45:36', '2024-05-26 03:45:36'),
(34, 'App\\Models\\User', 1, '33231', 'c2f4de39dba6659dbe41cabc7159934d05ae4e83770326b1d4eb5dc229a5fe1d', '[\"*\"]', NULL, NULL, '2024-05-28 03:43:33', '2024-05-28 03:43:33'),
(35, 'App\\Models\\User', 1, '33231', 'bf782ceeba1b835d996cd448bdd02d9c2c06330f0eb2fa3f6fe0695c0eca9690', '[\"*\"]', '2024-05-28 03:54:38', NULL, '2024-05-28 03:47:25', '2024-05-28 03:54:38'),
(36, 'App\\Models\\User', 1, '33231', '844c777e453af4f5fc70f6d43c145b302509f909e84560ec532c393e9064ce8d', '[\"*\"]', '2024-05-28 03:48:42', NULL, '2024-05-28 03:48:19', '2024-05-28 03:48:42'),
(37, 'App\\Models\\User', 1, '33231', 'f51e4ec29c579a864acede7fe2e260c5a91ee1636fc484e14a97f6490dce9602', '[\"*\"]', '2024-06-06 05:35:11', NULL, '2024-05-28 03:55:57', '2024-06-06 05:35:11'),
(38, 'App\\Models\\User', 1, '33231', 'c3846e2043b494db0aad021ec73bab8d2931d626a27928aa2dcbc4773661bb04', '[\"*\"]', NULL, NULL, '2024-05-28 04:04:15', '2024-05-28 04:04:15'),
(39, 'App\\Models\\User', 1, '33231', 'b12e8a23ed87bb243ec802ccafd1663c0548a6dd32efe56908494a0348e5c238', '[\"*\"]', '2024-11-05 07:04:41', NULL, '2024-05-28 04:05:38', '2024-11-05 07:04:41'),
(40, 'App\\Models\\User', 1, '33231', '79c743ae56715d67c118b22087e2d3339102077ff8ebced3e1ac47e9213fcac0', '[\"*\"]', '2024-05-28 04:22:33', NULL, '2024-05-28 04:21:23', '2024-05-28 04:22:33'),
(41, 'App\\Models\\User', 1, '33231', 'c784d1f220f6db377cf424b4108271c213c54eef5947c28ad69a478d58183ee0', '[\"*\"]', '2024-05-29 05:49:52', NULL, '2024-05-29 05:43:13', '2024-05-29 05:49:52'),
(42, 'App\\Models\\User', 1, '33231', '4ec21c273c2f05d9d81dace71b281be73733f34874b180304cb8ae3705b65129', '[\"*\"]', '2024-11-05 06:59:44', NULL, '2024-05-29 06:02:20', '2024-11-05 06:59:44'),
(43, 'App\\Models\\User', 1, '33231', '05661393d0e2fc24f154cf001328ad09c959a6a624a66deff8fc0bd69763868e', '[\"*\"]', '2024-05-30 06:10:49', NULL, '2024-05-30 03:39:12', '2024-05-30 06:10:49'),
(44, 'App\\Models\\User', 1, '33231', 'f051113fbdb0ecd96867b6f9a15d513c8957a28117d93051874bab178f9edf05', '[\"*\"]', NULL, NULL, '2024-06-04 00:26:31', '2024-06-04 00:26:31'),
(45, 'App\\Models\\User', 1, '33231', '6473615230ed11642c72786c043ae275f8a4930f6dc691a8e2e675de6dd1aeed', '[\"*\"]', NULL, NULL, '2024-06-04 04:35:10', '2024-06-04 04:35:10'),
(46, 'App\\Models\\User', 1, '33231', '6f7775dbfc47c9853a0bc8ef6ee1bc31ba0cb5ebcece061d8fb90e7802582cc9', '[\"*\"]', NULL, NULL, '2024-06-04 04:37:14', '2024-06-04 04:37:14'),
(47, 'App\\Models\\User', 1, '33231', 'c80b89e08b924a2b83fd3bee4c5979a8d9e33c27c051f7f8878236b691aebe17', '[\"*\"]', NULL, NULL, '2024-06-04 04:37:52', '2024-06-04 04:37:52'),
(48, 'App\\Models\\User', 1, '33231', '56062670996d505f1d8055f2bcae4acfb9b225e14e545779e69ac42c9eec70b5', '[\"*\"]', NULL, NULL, '2024-06-04 04:38:09', '2024-06-04 04:38:09'),
(49, 'App\\Models\\User', 1, '33231', '8cb14bcb882fb7c20682b21f86a4db1bbca4c18acb7a5a73b64ede7d2a4f9868', '[\"*\"]', NULL, NULL, '2024-06-04 04:58:00', '2024-06-04 04:58:00'),
(50, 'App\\Models\\User', 1, '33231', 'e7366a7298d1867db8a912feb03ca5a203d08c30d9487fa0a381d9fe4e433578', '[\"*\"]', NULL, NULL, '2024-06-04 04:58:25', '2024-06-04 04:58:25'),
(51, 'App\\Models\\User', 1, '33231', 'bf57d0070e9234e7d512299d0d3c8c895e5eb9d04f15edc263cf07d0e853d4b5', '[\"*\"]', NULL, NULL, '2024-06-04 05:22:24', '2024-06-04 05:22:24'),
(52, 'App\\Models\\User', 1, '33231', 'ac51c0ea607e964e8aeec40fd0703803c3def357274d2194879425b19599a4a5', '[\"*\"]', '2024-06-09 02:23:04', NULL, '2024-06-06 06:39:52', '2024-06-09 02:23:04'),
(53, 'App\\Models\\User', 1, '33231', '5f0ffbd130e228d3702c3a603fd5a6ded8fa3d0cb30cd94344ba92154e823b3a', '[\"*\"]', NULL, NULL, '2024-06-06 06:49:39', '2024-06-06 06:49:39'),
(54, 'App\\Models\\User', 1, '33231', '3a8cfb9752eb22cf2794ede1cdeff0658a59343265c060dad1671d8be44c8572', '[\"*\"]', '2024-06-09 06:23:50', NULL, '2024-06-09 00:50:13', '2024-06-09 06:23:50'),
(55, 'App\\Models\\User', 1, '33231', 'c0cb010dbe4d08b52b64555da6ec6babc34a27620fd181414951e8d92e758971', '[\"*\"]', '2024-06-09 04:59:19', NULL, '2024-06-09 02:24:03', '2024-06-09 04:59:19'),
(56, 'App\\Models\\User', 1, '33231', 'aa4ae0db28eb8e38fe8d431fc2201333cfec05d5ddb54d9bb5cf5d89f0d2a385', '[\"*\"]', NULL, NULL, '2024-06-10 08:51:28', '2024-06-10 08:51:28'),
(57, 'App\\Models\\User', 1, '33231', 'e2209b83ac784fb16fdeea5823ca1944dbdbec335388331d5f84d3b424589378', '[\"*\"]', NULL, NULL, '2024-06-11 06:30:30', '2024-06-11 06:30:30'),
(58, 'App\\Models\\User', 1, '33231', 'cfa1374c6196433178cc2cbe74bd3e82da35b6e60fc80134e06316f103ea07a7', '[\"*\"]', NULL, NULL, '2024-06-13 05:35:36', '2024-06-13 05:35:36'),
(59, 'App\\Models\\User', 1, '33231', 'f71b90d100763b4dfcee92077516f31862b5d25e881f1022fcee14c34f637d71', '[\"*\"]', NULL, NULL, '2024-06-13 05:35:41', '2024-06-13 05:35:41'),
(60, 'App\\Models\\User', 1, '33231', '838bc78f13c3fba78c36a620bcd1d6f3e0d2e7b5cfc921b9b682539effd5d1df', '[\"*\"]', NULL, NULL, '2024-06-13 05:36:02', '2024-06-13 05:36:02'),
(61, 'App\\Models\\User', 1, '33231', '538288cb9de9617e9b9404fed1f6b15c2d61b78893ebbb3371a81a5a3df8e392', '[\"*\"]', NULL, NULL, '2024-06-13 05:37:21', '2024-06-13 05:37:21'),
(62, 'App\\Models\\User', 1, '33231', '420ba15adcab82d3c5bde4896aad336a2a7fd97995d4b72050cae4cf95826ac1', '[\"*\"]', NULL, NULL, '2024-06-13 05:42:49', '2024-06-13 05:42:49'),
(63, 'App\\Models\\User', 1, '33231', 'a49f81240f9ea96b18a13bb81033f74a027b4eff825a05a94ca7aeb710bf647b', '[\"*\"]', NULL, NULL, '2024-06-19 01:09:11', '2024-06-19 01:09:11'),
(64, 'App\\Models\\User', 1, '33231', '8ca6790943cfeb558de761e4ed1c2adc7814e1cdba772e8775d393b77ac5576c', '[\"*\"]', NULL, NULL, '2024-07-11 04:24:19', '2024-07-11 04:24:19'),
(65, 'App\\Models\\User', 1, '33231', 'baae727c9d83769b2b76f531d3a8a5f360c0e2d0ed869316f0a7889cf8371221', '[\"*\"]', NULL, NULL, '2024-07-11 04:38:33', '2024-07-11 04:38:33'),
(66, 'App\\Models\\User', 1, '33231', '20c88946848096d4dcc00a17eb3835bf4dc263572f56ebd776eed6e4af63cbb0', '[\"*\"]', NULL, NULL, '2024-07-11 04:43:23', '2024-07-11 04:43:23'),
(67, 'App\\Models\\User', 1, '33231', 'fd2023d42b37caf9eca25feed1ba3041132c662426a89f19b8a7ed99786b9777', '[\"*\"]', NULL, NULL, '2024-11-05 06:56:32', '2024-11-05 06:56:32'),
(68, 'App\\Models\\User', 1, '33231', '3f505d4f7609512d3947c6fd024db585ffee2a65d2bff4ee9c171d692f0d4c6c', '[\"*\"]', NULL, NULL, '2024-11-05 06:56:32', '2024-11-05 06:56:32'),
(69, 'App\\Models\\User', 1, '33231', '3438750dccca805e9efb5bdd11391a9316ac286d7416cf5cfa4b7a1ba7e6b30d', '[\"*\"]', NULL, NULL, '2024-11-05 06:56:39', '2024-11-05 06:56:39'),
(70, 'App\\Models\\User', 1, '33231', '5418b67e7b97fe03b448fc8fb09b5d6f54847ff7a9c6beb7d4da42dd7f610c03', '[\"*\"]', '2024-11-05 07:24:22', NULL, '2024-11-05 07:07:28', '2024-11-05 07:24:22'),
(71, 'App\\Models\\User', 1, '33231', '6e0adca6f07827b1fd5d985d085e79040e5933325ceb29f3e30dd215633d93c4', '[\"*\"]', NULL, NULL, '2024-11-05 07:23:58', '2024-11-05 07:23:58'),
(72, 'App\\Models\\User', 1, '33231', 'ea9fb918382eaf51dd2ec0479800b52942e2fd75916f38747ade331f8fa4fd1c', '[\"*\"]', '2024-11-05 07:29:28', NULL, '2024-11-05 07:28:55', '2024-11-05 07:29:28'),
(73, 'App\\Models\\User', 1, '33231', 'deabb886e82ce9850ed92a29185ba29b231edc99dbec3e1e23cd30c99cec7ac6', '[\"*\"]', '2024-11-05 07:31:51', NULL, '2024-11-05 07:31:49', '2024-11-05 07:31:51'),
(74, 'App\\Models\\User', 1, '33231', '066d3a9a1fad5a44b04ba3846ac3ddf4c3dc19d45c63c6455764500e724723fd', '[\"*\"]', '2024-11-05 21:12:36', NULL, '2024-11-05 20:32:04', '2024-11-05 21:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Delwar Hossain', 'delwar@aci-bd.com', 33231, NULL, '$2y$12$rusFlcvGBty49aF5qSRVQePQ0Qdyev.AQWZo.kykPO0Jm2sxC6mcW', NULL, '2024-03-24 02:28:14', '2024-03-24 02:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_address`
--

DROP TABLE IF EXISTS `warehouse_address`;
CREATE TABLE IF NOT EXISTS `warehouse_address` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `distributorship_info_master_id` bigint NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `union_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_address`
--

INSERT INTO `warehouse_address` (`id`, `distributorship_info_master_id`, `address`, `city`, `post_code`, `union_name`, `thana`, `telephone`, `mobile`, `fax`, `contact_person`, `email`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 03:41:47', '2024-06-06 03:41:47'),
(2, 2, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 06:24:51', '2024-06-06 06:24:51'),
(3, 3, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-06 06:50:19', '2024-06-06 06:50:19'),
(4, 4, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 03:31:15', '2024-06-09 03:31:15'),
(5, 5, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:20:18', '2024-06-09 04:20:18'),
(6, 6, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:21:21', '2024-06-09 04:21:21'),
(7, 7, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:25:14', '2024-06-09 04:25:14'),
(8, 8, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:28:22', '2024-06-09 04:28:22'),
(9, 9, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 04:34:54', '2024-06-09 04:34:54'),
(10, 10, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-09 07:35:35', '2024-06-09 07:35:35'),
(11, 11, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:56:37', '2024-06-12 02:56:37'),
(12, 12, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:56:41', '2024-06-12 02:56:41'),
(13, 13, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 02:59:50', '2024-06-12 02:59:50'),
(14, 14, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-12 03:00:12', '2024-06-12 03:00:12'),
(15, 15, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-06-19 01:10:30', '2024-06-19 01:10:30'),
(16, 16, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:30', '2024-11-05 06:58:30'),
(17, 17, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(18, 18, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(19, 20, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(20, 19, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 06:58:31', '2024-11-05 06:58:31'),
(21, 21, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2024-11-05 07:29:28', '2024-11-05 07:29:28');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business_information`
--
ALTER TABLE `business_information`
  ADD CONSTRAINT `business_information_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `business_information_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_comments_id_foreign` FOREIGN KEY (`comments_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
