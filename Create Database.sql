-- Creating Database

CREATE DATABASE IF NOT EXISTS `divvy_chicago_case_study` ;
USE divvy_chicago_case_study;

-- Creating tables for each month of customer data from 2022

CREATE TABLE table_structure(
	 ride_id VARCHAR(50),
	 rideable_type VARCHAR(50),
	 started_at VARCHAR(50),
	 ended_at VARCHAR(50),
	 start_station_name VARCHAR(100),
	 start_station_id VARCHAR(50),
	 end_station_name VARCHAR(100),
	 end_station_id VARCHAR(50),
	 start_lat DECIMAL(18,15),
	 start_lng DECIMAL(18,15),
	 end_lat DECIMAL(18,15),
	 end_lng DECIMAL(18,15),
	 member_casual VARCHAR(50)
);

CREATE TABLE divvy_rides_2022 AS 
	SELECT * FROM table_structure;


-- SET Primary Key as Ride ID

ALTER TABLE divvy_rides_2022
    ADD PRIMARY KEY(ride_id);

-- Loading ride data (csv files) into each table
-- CSV Files should be placed in the MySQL upload directory listed below before running

SET SESSION sql_mode = '';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202201-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202202-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202203-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202204-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202205-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202206-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202207-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202208-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202209-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202210-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202211-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/202212-divvy-tripdata.csv' INTO TABLE divvy_rides_2022
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

