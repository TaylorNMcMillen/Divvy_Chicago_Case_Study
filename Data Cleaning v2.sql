CREATE TABLE divvy_rides_2022_ AS 
	SELECT * FROM divvy_rides_2022_backup;

-- Trimmming non-consistent characters from the dataset
UPDATE  divvy_rides_2022
	SET member_casual = TRIM('"' FROM member_casual), 
		ride_id = TRIM('"' FROM ride_id),
		rideable_type = TRIM('"' FROM rideable_type),
		ended_at = TRIM('"' FROM ended_at) ,
		started_at = TRIM('"' FROM started_at),
		start_station_name = TRIM('"' FROM start_station_name),
		start_station_name = TRIM('*' FROM start_station_name),
		start_station_id = TRIM('"' FROM start_station_id),
		end_station_name = TRIM('"' FROM end_station_name),
		end_station_id = TRIM('"' FROM end_station_id);

-- Double Check the Trim, both queries have 0 rows returned

SELECT *
FROM divvy_rides_2022
WHERE LENGTH(member_casual) > 6 ;

-- Some more work to do so we trim off all the overflow
UPDATE divvy_rides_2022
	SET  member_casual = SUBSTRING(member_casual,1,6);

UPDATE  divvy_rides_2022
	SET	member_casual = TRIM('\0''\b''\n''\t''\r''\z' FROM member_casual) ;

-- Same with rideable types

UPDATE divvy_rides_2022
	SET rideable_type = CASE 
			WHEN rideable_type LIKE "%ele%" THEN rideable_type = SUBSTRING(member_casual,1,13)
			ELSE rideable_type = rideable_type
			END,
		rideable_type = CASE
			WHEN rideable_type LIKE "%cla%" THEN rideable_type = SUBSTRING(member_casual,1,12)
			ELSE rideable_type = rideable_type
			END,
		rideable_type = CASE
			WHEN rideable_type LIKE "%doc%" THEN rideable_type = SUBSTRING(member_casual,1,11)
			ELSE rideable_type = rideable_type
			END;

-- Replacing blank name values and 0 lat/long values with Nulls and "Unknown"

UPDATE divvy_rides_2022
	SET start_station_name = 'Unknown',
		start_station_id = 'Unknown'
		WHERE start_station_name = '';

UPDATE divvy_rides_2022
	SET end_station_name = 'Unknown',
		end_station_id = 'Unknown'
		WHERE end_station_name = '';

UPDATE divvy_rides_2022
	SET  start_lat = NULL
    WHERE start_lat = 0;

UPDATE divvy_rides_2022
	SET  start_lng = NULL
	WHERE start_lng = 0;

UPDATE divvy_rides_2022
	SET  end_lat = NULL
	WHERE end_lat = 0;

UPDATE divvy_rides_2022
	SET  end_lng = NULL
	WHERE end_lng = 0;

-- Double Check the lat and longs no longer have 0 values and the stations no longer have blanks

SELECT MIN(start_lat),
MIN(start_lng),
MIN(end_lat),
MIN(end_lng)
FROM divvy_rides_2022;

SELECT *
FROM divvy_rides_2022
WHERE start_station_name = '';

-- Converting start/ending time column to Datetime 

ALTER TABLE divvy_rides_2022
	MODIFY started_at DATETIME,
	MODIFY ended_at DATETIME;

-- Creating columns for Month and time of day
ALTER TABLE divvy_rides_2022
	ADD COLUMN time_started TIME,
	ADD COLUMN time_ended TIME,
	ADD COLUMN month_of_ride VARCHAR(2);

UPDATE divvy_rides_2022
SET month_of_ride = SUBSTRING(started_at, 6,2),
	time_started = SUBSTRING(started_at, 12,8),
	time_ended = SUBSTRING(ended_at, 12,8);