SELECT 
member_casual,
COUNT(*) AS total_rides,
ROUND(AVG(ride_length_seconds) / 60, 2) AS avg_ride_length_minutes,
MAX(ride_length_seconds) / 60 AS max_ride_length_minutes
FROM cleaned_year_trips
GROUP BY member_casual;

-- To get the total number of rides during the 12 months and find the average ride length for all bike trips for members and casuals

SELECT 
member_casual,
day_of_week,
COUNT(*) AS total_rides,
ROUND(AVG(ride_length_seconds) / 60, 2) AS avg_ride_length_minutes
FROM cleaned_year_trips
GROUP BY member_casual, day_of_week
ORDER BY member_casual, FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

--Get ride volume and average ride duration by day of the week

SELECT 
member_casual,
month_name,
COUNT(*) AS total_rides,
ROUND(AVG(ride_length_seconds) / 60, 2) AS avg_ride_length_minutes
FROM cleaned_year_trips
GROUP BY member_casual, month_name;

-- To find the total rides and average ride duration for each month for each distinct member types

SELECT 
member_casual,
rideable_type,
COUNT(*) AS total_rides
FROM cleaned_year_trips
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_rides DESC;

-- Get total rides for each member type(memeber/casual) and their bike used for riding(electric/classic) in a descending order.

SELECT 
start_station_name,
COUNT(*) AS total_casual_rides
FROM cleaned_year_trips
WHERE member_casual = 'casual' 
AND start_station_name IS NOT NULL 
AND start_station_name != ''
GROUP BY start_station_name
ORDER BY total_casual_rides DESC
LIMIT 10;

-- Find the top 10 stations for casual members and the total number of rides that start from each station

CREATE TABLE summary_top_routes AS
SELECT 
member_casual,
start_station_name,
end_station_name,
COUNT(*) AS route_trip_count,
ROUND(AVG(ride_length_seconds) / 60, 2) AS avg_route_duration
FROM cleaned_year_trips
WHERE start_station_name IS NOT NULL AND start_station_name != ''
AND end_station_name IS NOT NULL AND end_station_name != ''
GROUP BY member_casual, start_station_name, end_station_name
ORDER BY route_trip_count DESC;

-- create a new table to sum up all the top routes which consists of member types, start station name, end station name, route trip count, and average route duration so creating viz in tableau would be easier.

CREATE TABLE summary_usage_by_time AS
SELECT 
member_casual,
month_name,
day_of_week,
HOUR(started_at) AS start_hour,
COUNT(*) AS total_trips,
ROUND(AVG(ride_length_seconds) / 60, 2) AS avg_ride_length
FROM cleaned_year_trips
GROUP BY member_casual, month_name, day_of_week, HOUR(started_at)
ORDER BY FIELD(month_name, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'),
FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'),
start_hour;

-- create another table to summarize the duration of rides by months and days.
