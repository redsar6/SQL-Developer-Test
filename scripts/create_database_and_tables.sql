-- Crear la base de datos
CREATE DATABASE survey_db;
USE survey_db;

-- Crear la tabla surveys
CREATE TABLE surveys (
    survey_id INT AUTO_INCREMENT PRIMARY KEY,
    survey_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear la tabla questions
CREATE TABLE questions (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    survey_id INT,
    question_text TEXT NOT NULL,
    FOREIGN KEY (survey_id) REFERENCES surveys(survey_id)
);

-- Crear la tabla users
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) UNIQUE NOT NULL
);

-- Crear la tabla responses
CREATE TABLE responses (
    response_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    question_id INT,
    response_text TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (question_id) REFERENCES questions(question_id)
);
