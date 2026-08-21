CREATE TABLE ALL_YEAR_TRIP LIKE `202508-divvy-tripdata`; 

-- To create a table for all 12 files containing bike trips from each month

SET SQL_SAFE_UPDATES = 0;

INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202508-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202509-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202510-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202511-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202512-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202601-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202602-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202603-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202604-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202605-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202606-divvy-tripdata`;
INSERT INTO ALL_YEAR_TRIP SELECT * FROM `202607-divvy-tripdata`;

SET SQL_SAFE_UPDATES = 1;

-- Import all the data from all 12 datasets into all_year_trip to count all the rows and make space to look for duplicates and blank values to replace with NULL VALUES

CREATE TABLE cleaned_year_trips AS
SELECT 
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    TIMESTAMPDIFF(SECOND, started_at, ended_at) AS ride_length_seconds,
    DAYNAME(started_at) AS day_of_week,
    MONTHNAME(started_at) AS month_name,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM ALL_YEAR_TRIP
WHERE started_at > '2000-01-01 00:00:00'
  AND ended_at > '2000-01-01 00:00:00'
  AND TIMESTAMPDIFF(SECOND, started_at, ended_at) >= 60
  AND TIMESTAMPDIFF(SECOND, started_at, ended_at) <= 86400;

-- created a table with cleaned data along with adding other calculated columns to better analyze the data
