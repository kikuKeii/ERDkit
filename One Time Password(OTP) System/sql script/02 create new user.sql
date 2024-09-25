INSERT INTO users (
    email_verifed_at, phone_verifed_at, fname, lname, username, email, password, phone, ustreet1, ustreet2, ucity, ustate, uzip, created_at, updated_at
) VALUES (
    NULL, NULL, 'John', 'Doe', 'johndoe', 'john.doe@example.com', 'hashed_password', '1234567890', '123 Main St', 'Apt 101', 'CityName', 'StateName', 12345, NOW(), NOW()
);
