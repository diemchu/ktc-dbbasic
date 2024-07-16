SELECT * FROM todo;
INSERT INTO todo(content,due_date,completed)
VALUES('go to school','2022-12-12',1);



CREATE TABLE todo(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   content VARCHAR(50),
   due_date VARCHAR(20),
   completed VARCHAR(10)  
);

INSERT INTO todo (content, due_date, completed) VALUES ('Task 1', '2024-07-16', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 2', '2024-07-17', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 3', '2024-07-18', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 4', '2024-07-19', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 5', '2024-07-20', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 6', '2024-07-21', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 7', '2024-07-22', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 8', '2024-07-23', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 9', '2024-07-24', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 10', '2024-07-25', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 11', '2024-07-26', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 12', '2024-07-27', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 13', '2024-07-28', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 14', '2024-07-29', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 15', '2024-07-30', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 16', '2024-07-31', 'false');
INSERT INTO todo (content, due_date, completed) VALUES ('Task 17', '2024-08-01', 'false');

SELECT * FROM TODO ;
DELETE FROM todo WHERE ID = 1;