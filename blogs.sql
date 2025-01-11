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
SELECT * FROM authors WHERE id = 2;

-- UPDATE : update an author’s name in the authors table
UPDATE authors SET author_name = 'Harry Doe' WHERE id = 1;

--DELETE : delete an author by their ID from the authors table
DELETE FROM authors WHERE id = 5;

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
DELETE FROM categories WHERE id = 6;

-- categories table query end


-- blogs table query start
--CREATE : add a new blog to the blogs table
INSERT INTO blogs (title, body, category_id, author_id) VALUES ('MY Blog', 'My Blogs Content', 2, 2);

--READ : retrieve all blogs from the blogs table
SELECT * FROM blogs;

--READ : retrieve a specific blog by its ID from the blogs table    
SELECT * FROM blogs WHERE id = 1;

--retrieve all blogs with their category and author information
SELECT blogs.title, blogs.body, categories.category_name, authors.author_name FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;

--update a blog’s category or author in the blogs table
UPDATE blogs SET category_id = 3, author_id = 2 WHERE id = 10;

--UPDATE : update a blog’s title in the blogs table
UPDATE blogs SET title = 'Updated My Blog Title' WHERE id = 1;

--DELETE : delete a blog by its ID from the blogs table
DELETE FROM blogs WHERE id = 1;
-- blogs table query end


 --get all blogs written by a specific author
 SELECT authors.author_name, blogs.title, blogs.body FROM blogs
 JOIN authors ON blogs.author_id = authors.id
 WHERE authors.id = 2;



--get all blogs under a specific category
SELECT categories.category_name, blogs.title, blogs.body FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.category_name = "Technology";