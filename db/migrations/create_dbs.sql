createdb message_board
CREATE TABLE messages(id SERIAL PRIMARY KEY, name VARCHAR(50), message VARCHAR(200), date DATETIME);

createdb message_board_test
CREATE TABLE messages(id SERIAL PRIMARY KEY, name VARCHAR(50), message VARCHAR(200), date DATETIME);