INSERT INTO user_otps (
    uid, type, value, code, is_verifed, ctime, etime, created_at, updated_at
) VALUES (
    (SELECT id FROM users WHERE email = 'john.doe@example.com'), 'email', 'john.doe@example.com', '123456', FALSE, NOW(), DATE_ADD(NOW(), INTERVAL 10 MINUTE), NOW(), NOW()
);
