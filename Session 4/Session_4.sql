-- Tasks
-- 1.
-- Create a table called Playlist with columns: id, song_name, artist, genre, and play_count. Insert at least 5 sample records representing your favorite songs from Spotify.
-- 2.
-- Write a SELECT query to display only the song_name and artist from the Playlist table, but show the artist column as 'Singer' using an alias.
-- 3.
-- Write a SELECT query to find all songs in the Playlist table where the genre is 'Pop' and play_count is greater than 100. Sort the results by play_count in descending order.
-- 4.
-- Use the COUNT aggregate function to find out how many songs in your Playlist table belong to the genre 'Hip-Hop'.
-- 5.
-- Write a SELECT query that shows the total number of plays (SUM of play_count) for each genre in your Playlist table, grouped by genre.<br><br><em><strong>Hint:</strong> Use GROUP BY with the SUM function to aggregate play counts by genre.</em>

-- Session 4: Data Retrieval with SELECT

CREATE DATABASE Session4DB;

USE Session4DB;


-- Task 1: Create Playlist table

CREATE TABLE Playlist (
    id INT AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    genre VARCHAR(50),
    play_count INT
);

INSERT INTO Playlist (song_name, artist, genre, play_count)
VALUES
('Blinding Lights', 'The Weeknd', 'Pop', 250),
('Shape of You', 'Ed Sheeran', 'Pop', 180),
('Believer', 'Imagine Dragons', 'Rock', 150),
('Gods Plan', 'Drake', 'Hip-Hop', 120),
('Lose Yourself', 'Eminem', 'Hip-Hop', 95);

SELECT * FROM Playlist;


-- Task 2: Alias

SELECT song_name, artist AS Singer
FROM Playlist;


-- Task 3: WHERE + ORDER BY

SELECT *
FROM Playlist
WHERE genre = 'Pop'
AND play_count > 100
ORDER BY play_count DESC;


-- Task 4: COUNT

SELECT COUNT(*) AS HipHop_Songs
FROM Playlist
WHERE genre = 'Hip-Hop';


-- Task 5: SUM + GROUP BY

SELECT genre, SUM(play_count) AS Total_Plays
FROM Playlist
GROUP BY genre;