INSERT INTO maps (name, location)
VALUES ('Grandstaff Canyon', 'UT');

INSERT INTO trails (name, difficulty_level, map_id)
VALUES ('Morning Glory Bridge', 'maintained trail', 1);

INSERT INTO arches (gps_point, size_gad, size_lad, name, rating, type, trail_id, map_id)
VALUES ('(108,97)', 25, 1.5, 'Morning Glory Bridge', 8, 'bridge', 1, 1);

INSERT INTO reports (type, author, arch_id, date)
VALUES ('most recent', 'Bobbie Nelson', 1, '05/07/22');

INSERT INTO background_info(original_reporter, references_sources)
VALUES('David Alexander', 'The Arches Book');

INSERT INTO pictures (date, photographer, link_to_db, arch_id)
VALUES ('05/07/22', 'Henry Hiker', 'www.archphoto23.yay', 1);

UPDATE arches
SET picture_id = 1
WHERE arch_id = 1;

INSERT INTO arches_background_info
VALUES (1,1);




INSERT INTO maps (name, location)
VALUES ('Arches National Park', 'UT');

INSERT INTO trails (name, difficulty_level, map_id)
VALUES ('Delicate Arch', 'maintained trail, steep', 2);

INSERT INTO arches (gps_point, size_gad, size_lad, name, rating, type, trail_id, map_id)
VALUES ('(45.44,33.2123)', 100, 47.5, 'Delicate Arch', 10, 'bridge', 2, 2);

INSERT INTO reports (type, author, arch_id)
VALUES ('most recent', 'Random Tourist', 2);

INSERT INTO background_info(original_reporter, references_sources)
VALUES('Bates Wilson', 'History of UT');

INSERT INTO pictures (date, photographer, link_to_db, arch_id)
VALUES ('05/07/22', 'Henry Hiker', 'www.archphoto47.yay', 2);

UPDATE arches
SET picture_id = 2
WHERE id = 2;

INSERT INTO arches_background_info
VALUES (2,2);