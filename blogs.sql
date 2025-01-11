-- Active: 1736591052189@@127.0.0.1@3306@blogs



-- authors table query start  
CREATE TABLE authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- categories table 
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- blogs table
CREATE TABLE blogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
)

-- CREATE : add a new author to the authors table
INSERT INTO authors (author_name) VALUES ('Jone Doe');

-- READ : retrieve all authors from the authors table 
SELECT * FROM authors;

--READ : retrieve a specific author by their ID from the authors table
SELECT * FROM authors WHERE id = 10;

-- UPDATE : update an author’s name in the authors table
UPDATE authors SET author_name = 'Harry Doe' WHERE id = 9;

--DELETE : delete an author by their ID from the authors table
DELETE FROM authors WHERE id = 13;

-- authors table query end




-- categories table query start

--CREATE : a new category to the categories table
INSERT INTO categories (category_name) VALUES ('Programming');

--READ : retrieve all categories from the categories table
SELECT * FROM categories;

--READ : a specific category by its ID from the categories table
SELECT * FROM categories WHERE id = 5;

--UPDATE : update a category’s name in the categories table
UPDATE categories SET category_name = 'Our Category' WHERE id = 1;

--DELETE :delete a category by its ID from the categories table
DELETE FROM categories WHERE id = 2;

-- categories table query end
