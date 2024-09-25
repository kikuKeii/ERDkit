-- Memvalidasi OTP
UPDATE user_otps 
SET is_verifed = TRUE, updated_at = NOW()
WHERE uid = (SELECT id FROM users WHERE email = 'john.doe@example.com')
AND code = '123456' AND type = 'email' AND is_verifed = FALSE AND etime >= NOW();

-- Memperbarui Status Verifikasi User
UPDATE users 
SET email_verifed_at = NOW(), updated_at = NOW()
WHERE id = (SELECT uid FROM user_otps WHERE code = '123456' AND type = 'email' AND is_verifed = TRUE);
