--liquibase formatted sql

--changeset nzhaxylyk:1
CREATE TABLE book (
                      id SERIAL PRIMARY KEY,
                      title VARCHAR(255) NOT NULL,
                      author VARCHAR(255) NOT NULL,
                      category VARCHAR(100),
                      price DECIMAL(10, 2) NOT NULL,
                      description TEXT,
                      stock_quantity INT NOT NULL
);


--changeset nzhaxylyk:2
CREATE TABLE users (
                       id SERIAL PRIMARY KEY,
                       username VARCHAR(50) NOT NULL UNIQUE,
                       email VARCHAR(100) NOT NULL UNIQUE,
                       password VARCHAR(255) NOT NULL
);

--changeset nzhaxylyk:3
CREATE TABLE role (
                      id SERIAL PRIMARY KEY,
                      name VARCHAR(50) NOT NULL
);

--changeset nzhaxylyk:4
CREATE TABLE user_roles (
                            user_id BIGINT NOT NULL,
                            role_id BIGINT NOT NULL,
                            FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
                            FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
                            PRIMARY KEY (user_id, role_id)
);

--changeset nzhaxylyk:5
CREATE TABLE orders (
                        id SERIAL PRIMARY KEY,
                        user_id BIGINT NOT NULL,
                        order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        total_price DECIMAL(10, 2),
                        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

--changeset nzhaxylyk:6
CREATE TABLE order_books (
                             order_id BIGINT NOT NULL,
                             book_id BIGINT NOT NULL,
                             FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
                             FOREIGN KEY (book_id) REFERENCES book(id) ON DELETE CASCADE,
                             PRIMARY KEY (order_id, book_id)
)