-- answear for question 1:

SELECT 
    s.name AS student_name,
    SUM(m.price * oi.quantity) AS total_owed
FROM order_items oi
JOIN students s ON oi.student_id = s.id
JOIN menu_items m ON oi.menu_item_id = m.id
WHERE oi.order_id = 1
GROUP BY s.id, s.name;

-- answear for question 2:

SELECT 
    o.id AS order_id,
    o.order_date,
    SUM(m.price * oi.quantity) AS total_order_amount
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN menu_items m ON oi.menu_item_id = m.id
GROUP BY o.id, o.order_date
ORDER BY o.order_date ASC;

-- tables:
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE menu_items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL
);

CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
    student_id INT NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    menu_item_id INT NOT NULL REFERENCES menu_items(id) ON DELETE CASCADE,
    quantity INT NOT NULL CHECK (quantity > 0)
);

-- inserted data:
INSERT INTO students (name) VALUES 
('Student 1'),
('Student 2'),
('Student 3'),
('Student 4'),
('Student 5');

INSERT INTO menu_items (name, price) VALUES 
('Pizza Margherita', 7.50),
('Pizza Pepperoni', 8.50),
('Sandwich', 4.80),
('Coca-Cola', 2.50),
('Water', 1.50),
('Cake', 25.20);

INSERT INTO orders (order_date) VALUES 
('2026-10-26'),
('2026-10-17');

INSERT INTO order_items (order_id, student_id, menu_item_id, quantity) VALUES 
(1, 1, 1, 1), 
(1, 1, 4, 2), 
(1, 2, 2, 1), 
(1, 2, 5, 1),
(1, 3, 3, 1),
(2, 4, 1, 4),
(2, 5, 6, 3);