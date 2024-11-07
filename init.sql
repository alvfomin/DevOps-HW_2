-- Создаем тестового пользователя с тестовым паролем
CREATE USER test WITH PASSWORD 'test_password';

-- Создаем базу данных с именем test и назначаем владельца
CREATE DATABASE test OWNER test;
