select * from tracks limit 10
-- (1) What are the top 10 most popular tracks based on the "popularity" column?
    -- select track_name , popularity from tracks order by popularity desc limit 10

--(2) Which artist has the highest average energy level in their tracks?
-- select artist_id, artist_name, energy from tracks order by energy desc limit 1

--(3) How does the average danceability vary across different genres?
-- select avg(danceability) as Average_danceability , genre from tracks group by genre
 
--(4) What is the distribution of track durations in the dataset?
-- select distinct track_name from tracks

--(5) Which track has the highest valence (positivity) score?
 -- select distinct track_name from tracks where valence = (Select max(valence) from tracks)


--(6) Are there any correlations between the loudness and energy of tracks?
--  select loudness , energy from tracks 

-- (7) How does the speechiness of tracks differ across different playlists?
-- select speechiness, track_name from tracks group by track_name , speechiness order by track_name

-- (8)What is the most common key used in tracks?
-- SELECT key, COUNT(*) AS key_count
-- FROM tracks
-- GROUP BY key
-- ORDER BY key_count DESC
-- LIMIT 1;

-- --(9) How has the average acousticness changed over the years?
-- SELECT EXTRACT(YEAR FROM release_date) AS years, 
--        CAST(AVG(acousticness) AS NUMERIC(10, 2)) AS avg_acousticness
-- FROM tracks
-- GROUP BY release_date
-- ORDER BY release_date DESC
-- LIMIT 10;

--(10) What is the average duration of tracks in each genre, and which genre has the highest average duration?
-- select CAST(avg(duration) AS NUMERIC (10,2)) as durations , genre from tracks group by genre order by durations desc

--(11) Which artist has the highest number of tracks in the dataset, and what is the average popularity of their tracks?
-- select artist_name, count(artist_name) as cnts , cast(avg(popularity) as numeric(10,2))  as Popularity_average from tracks group by artist_name order by cnts desc

--(12) Can you identify the top 5 playlists with the highest average danceability and energy ratings for their tracks?
-- select track_id , avg(danceability) as average_dancability ,
-- avg(energy) as average_energy from tracks group by track_id
-- order by average_dancability ,
-- average_energy desc limit 5

--(13) Are there any significant differences in the distribution of valence scores between tracks released before and after a certain year?
-- select extract(year from release_date) as years , cast(sum(valence) as numeric(10,2)) as valence_scores from tracks group by years
-- order by years desc

-- (14)Can you determine the key with the highest average loudness and its corresponding average popularity rating?
-- select popularity, loudness from tracks where loudness =
-- (
-- select max(loudness) as loudness_average
-- from tracks)



















