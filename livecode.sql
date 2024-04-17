-- Livecode Queries
-- hello
-- 1. List all customers (name + email), ordered alphabetically (no extra information) (Should yield 59 results)
-- SELECT first_name, last_name, email FROM customers
-- ORDER BY first_name ASC;

-- 2. List all 'Rock' tracks (only names) (Should yield 1297 results)
-- SELECT tracks.name FROM tracks
-- JOIN genres ON genres.id = tracks.genre_id
-- WHERE genres.name = 'Rock';

-- 3. List the first ten albums of the Jukebox DB, sorted alphabetically (First result should be "...And Justice For All" and last one "Ace Of Spades")
-- SELECT title FROM albums
-- ORDER BY title ASC
-- LIMIT 10;

-- 4. Count the number of tracks that are shorter than 2 minutes (Should yield 93 results)
-- SELECT COUNT(*) FROM tracks
-- WHERE milliseconds < 120000;

-- 5. List tracks (Name + Composer) of the 'Classical' playlist (Should yield 75 results)
-- SELECT tracks.name, composer FROM playlist_tracks
-- JOIN tracks ON tracks.id = playlist_tracks.track_id
-- JOIN playlists ON playlists.id = playlist_tracks.playlist_id
-- WHERE playlists.name = 'Classical';

-- 6. List the 10 artists most listed in all playlists
-- (First Result should be Iron Maiden with 516 occurences and the last should be Lenny Kravitz with 143 occurances)
-- SELECT artists.name, COUNT(*) FROM artists
-- JOIN albums ON artists.id = albums.artist_id
-- JOIN tracks ON albums.id = tracks.album_id
-- JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
-- GROUP BY artists.id
-- ORDER BY COUNT(*) DESC
-- LIMIT 10;

-- 7. List the tracks(composer + name) which have been purchased at least twice, ordered by number of purchases  (Should yield 265 results Steve Harris - The Trooper having 5 purchases)
-- SELECT composer, name, COUNT(*) purchases FROM tracks t
-- JOIN invoice_lines i ON t.id = i.track_id
-- GROUP BY t.id
-- HAVING purchases >= 2
-- ORDER BY purchases DESC;
