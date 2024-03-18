CREATE TABLE user (
  userId VARCHAR(60) PRIMARY KEY,
  username VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  profileImg VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
);

INSERT INTO user (userId, username, profileImg) VALUES ('asd', '박근원', 'asddsfg'), ('KIM', '김기재', 'assadsad'), ('LEE', '이다인', 'asdfgfw'), ('MIN', '김민재', 'wekjrqhg'), ('GYU', '강민규', 'dfglkjha');

SELECT userId, username
FROM user
ORDER BY created LIMIT 1;

SELECT userId
FROM user
WHERE userId = 'asd';

DELETE FROM user
WHERE username = '박근원';

UPDATE user
SET userId = 'dsa'
WHERE username = '김기재';