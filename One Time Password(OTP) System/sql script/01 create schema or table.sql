CREATE TABLE users (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    email_verifed_at DATETIME,
    phone_verifed_at DATETIME,
    fname VARCHAR(225),
    lname VARCHAR(225),
    username VARCHAR(225),
    email VARCHAR(225),
    password VARCHAR(225),
    phone VARCHAR(225),
    ustreet1 TEXT,
    ustreet2 TEXT,
    ucity VARCHAR(225),
    ustate VARCHAR(225),
    uzip INT(11),
    created_at DATETIME,
    updated_at DATETIME
);

CREATE TABLE user_otps (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    uid INT(11),
    type VARCHAR(225),
    value VARCHAR(225),
    code VARCHAR(225),
    is_verifed BOOLEAN DEFAULT FALSE,
    ctime DATETIME,
    etime DATETIME,
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (uid) REFERENCES users(id)
);
