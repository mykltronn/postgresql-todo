
reatedb todo;
psql
CONNECT todo;

CREATE TABLE todolist (
 id SERIAL PRIMARY KEY,
 title VARCHAR(255) NOT NULL,
 details VARCHAR,
 priority INTEGER DEFAULT 1,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 completed_at TIMESTAMP);

...

INSERT INTO todolist (title, priority, created_at, completed_at) VALUES ('Wash diapers', 99, now(), now());
INSERT INTO todolist (title, priority, created_at) VALUES ('Fold diapers', 80, now());
INSERT INTO todolist (title, priority, created_at) VALUES ('Wash baby', 60, now());
INSERT INTO todolist (title, priority, created_at) VALUES ('Fold baby', 50, now());
INSERT INTO todolist (title, priority, created_at) VALUES ('Taker care of personal needs', 1, now());

SELECT * FROM todolist WHERE completed_at IS NULL;
SELECT * FROM todolist WHERE priority > 1;

UPDATE todolist SET completed_at = now() WHERE id = 3;

DELETE FROM todolist WHERE completed_at IS NOT NULL;
