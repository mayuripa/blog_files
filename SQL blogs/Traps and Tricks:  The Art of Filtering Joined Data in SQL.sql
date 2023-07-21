
-- creating the table of users of Instagram
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    followers INT,
    following INT,
    reputation INT
);
-- Insert the values into the users table
INSERT INTO users (user_id, username, followers, following, reputation)
VALUES
    (100, 'mike_anderson', 300, 90, 55),
    (101, 'john_doe', 500, 200, 80),
    (102, 'jane_smith', 1000, 300, 60),
    (106, 'bob_johnson', 800, 350, 45),
    (107, 'mary_brown', 1200, 400, 70),
    (108, 'sam_williams', 900, 250, 90),
    (109, 'lisa_jackson', 600, 180, 75);


SELECT * FROM users;



-- create the table for the posts of Instagram
CREATE TABLE posts_upload (
    post_id INT PRIMARY KEY,
    user_id INT,
    caption VARCHAR(200) NOT NULL,
    likes INT,
    comments INT,
    creation_date DATE
);

-- Insert the values into the table for posts_upload.

INSERT INTO posts_upload(post_id, user_id, caption, likes, comments, creation_date)
VALUES
    (1, 101, 'Beautiful sunset! ', 150, 20, '2023-07-15'),
    (2, 102, 'Exploring new places! ', 230, 35, '2023-07-16'),
    (3, 103, 'Yummy food! ', 80, 10, '2023-07-16'),
    (4, 104, 'Fun times with friends! ', 180, 25, '2023-07-17'),
    (5, 105, 'Relaxing weekend vibes.', 270, 40, '2023-07-18'),
    (6, 106, 'Morning coffee! ', 200, 30, '2023-07-18'),
    (7, 101, 'Happy Friday! ', 120, 15, '2023-07-19'),
    (8, 107, 'Beach day! ', 90, 12, '2023-07-19'),
    (9, 104, 'Missing this place. ', 70, 8, '2023-07-20'),
    (10, 102, 'Throwback memories. ', 110, 18, '2023-07-20'),
    (11, 103, 'Weekend hiking. ', 130, 22, '2023-07-21'),
    (12, 106, 'Enjoying the view.', 180, 25, '2023-07-21'),
    (13, 107, 'Family time.', 50, 7, '2023-07-21'),
    (14, 108, 'Exploring nature.', 40, 6, '2023-07-21'),
    (15, 103, 'Final post. Goodbye.', 10, 2, '2023-07-22'),
	(16, 109, 'Happy birthday best buddy.', 19, 7, '2023-07-26');


SELECT * FROM users;
SELECT * FROM posts_upload;

--INNER JOIN
SELECT u.*,pu.post_id,pu.creation_date
FROM users as u JOIN  posts_upload as pu 
ON u.user_id = pu.user_id;


-- LEFT JOIN
SELECT u.*,pu.post_id,pu.creation_date
FROM users as u LEFT JOIN  posts_upload as pu 
ON u.user_id = pu.user_id;

--Accidental inner join
SELECT u.*,pu.post_id,pu.creation_date
FROM users as u LEFT JOIN  posts_upload as pu 
ON u.user_id = pu.user_id
WHERE pu.creation_date NOT  BETWEEN '2023-07-16' AND '2023-07-18';


-- currecting accident inner join method 1 
SELECT u.*,pu.post_id,pu.creation_date
FROM users as u LEFT JOIN  posts_upload as pu 
ON u.user_id = pu.user_id
AND pu.creation_date NOT  BETWEEN '2023-07-16' AND '2023-07-18';


-- currecting accident inner join method 2
SELECT u.*,pu.post_id,pu.creation_date
FROM users as u LEFT JOIN  posts_upload as pu 
ON u.user_id = pu.user_id
WHERE (pu.creation_date NOT  BETWEEN '2023-07-16' AND '2023-07-18')
OR (pu.user_id IS NULL) ;
