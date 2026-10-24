INSERT INTO companies (name, website, country_code) VALUES
('Valve', 'https://www.valvesoftware.com', 'US'),
('Mojang Studios', 'https://www.mojang.com', 'SE'),
('Supergiant Games', 'https://www.supergiantgames.com', 'US');

INSERT INTO users (username, email, password_hash, avatar_url, country_code, balance) VALUES
('yavor17', 'yavor@tues.bg', 'hash123', 'uploads/avatar1.png', 'BG', 50.00),
('ivan_ivanov', 'ivan@tues.bg', 'hash456', 'uploads/avatar2.png', 'BG', 0);

INSERT INTO genres (name) VALUES
('Action'),
('RPG'),
('Survival'),
('Indie');

INSERT INTO games (title, description, release_date, price, age_rating, header_image_url, developer_id) VALUES
('Portal 2', 'First-person puzzle platformer video game', '2011-04-19', 9.99, 3, 'portal2.jpg', 1),
('Minecraft', 'Sandbox game about placing blocks and going on adventures', '2011-11-18', 26.95, 7, 'minecraft.jpg', 2),
('Hades', 'Rogue-like dungeon crawler', '2020-09-17', 24.99, 12, 'hades.jpg', 3);

INSERT INTO game_genres (game_id, genre_id) VALUES
(1, 1),
(2, 3),
(2, 4), 
(3, 1),
(3, 2);

INSERT INTO reviews (user_id, game_id, recommended, body) VALUES
(1, 1, true, 'Good game :)'),
(2, 3, true, 'Bad game :(');