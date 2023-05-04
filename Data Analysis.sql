-- Looking at the amount of members vs casual rides in each month
CREATE TABLE Casual_Rides_Total_By_Month AS
(   SELECT month_of_ride AS "Month",
		   count(*) as "number_of_rides"
	FROM divvy_rides_2022
    WHERE member_casual = "casual"
	GROUP BY month_of_ride
    ORDER BY month_of_ride
);

CREATE TABLE Member_Rides_Total_By_Month AS
(   SELECT month_of_ride AS "Month",
	count(*) as "number_of_rides"
	FROM divvy_rides_2022
    WHERE member_casual = "member"
	GROUP BY month_of_ride
    ORDER BY month_of_ride
);
CREATE TABLE Member_And_Casual_Ride_Totals_By_Month AS
(	SELECT cr.month,
	cr.number_of_rides AS Casual_rides,
	mr.number_of_rides AS Member_rides
	FROM Casual_Rides_Total_By_Month cr
	INNER JOIN member_rides_total_by_month mr ON mr.Month = cr.Month
);

-- Looking at the type of bike members are riding most often in each month compared to casuals

CREATE TABLE Casual_Bike_Types_By_Month AS
(	SELECT month_of_ride AS "Month",
		SUM(IF(rideable_type = "classic_bike", 1, 0)) AS classic_bike,
		SUM(IF(rideable_type = "electric_bike", 1, 0)) AS electric_bike,
		SUM(IF(rideable_type = "docked_bike", 1, 0)) AS docked_bike,
        count(*) as total_rides
	FROM divvy_rides_2022    
    WHERE member_casual = "casual"
	GROUP BY month_of_ride
    ORDER BY month_of_ride
);

CREATE TABLE Member_Bike_Types_By_Month AS
(	SELECT month_of_ride AS "Month",
		SUM(IF(rideable_type = "classic_bike", 1, 0)) AS classic_bike,
		SUM(IF(rideable_type = "electric_bike", 1, 0)) AS electric_bike,
		SUM(IF(rideable_type = "docked_bike", 1, 0)) AS docked_bike,
        count(*) as total_rides
	FROM divvy_rides_2022    
    WHERE member_casual = "member"
	GROUP BY month_of_ride
    ORDER BY month_of_ride
);

-- Looking at where Casual Riders are most often starting their rides
CREATE TABLE Casual_Ride_Locations AS
(	SELECT start_station_name,
    count(*) as rides
    FROM divvy_rides_2022
    WHERE member_casual = "casual"
    GROUP BY start_station_name
    ORDER BY rides DESC
);
