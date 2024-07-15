--todo
-- content , due_date , completed
CREATE TABLE todo(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   content TEXT,
   due_date TEXT, 
   completed INTEGER
);
INSERT INTO todo(content,due_date,completed)
VALUES("study english","2020-10-10",0);

INSERT INTO todo VALUES(3,"study math","2024",0);
DELETE FROM todo WHERE content = "study math";


SELECT * from todo;



