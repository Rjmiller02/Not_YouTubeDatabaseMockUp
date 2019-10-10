INSERT INTO subscription VALUES(DEFAULT, 'Free', 0.00);
INSERT INTO subscription VALUES(DEFAULT, 'Common', 20.00);
INSERT INTO subscription VALUES(DEFAULT, 'Mythic', 100.00);

INSERT INTO users VALUES(DEFAULT, 'videomaster', 'password123', TRUE, 1);
INSERT INTO users VALUES(DEFAULT, 'ilovevideos', 'videosareawesome', FALSE, 2);

INSERT INTO billing_information VALUES(DEFAULT, 1, 'Rob Miller', 123456, 123);
INSERT INTO billing_information VALUES(DEFAULT, 2, 'Judah Maendel', 234561, 231);

INSERT INTO playlist VALUES(DEFAULT, 'Best Hits 2018');
INSERT INTO playlist VALUES(DEFAULT, 'All The Things');

INSERT INTO users_playlist VALUES(DEFAULT, 1, 1);
INSERT INTO users_playlist VALUES(DEFAULT, 2, 2);

INSERT INTO channel VALUES(DEFAULT, 'Greatest Songs Of Every Year', 1);
INSERT INTO channel VALUES(DEFAULT, 'Random Viral Videos', 2);

INSERT INTO video VALUES(DEFAULT, DEFAULT, 'Video Path 1', 1);
INSERT INTO video VALUES(DEFAULT, DEFAULT, 'Video Path 2', 2);

INSERT INTO category VALUES(DEFAULT, 'Music');
INSERT INTO category VALUES(DEFAULT, 'Random');

INSERT INTO video_category VALUES(DEFAULT, 1, 1);
INSERT INTO video_category VALUES(DEFAULT, 2, 2);

INSERT INTO comment VALUES(DEFAULT, 1, 1, DEFAULT, 'BEST VIDEO EVER!');
INSERT INTO comment VALUES(DEFAULT, 2, 2, DEFAULT, 'Like and Subscribe! :)');

INSERT INTO series VALUES(DEFAULT, 1, 'Best Hits 2018');
INSERT INTO series VALUES(DEFAULT, 1, 'All The Things');

INSERT INTO video_playlist VALUES(DEFAULT, 1, 1);
INSERT INTO video_playlist VALUES(DEFAULT, 2, 2);

INSERT INTO advertisement VALUES(DEFAULT, 'Dr. Fizz Soda', 'Advert Path 1');
INSERT INTO advertisement VALUES(DEFAULT, 'Super Good Medicine Inc.', 'Advert Path 2');