-- Looking at the amount of members vs casual rides in each month
CREATE TABLE Member_Ridership_By_Month AS
(   SELECT "JAN" as Month,
	member_casual as "membership_type",
	count(*) as "number_of_rides"
	FROM jan2022
	group by member_casual
);

ALTER TABLE Member_Ridership_By_Month
MODIFY Month VARCHAR(5);

INSERT INTO Member_Ridership_By_Month
	SELECT "FEB",
	member_casual,
	count(*)
	FROM feb2022
	group by member_casual;

INSERT INTO Member_Ridership_By_Month
	SELECT "MARCH",
	member_casual,
	count(*)
	FROM march2022
	group by member_casual;

INSERT INTO Member_Ridership_By_Month
	SELECT "APRIL",
	member_casual,
	count(*)
	FROM april2022
	group by member_casual;
    
INSERT INTO Member_Ridership_By_Month
	SELECT "MAY",
	member_casual,
	count(*)
	FROM may2022
	group by member_casual;
    
INSERT INTO Member_Ridership_By_Month
	SELECT "JUNE",
	member_casual,
	count(*)
	FROM june2022
	group by member_casual;
    
INSERT INTO Member_Ridership_By_Month
	SELECT "JULY",
	member_casual,
	count(*)
	FROM july2022
	group by member_casual;
    
INSERT INTO Member_Ridership_By_Month
	SELECT "AUG",
	member_casual,
	count(*)
	FROM aug2022
	group by member_casual;
    
INSERT INTO Member_Ridership_By_Month
	SELECT "SEPT",
	member_casual,
	count(*)
	FROM sept2022
	group by member_casual;
    
INSERT INTO Member_Ridership_By_Month
	SELECT "OCT",
	member_casual,
	count(*)
	FROM oct2022
	group by member_casual;

INSERT INTO Member_Ridership_By_Month
	SELECT "NOV",
	member_casual,
	count(*)
	FROM nov2022
	group by member_casual;
    
INSERT INTO Member_Ridership_By_Month
	SELECT "DEC",
	member_casual,
	count(*)
	FROM dec2022
	group by member_casual;

-- Looking at the type of bike members are riding most often in each month compared to casuals

CREATE TABLE Rideable_Type_By_Month_Casuals_only AS
(   SELECT "JAN" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM jan2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type
);
ALTER TABLE Rideable_Type_By_Month_Casuals_only
MODIFY Month VARCHAR(5);

INSERT INTO Rideable_Type_By_Month_Casuals_only
    SELECT "FEB" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM feb2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;
    
INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "MARCH" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM march2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;
    
INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "APRIL" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM april2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;

INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "MAY" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM may2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;

INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "JUNE" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM june2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;

INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "JULY" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM july2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;

INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "AUG" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM aug2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;
    
INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "SEPT" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM sept2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;
    
    INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "OCT" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM oct2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;
    
    INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "NOV" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM nov2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;
    
    INSERT INTO Rideable_Type_By_Month_Casuals_only
	SELECT "DEC" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM dec2022
    WHERE member_casual LIKE "c%"
    GROUP BY rideable_type;
    

CREATE TABLE Rideable_Type_By_Month_Members_only AS
(   SELECT "JAN" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM jan2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type
);
ALTER TABLE Rideable_Type_By_Month_Members_only
MODIFY Month VARCHAR(5);

INSERT INTO Rideable_Type_By_Month_Members_only
    SELECT "FEB" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM feb2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;
    
INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "MARCH" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM march2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;
    
INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "APRIL" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM april2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;

INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "MAY" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM may2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;

INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "JUNE" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM june2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;

INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "JULY" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM july2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;

INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "AUG" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM aug2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;
    
INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "SEPT" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM sept2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;
    
    INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "OCT" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM oct2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;
    
    INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "NOV" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM nov2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;
    
    INSERT INTO Rideable_Type_By_Month_Members_only
	SELECT "DEC" as Month,
	rideable_type,
    count(*) as "number_of_rides"
	FROM dec2022
    WHERE member_casual LIKE "m%"
    GROUP BY rideable_type;

-- Looking at where Casual Riders are most often starting their rides
CREATE TEMPORARY TABLE Ride_Locations_By_Month_Casuals_only AS
(   SELECT "JAN" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM jan2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name
);
ALTER TABLE Ride_Locations_By_Month_Casuals_only
MODIFY Month VARCHAR(5);

INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "FEB" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM feb2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;

INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "MARCH" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM march2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;

INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "APRIL" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM april2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;
    
INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "MAY" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM may2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;
    
INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "JUNE" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM june2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;
    
INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "JULY" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM july2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;

INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "AUG" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM aug2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;
    
INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "SEPT" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM sept2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;

INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "OCT" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM oct2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;

INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "NOV" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM nov2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;

INSERT INTO Ride_Locations_By_Month_Casuals_only
	SELECT "DEC" as Month,
	start_station_name,
    count(*) as "number_of_rides"
	FROM dec2022
    WHERE member_casual LIKE "c%"
    GROUP BY start_station_name;

CREATE TABLE Ride_Locations_By_Month_Casuals_only_Grouped
(
SELECT start_station_name,
SUM(number_of_rides) AS "number_of_rides"
FROM Ride_Locations_By_Month_Casuals_only
GROUP BY start_station_name
)