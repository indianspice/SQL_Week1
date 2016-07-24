-- Sharon Morris
-- Week 2 Assignment

-- 1. Video listing

DROP TABLE IF EXISTS video;

CREATE TABLE video 
(
	ID VARCHAR(2) PRIMARY KEY NOT NULL,
    Video_title VARCHAR(200) NOT NULL,
    Length time,
    URL VARCHAR(200)
);

-- 2. Populate 

INSERT INTO video
	(ID, Video_Title, Length, URL)
    VALUES (1, 'MySQL Tutorial for Beginners: USE, SELECT, results set, DISTINCT ALL', 
    '12:34', 'https://www.youtube.com/watch?v=dgRKdOKlBQU');
INSERT INTO video
	(ID, Video_Title, Length, URL)
    VALUES (2, 'Create Schema and table - MYSQL Workbench', 
    '00:07:10', 'https://www.youtube.com/watch?v=1xs8LbEL_CI');
INSERT INTO video
	(ID, Video_Title, Length, URL)
    VALUES (3, 'Yoga For Runners Level 2 Cyclists Marathon Athletes', 
    '00:31:10', 'https://www.youtube.com/watch?v=sLu5g3f1KuQ');   
    
SELECT * 
FROM video;


--2 Create and populate reviewers table

DROP TABLE IF EXISTS reviewers;

CREATE TABLE reviewers
(
	Reviewer_ID VARCHAR(2) PRIMARY KEY NOT NULL,
    User_name VARCHAR(50),
    Rating INT,
    Review VARCHAR(100),
    ID VARCHAR(2) NOT NULL REFERENCES video(ID)
);

INSERT INTO reviewers 
	(Reviewer_ID, User_name, Rating, Review, ID)
    VALUES (1, 'Sharon', NULL, 'Awesome', 1);
INSERT INTO reviewers 
	(Reviewer_ID, User_name, Rating, Review, ID)
    VALUES (2, 'Sharon', 1, 'Eh', 2);
INSERT INTO reviewers 
	(Reviewer_ID, User_name, Rating, Review, ID)
    VALUES (3, 'Larry', 5, 'Love it', 2);
INSERT INTO reviewers 
	(Reviewer_ID, User_name, Rating, Review, ID)
    VALUES (4, 'Larry', 2, 'okay', 1); 
INSERT INTO reviewers 
	(Reviewer_ID, User_name, Rating, Review, ID)
    VALUES (5, 'Larry', 1, 'okay', 3);   
    
SELECT * FROM reviewers;


--Write a JOIN statement that shows information from both tables

SELECT  Video_Title, Length, URL, User_name, Rating, Review
FROM video v
LEFT JOIN reviewers r
ON v.ID = r.ID
ORDER BY Video_title;
    
	