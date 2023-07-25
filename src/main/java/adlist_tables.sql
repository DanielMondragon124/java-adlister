USE adlister_db;


CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                       username VARCHAR(50) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       password VARCHAR(100) NOT NULL
);

-- Create the "ads" table
CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR(100) NOT NULL,
                     description TEXT NOT NULL,
                     FOREIGN KEY (user_id) REFERENCES users(id)
);


