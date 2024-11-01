--liquibase formatted sql

--changeset nzhaxylyk:1
INSERT INTO role (name) VALUES ('ROLE_ADMIN');
INSERT INTO role (name) VALUES ('ROLE_CUSTOMER');

INSERT INTO users (username, email, password)
VALUES ('admin', 'admin@bookstore.com', 'admin123');

INSERT INTO user_roles (user_id, role_id) VALUES (1,1);

INSERT INTO users (username, email, password)
VALUES ('customer1', 'customer@bookstore.com', 'customer123');

INSERT INTO user_roles (user_id, role_id) VALUES (2, 2);

INSERT INTO book (title, author, category, price, description, stock_quantity)
VALUES ('Effective Java', 'Joshua Bloch', 'Programming', 50.00, 'A must-read for every Java developer', 5);

INSERT INTO book (title, author, category, price, description, stock_quantity)
VALUES ('Spring in Action', 'Craig Walls', 'Programming', 45.00, 'Comprehensive guide to Spring Framework', 10);

INSERT INTO book (title, author, category, price, description, stock_quantity)
VALUES ('Clean Code', 'Robert C. Martin', 'Programming', 40.00, 'Guidelines for writing clean and maintainable code', 7);

INSERT INTO orders (user_id, total_price) VALUES (2, 95.00);

INSERT INTO order_books (order_id, book_id) VALUES (1, 1);
INSERT INTO order_books (order_id, book_id) VALUES (1, 2);