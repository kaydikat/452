CREATE TABLE person (
    person_id INTEGER UNSIGNED NOT NULL  PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE musician (
    person_id INTEGER UNSIGNED NOT NULL PRIMARY KEY,
    position VARCHAR(50),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

CREATE TABLE conductor (
    person_id INTEGER UNSIGNED NOT NULL PRIMARY KEY,
    affiliation VARCHAR(100),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

CREATE TABLE instrument (
    instrument_id INTEGER UNSIGNED NOT NULL  PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    family VARCHAR(50) NOT NULL,
    owned_by_orchestra BOOLEAN NOT NULL
);

CREATE TABLE instrument_musician (
    instrument_id INTEGER UNSIGNED NOT NULL,
    musician_id INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (instrument_id, musician_id),
    FOREIGN KEY (instrument_id) REFERENCES instrument(instrument_id),
    FOREIGN KEY (musician_id) REFERENCES musician(person_id)
);

CREATE TABLE concert_musician (
    concert_id INTEGER UNSIGNED NOT NULL,
    musician_id INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (concert_id, musician_id),
    FOREIGN KEY (concert_id) REFERENCES concert(concert_id),
    FOREIGN KEY (musician_id) REFERENCES musician(person_id)
);

CREATE TABLE address (
    address_id INTEGER UNSIGNED NOT NULL  PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state CHAR(2) NOT NULL,
    zip VARCHAR(10) NOT NULL
);

CREATE TABLE concert (
    concert_id INTEGER UNSIGNED NOT NULL  PRIMARY KEY,
    date DATETIME NOT NULL,
    title VARCHAR(255) NOT NULL,
    address_id INTEGER UNSIGNED NOT NULL,
    conductor_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (conductor_id) REFERENCES conductor(person_id)
);

CREATE TABLE song (
    song_id INTEGER UNSIGNED NOT NULL  PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    composer VARCHAR(255) NOT NULL,
    duration_in_minutes INT NOT NULL
);

CREATE TABLE song_concert (
    concert_id INTEGER UNSIGNED NOT NULL,
    song_id INTEGER UNSIGNED NOT NULL,
    order_number INTEGER NOT NULL,
    PRIMARY KEY (concert_id, song_id),
    FOREIGN KEY (concert_id) REFERENCES concert(concert_id),
    FOREIGN KEY (song_id) REFERENCES song(song_id)
);