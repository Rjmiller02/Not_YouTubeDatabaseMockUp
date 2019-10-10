CREATE TABLE subscription(
    id IDENTITY PRIMARY KEY,
    tier_name VARCHAR NOT NULL,
    price INT NOT NULL
);

CREATE INDEX tier_name
ON subscription (tier_name);


CREATE TABLE users(
    id IDENTITY PRIMARY KEY,
    username VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    is_over_18 BOOLEAN NOT NULL,
    subscription_id INT NOT NULL,
    FOREIGN KEY(subscription_id) REFERENCES subscription(id)
);

CREATE INDEX username
ON users (username);
CREATE INDEX subscription_id
ON users (subscription_id);

CREATE TABLE billing_information(
    id IDENTITY PRIMARY KEY,
    users_id INT NOT NULL,
    cardholder VARCHAR NOT NULL,
    card_number NUMBER NOT NULL,
    card_security_code INT NOT NULL,
    FOREIGN KEY(users_id) REFERENCES users(id)
);

CREATE INDEX users_id
ON billing_information (users_id);

CREATE TABLE playlist(
    id IDENTITY PRIMARY KEY,
    playlist_name VARCHAR NOT NULL
);

CREATE INDEX playlist_name
ON playlist (playlist_name);

CREATE TABLE users_playlist(
    id IDENTITY PRIMARY KEY,
    users_id INT NOT NULL,
    playlist_id INT NOT NULL,
    FOREIGN KEY(users_id) REFERENCES users(id),
    FOREIGN KEY(playlist_id) REFERENCES playlist(id)
);

CREATE INDEX playlist_id
ON users_playlist (playlist_id);

CREATE TABLE channel(
    id IDENTITY PRIMARY KEY,
    channel_name VARCHAR(100) NOT NULL,
    users_id INT NOT NULL,
    FOREIGN KEY(users_id) REFERENCES users(id)
);

CREATE INDEX channel_name
ON channel (channel_name);

CREATE TABLE video(
    id IDENTITY PRIMARY KEY,
    video_name VARCHAR(200) NOT NULL,
    upload_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    video_path VARCHAR NOT NULL,
    channel_id INT NOT NULL,
    FOREIGN KEY(channel_id) REFERENCES channel(id)
);

CREATE INDEX video_name
ON video (video_name);
CREATE INDEX upload_date
ON video (upload_date);
CREATE INDEX channel_id
ON video (channel_id);

CREATE TABLE category(
    id IDENTITY PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE INDEX category_name
ON category (category_name);

CREATE TABLE video_category(
    id IDENTITY PRIMARY KEY,
    video_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY(video_id) REFERENCES video(id),
    FOREIGN KEY(category_id) REFERENCES category(id)
);

CREATE INDEX video_id
ON video_category (video_id);
CREATE INDEX category_id
ON video_category (category_id);

CREATE TABLE comment(
    id IDENTITY PRIMARY KEY,
    users_id INT NOT NULL,
    video_id INT NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    message VARCHAR(300) NOT NULL,
    FOREIGN KEY(users_id) REFERENCES users(id),
    FOREIGN KEY(video_id) REFERENCES video(id)
);

CREATE INDEX date_created
ON comment (date_created);

CREATE TABLE video_playlist(
    id IDENTITY PRIMARY KEY,
    video_id INT NOT NULL,
    playlist_id INT NOT NULL,
    FOREIGN KEY(video_id) REFERENCES video(id),
    FOREIGN KEY(playlist_id) REFERENCES playlist(id)
);


CREATE TABLE advertisement(
    id IDENTITY PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    advert_path VARCHAR NOT NULL
);

CREATE INDEX company_name
ON advertisement (company_name);

CREATE TABLE category_advertisement(
    id IDENTITY PRIMARY KEY,
    category_id INT NOT NULL,
    advertisement_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id),
    FOREIGN KEY (advertisement_id) REFERENCES advertisement(id)
);

CREATE INDEX advertisement_id
ON category_advertisement (advertisement_id);

CREATE TABLE users_advertisement(
    id IDENTITY PRIMARY KEY,
    users_id INT NOT NULL,
    advertisement_id INT NOT NULL,
    FOREIGN KEY (users_id) REFERENCES users(id),
    FOREIGN KEY (advertisement_id) REFERENCES advertisement(id)
);