INSERT INTO person (person_id, first_name, last_name) VALUES
(1, 'Alice', 'Johnson'),
(2, 'Brian', 'Smith'),
(3, 'Carla', 'Davis'),
(4, 'David', 'Lee'),
(5, 'Emily', 'Clark'),
(6, 'Frank', 'Miller');

INSERT INTO musician (person_id, position) VALUES
(1, 'Concertmaster'),
(2, 'First Violin'),
(3, 'Principal Flute'),
(4, 'Principal Trumpet');

INSERT INTO conductor (person_id, affiliation) VALUES
(5, 'BYU Symphony Orchestra');

INSERT INTO instrument (instrument_id, name, family, owned_by_orchestra) VALUES
(1, 'Violin', 'Strings', FALSE),
(2, 'Violin', 'Strings', TRUE),
(3, 'Flute', 'Woodwinds', FALSE),
(4, 'Trumpet', 'Brass', TRUE);

INSERT INTO instrument_musician (instrument_id, musician_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO address (address_id, street, city, state, zip) VALUES
(1, '100 Main St', 'New York', 'NY', '10001'),
(2, '200 Broadway Ave', 'Boston', 'MA', '02115');

INSERT INTO concert (concert_id, date, title, address_id, conductor_id) VALUES
(1, '2025-11-15 19:30:00', 'Fall Symphony Concert', 1, 5),
(2, '2025-12-20 20:00:00', 'Holiday Gala', 2, 5);

INSERT INTO concert_musician (concert_id, musician_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 3);

INSERT INTO song (song_id, title, composer, duration_in_minutes) VALUES
(1, 'Symphony No. 5', 'Beethoven', 33),
(2, 'The Nutcracker Suite', 'Tchaikovsky', 25),
(3, 'Trumpet Concerto in E-flat', 'Haydn', 15);

INSERT INTO song_concert (concert_id, song_id, order_number) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1);
