## schema design for epostal
## for mySQL
## use source to load it into mysql say source EPOSTAL_table.sql from the mysql shell
USE sample_Epostal ;
DROP TABLE IF auto;

CREATE TABLE `auto` (
  `aid` bigint(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `address_1` varchar(40) NOT NULL,
  `address_2` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` char(2) NOT NULL,
  `zip_code` char(5) NOT NULL,
  `auto_year` year(4) NOT NULL,
  `auto_fuel` char(1) NOT NULL,
  `auto_purchase_date` varchar(30) NOT NULL,
  `auto_purchase_type` varchar(5) NOT NULL,
  `rec_modified` char(10) NOT NULL,
  `auto_make` varchar(24) NOT NULL,
  `auto_model` varchar(24) NOT NULL,
  `auto_make_model` varchar(60) NOT NULL,
  `auto_type` varchar(15) NOT NULL,
  `auto_size` varchar(15) NOT NULL,
  `auto_style` varchar(30) NOT NULL,
  `auto_engine_cylinders` varchar(3) NOT NULL,
  `auto_transmission_type` varchar(3) NOT NULL,
  `auto_door` varchar(3) NOT NULL,
  `auto_drive_type` varchar(3) NOT NULL,
  `auto_budy_subtype` varchar(30) NOT NULL,
  `auto_tonnage` varchar(10) NOT NULL,
  `auto_transmission_gears` varchar(1) NOT NULL,
  `auto_msrp` varchar(50) NOT NULL,
  `auto_class` varchar(15) NOT NULL,
  `auto_based` varchar(15) NOT NULL,
  `auto_manufacturer` varchar(24) NOT NULL,
  `ahh_num_cars` tinyint(3) NOT NULL,
  `confidence_code` varchar(1) NOT NULL,
  `email` varchar(75) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `id_index` (`last_name`) USING BTREE,
  KEY `idx_auto_make_model` (`auto_make_model`) USING BTREE,
  KEY `idx_auto_style` (`auto_style`) USING BTREE,
  KEY `idx_auto_msrp` (`auto_msrp`) USING BTREE
);

LOAD DATA LOCAL  INFILE '/home/ubuntu/AP_sample_10K_auto_fields_05192017.txt'  INTO TABLE auto FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
SELECT count(*) from auto;
#show warnings