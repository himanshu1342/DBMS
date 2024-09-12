
/* schema Boat*/

CREATE TABLE Boat   (
    b_id INT PRIMARY KEY,     
    b_name VARCHAR(255) NOT NULL,
    color VARCHAR(50) NOT NULL
);

   INSERT INTO Boat VALUES (1, 'PRIVAGO', 'Blue');
   INSERT INTO Boat VALUES (2, 'BLUE ZONE', 'Green');
   INSERT INTO Boat VALUES (3, 'CORDILLIA', 'Red');
   INSERT INTO Boat VALUES (4, 'OCEANIA', 'White');
   INSERT INTO Boat VALUES (5, 'SEAGULL', 'Yellow');

SELECT * FROM Boat;

/* schema sailor*/ 
   
CREATE TABLE Sailor(
    s_id INT PRIMARY KEY,    
    s_name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    rating INT NOT NULL
);

   INSERT INTO Sailor VALUES (1, 'John', 25, 4);
   INSERT INTO Sailor VALUES (2, 'Jane', 30, 5);
   INSERT INTO Sailor VALUES (3, 'Alice', 28, 3);
   INSERT INTO Sailor VALUES (4, 'Bob', 35, 2);
   INSERT INTO Sailor VALUES (5, 'Charlie', 40, 4);
SELECT * FROM Sailor; 

/* schema reservation*/ 

CREATE TABLE Reservation(
    s_id INT,                  
    b_id INT,                  
    reservation_date DATE NOT NULL,
    FOREIGN KEY(s_id) REFERENCES Sailor(s_id),
    FOREIGN KEY(b_id) REFERENCES Boat(b_id)
);


INSERT INTO Reservation VALUES (1, 1, DATE '2024-09-01');
INSERT INTO Reservation VALUES (2, 2, DATE '2024-09-02');
INSERT INTO Reservation VALUES (3, 3, DATE '2024-09-03');
INSERT INTO Reservation VALUES (4, 4, DATE '2024-09-04');
INSERT INTO Reservation VALUES (5, 5, DATE '2024-09-05');

SELECT * FROM Reservation;

SELECT s_name,age FROM Sailor;

SELECT s_name FROM Sailor WHERE rating > 2;

SELECT s_name FROM Sailor WHERE s_id IN (
    SELECT s_id FROM Reservation WHERE b_id = 2
);

SELECT s_name FROM Sailor WHERE s_id IN (
    SELECT s_id FROM Reservation WHERE b_id IN (
        SELECT b_id FROM Boat WHERE color = 'Red'
    )
);

SELECT color FROM Boat WHERE b_id IN (
    SELECT b_id FROM Reservation WHERE s_id IN (
    	SELECT s_id FROM Sailor WHERE s_name = 'John' 
    )
);

SELECT s_name FROM Sailor WHERE s_id IN (
    SELECT s_id FROM Reservation WHERE b_id IN (
        SELECT b_id FROM Boat WHERE color = 'Blue'
    )
);

SELECT * FROM Sailor WHERE s_id IN (
    SELECT s_id FROM Reservation WHERE b_id = 1
);

SELECT * FROM Sailor WHERE s_id IN (
    SELECT s_id FROM Reservation WHERE b_id = 1
);

SELECT b_name FROM Boat WHERE b_id IN (
    SELECT b_id FROM Reservation WHERE s_id IN (
    	SELECT s_id FROM Sailor WHERE s_name = 'John' 
    )
);


SELECT s_name
FROM Sailor
WHERE s_id IN (
    SELECT s_id
    FROM Reservation
    WHERE b_id IN (
        SELECT b_id
        FROM Boat
        WHERE color = 'Red'
    )
)
ORDER BY age;


SELECT DISTINCT s_name
FROM Sailor
WHERE s_id IN (
    SELECT s_id
    FROM Reservation
);


SELECT DISTINCT s_id
FROM Reservation
WHERE b_id IN (
    SELECT b_id
    FROM Boat
    WHERE color IN ('Red', 'Green')
);


SELECT s_name, age
FROM Sailor
WHERE age = (
    SELECT MIN(age)
    FROM Sailor
);


SELECT COUNT(DISTINCT s_name) AS num_unique_sailor_names FROM Sailor;


SELECT rating, AVG(age) AS avg_age
FROM Sailor
GROUP BY rating;
