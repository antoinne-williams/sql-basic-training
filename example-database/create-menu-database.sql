-- Create the menu database
CREATE DATABASE IF NOT EXISTS menu;

-- Use the menu database
USE menu;

-- Create the entrees table
CREATE TABLE IF NOT EXISTS entrees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(8, 2) NOT NULL,
    is_vegetarian BOOLEAN DEFAULT FALSE,
    is_gluten_free BOOLEAN DEFAULT FALSE
);

-- Create the sides table
CREATE TABLE IF NOT EXISTS sides (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(8, 2) NOT NULL,
    is_vegetarian BOOLEAN DEFAULT FALSE,
    is_gluten_free BOOLEAN DEFAULT FALSE
);

-- Create the desserts table
CREATE TABLE IF NOT EXISTS desserts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(8, 2) NOT NULL,
    is_vegetarian BOOLEAN DEFAULT TRUE, -- Most desserts are vegetarian
    is_gluten_free BOOLEAN DEFAULT FALSE
);

-- Example data insertion for entrees
INSERT INTO entrees (name, description, price, is_vegetarian, is_gluten_free)
VALUES
('Grilled Chicken', 'Juicy grilled chicken breast served with herbs.', 12.99, FALSE, TRUE),
('Veggie Pasta', 'Pasta with mixed vegetables in a creamy sauce.', 10.99, TRUE, FALSE);

-- Example data insertion for sides
INSERT INTO sides (name, description, price, is_vegetarian, is_gluten_free)
VALUES
('French Fries', 'Crispy golden fries.', 3.99, TRUE, TRUE),
('Caesar Salad', 'Fresh romaine lettuce with Caesar dressing.', 4.99, TRUE, FALSE);

-- Example data insertion for desserts
INSERT INTO desserts (name, description, price, is_vegetarian, is_gluten_free)
VALUES
('Chocolate Cake', 'Rich and moist chocolate cake.', 5.99, TRUE, FALSE),
('Fruit Salad', 'Fresh seasonal fruits.', 4.49, TRUE, TRUE);

-- Query to verify the data
SELECT * FROM entrees;
SELECT * FROM sides;
SELECT * FROM desserts;
