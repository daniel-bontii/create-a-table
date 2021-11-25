--Create a table friends with id, name and birthday columns
CREATE TABLE friends (id INTEGER, name TEXT, birthday DATE);

--Add one rows of data to friends
INSERT INTO
    friends (id, name, birthday)
VALUES
    (1, 'Ororo Munroe', '1940-05-30');

INSERT INTO
    friends (id, name, birthday)
VALUES
    (2, 'Jane Wood', '1995-06-15');

INSERT INTO
    friends (id, name, birthday)
VALUES
    (3, 'Danny Boy', '1997-03-14');

--change the name of the first person in friends to Storm
UPDATE
    friends
SET
    name = 'Storm'
WHERE
    id = 1;

--add email column to friends
ALTER TABLE
    friends
ADD
    COLUMN email TEXT;

--Give all existing records emails
UPDATE
    friends
SET
    email = 'storm@codecademy.com'
WHERE
    id = 1;

UPDATE
    friends
SET
    email = 'jwood@yahoo.com'
WHERE
    id = 2;

UPDATE
    friends
SET
    email = 'dboy@hotmail.com'
WHERE
    id = 3;

--Check the content of friends after the updates
SELECT
    *
FROM
    friends;

--delete storm from friends
DELETE FROM
    friends
WHERE
    id = 1;

--Check the content of friends after the delete
SELECT
    *
FROM
    friends;