-- sept2022 member_casual has extra characters
UPDATE sept2022 
  SET  member_casual = SUBSTRING(member_casual,1,6);
DELETE FROM sept2022
WHERE member_casual LIKE '"%';



-- The Oct Nov and DEC CSVs have quotes surrounding the data so we will remove those first
UPDATE oct2022 
	SET ride_id = TRIM('"' FROM ride_id),
		rideable_type = TRIM('"' FROM rideable_type),
		ended_at = TRIM('"' FROM ended_at) ,
		started_at = TRIM('"' FROM started_at),
		start_station_name = TRIM('"' FROM start_station_name),
		start_station_id = TRIM('"' FROM start_station_id),
		end_station_name = TRIM('"' FROM end_station_name),
		end_station_id = TRIM('"' FROM end_station_id),
		member_casual = TRIM('"' FROM member_casual);
  
UPDATE oct2022 
  SET  member_casual = SUBSTRING(member_casual,1,LENGTH(member_casual)-1);

UPDATE nov2022
	SET ride_id = TRIM('"' FROM ride_id),
		rideable_type = TRIM('"' FROM rideable_type),
		ended_at = TRIM('"' FROM ended_at) ,
		started_at = TRIM('"' FROM started_at),
		start_station_name = TRIM('"' FROM start_station_name),
		start_station_id = TRIM('"' FROM start_station_id),
		end_station_name = TRIM('"' FROM end_station_name),
		end_station_id = TRIM('"' FROM end_station_id),
		member_casual = TRIM('"' FROM member_casual);

UPDATE nov2022 
  SET  member_casual = SUBSTRING(member_casual,1,LENGTH(member_casual)-1);

UPDATE dec2022 
	SET ride_id = TRIM('"' FROM ride_id),
		rideable_type = TRIM('"' FROM rideable_type),
		ended_at = TRIM('"' FROM ended_at) ,
		started_at = TRIM('"' FROM started_at),
		start_station_name = TRIM('"' FROM start_station_name),
		start_station_id = TRIM('"' FROM start_station_id),
		end_station_name = TRIM('"' FROM end_station_name),
		end_station_id = TRIM('"' FROM end_station_id),
		member_casual = TRIM('"' FROM member_casual);
	
UPDATE dec2022 
  SET  member_casual = SUBSTRING(member_casual,1,LENGTH(member_casual)-1);
        

-- Replacing blank name values and 0 lat/long values with Nulls and "Unknown"

UPDATE jan2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE jan2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE feb2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE feb2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE march2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE march2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE april2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE april2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE may2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE may2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE june2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE june2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE july2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE july2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE aug2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE aug2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE sept2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE sept2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE oct2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE oct2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE nov2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE nov2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

UPDATE dec2022
SET end_station_name = 'Unknown',
	end_station_id = 'Unknown',
    end_lat = NULL,
    end_lng = NULL
WHERE end_station_name = '';

UPDATE dec2022
SET start_station_name = 'Unknown',
	start_station_id = 'Unknown'
WHERE start_station_name = '';

-- Converting start/ending time columns to Datetime 

ALTER TABLE jan2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE feb2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE march2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE april2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE may2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE june2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE july2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE aug2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE sept2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE oct2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE nov2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

ALTER TABLE dec2022
MODIFY started_at DATETIME,
MODIFY ended_at DATETIME;

-- SET Primary Key as Ride ID

ALTER TABLE jan2022
    ADD PRIMARY KEY(ride_id);

ALTER TABLE feb2022
    ADD PRIMARY KEY(ride_id);
    
ALTER TABLE march2022
    ADD PRIMARY KEY(ride_id);

ALTER TABLE april2022
    ADD PRIMARY KEY(ride_id);

ALTER TABLE may2022
    ADD PRIMARY KEY(ride_id);

ALTER TABLE june2022
    ADD PRIMARY KEY(ride_id);

ALTER TABLE july2022
    ADD PRIMARY KEY(ride_id);
    
ALTER TABLE aug2022
    ADD PRIMARY KEY(ride_id);
    
ALTER TABLE sept2022
    ADD PRIMARY KEY(ride_id);

ALTER TABLE oct2022
    ADD PRIMARY KEY(ride_id);    

ALTER TABLE nov2022
    ADD PRIMARY KEY(ride_id);

ALTER TABLE dec2022
    ADD PRIMARY KEY(ride_id);
