CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    release_date DATE,
    price NUMERIC(10, 2) NOT NULL,
    age_rating INT,
    header_image_url VARCHAR(255),
    developer_id INT REFERENCES companies(id)
);