INSERT INTO genre (genre_id, genre_name) 
VALUES	(1, 'Pop'),
		(2, 'Rock'),
		(3, 'Rap, Hip-Hop'),
		(4, 'Techno'),
		(5, 'Jazz');
	
INSERT INTO artist (artist_id, artist_name) 
VALUES 	(1, 'Dua Lipa'),
		(2, 'Ed Sheeran'),
		(3, '50 Cent'),
		(4, 'Imagine Dragons'),
		(5, 'Nirvana'),
		(6, 'Boris Brejcha'),
		(7, 'Claude VonStroke'),
		(8, 'Nina Simone');
	
INSERT INTO artist_genres (artist_id, genre_id) 
VALUES 	(1, 1),
		(2, 1),
		(3, 3),
		(4, 2),
		(4, 1),
		(5, 2),
		(6, 4),
		(7, 4),
		(8, 5);

INSERT INTO album (album_id, album_name, album_realase_year) 
VALUES 	(1, 'Dua Lipa', 2017),
		(2, '=', 2021),
		(3, 'Animal Ambition', 2014),
		(4, 'Origins', 2018),
		(5, 'In Utero', 1993),
		(6, 'Space Diver', 2020),
		(7, 'Freaks & Beaks', 2020),
		(8, 'Nina at the Village Gate', 1962);
		
INSERT INTO album_autors (artist_id, album_id) 
VALUES 	(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8);
		
INSERT INTO track (track_id, album_id, track_name, track_duration) 
VALUES 	(1, 1, 'Genesis', 205),
		(2, 1, 'New Rules', 212),
		(3, 2, 'Tides', 195),
		(4, 2, 'Shivers', 207),
		(5, 3, 'Hold On', 226),
		(6, 3, 'Pilot', 200),
		(7, 4, 'Natural', 189),
		(8, 4, 'Machine', 181),
		(9, 5, 'Rape Me', 170),
		(10, 5, 'Serve the Servants', 216),
		(11, 6, 'Gravity', 565),
		(12, 6, 'Blue Lake', 490),
		(13, 7, 'All My People In The House', 284),
		(14, 7, 'Flubblebuddy', 269),
		(15, 8, 'If He Changed My Name', 345),
		(16, 8, 'Just in Time', 372);
	
INSERT INTO digest (digest_id, digest_name, digest_realase_year) 
VALUES 	(1, 'Pop and Hip-hop', 2018),
		(2, 'Rock and Pop', 2021),
		(3, 'Pop and Techno', 2023),
		(4, 'All', 2016),
		(5, 'Jazz and Pop', 2022),
		(6, 'Rock and Techno', 2020),
		(7, 'Jazz and Rock', 2012),
		(8, 'Techno and Hip-Hop', 2021);
		
INSERT INTO track_in_digest (track_id, digest_id) 
VALUES 	(1, 1),
		(3, 1),
		(5, 1),
		(6, 1),
		(1, 2),
		(2, 2),
		(7, 2),
		(9, 2),
		(1, 3),
		(3, 3),
		(11, 3),
		(13, 3),
		(1, 4),
		(3, 4),
		(5, 4),
		(7, 4),
		(9, 4),
		(11, 4),
		(13, 4),
		(1, 5),
		(3, 5),
		(15, 5),
		(16, 5),
		(12, 6),
		(14, 6),
		(7, 6),
		(9, 6),
		(8, 7),
		(10, 7),
		(15, 7),
		(16, 7),
		(12, 8),
		(14, 8),
		(5, 8),
		(6, 8);
		