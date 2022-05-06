CREATE DATABASE arches;

CREATE TABLE trails (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    difficulty_level TEXT,
    map_id INT NOT NULL
);

CREATE TABLE maps (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    location TEXT
);

CREATE TABLE reports (
    id SERIAL PRIMARY KEY,
    type TEXT,
    author TEXT NOT NULL,
    date DATE NOT NULL,
    arch_id INT NOT NULL
);

CREATE TABLE background_info (
    id SERIAL PRIMARY KEY,
    original_reporter TEXT,
    references_sources TEXT,
    arch_id INT NOT NULL
);

CREATE TABLE pictures (
    id SERIAL PRIMARY KEY,
    date DATE,
    photographer TEXT,
    arch_id INT UNIQUE NOT NULL
);

CREATE TABLE arches (
    id SERIAL PRIMARY KEY,
    gps_point INT UNIQUE,
    size_gad INT NOT NULL,
    size_lad INT,
    name TEXT UNIQUE NOT NULL,
    rating INT,
    type TEXT,
    trail_id INT,
    map_id INT NOT NULL,
    picture_id INT UNIQUE NOT NULL
);

CREATE TABLE arches_background_info (
    arch_id INT,
    background_info_id INT,
    PRIMARY KEY(arch_id, background_info_id)
);

ALTER TABLE arches_background_info
ADD CONSTRAINT fk_arches_background_info_arches
FOREIGN KEY (arch_id)
REFERENCES arches;

ALTER TABLE arches_background_info
ADD CONSTRAINT fk_arches_background_info_background_info
FOREIGN KEY (background_info_id)
REFERENCES background_info;

ALTER TABLE trails
ADD CONSTRAINT fk_trails_maps
FOREIGN KEY (map_id)
REFERENCES maps;

ALTER TABLE reports
ADD CONSTRAINT fk_reports_arches
FOREIGN KEY (arch_id)
REFERENCES arches;

ALTER TABLE background_info
ADD CONSTRAINT fk_background_info_arches
FOREIGN KEY (arch_id)
REFERENCES arches;

ALTER TABLE pictures
ADD CONSTRAINT fk_pictures_arches
FOREIGN KEY (arch_id)
REFERENCES arches;

ALTER TABLE arches
ADD CONSTRAINT fk_arches_trails
FOREIGN KEY (trail_id)
REFERENCES trails;

ALTER TABLE arches
ADD CONSTRAINT fk_arches_maps
FOREIGN KEY (map_id)
REFERENCES maps;

ALTER TABLE arches
ADD CONSTRAINT fk_arches_pictures
FOREIGN KEY (picture_id)
REFERENCES pictures;