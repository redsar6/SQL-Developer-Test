USE survey_db;

-- Insertar datos en la tabla surveys
INSERT INTO surveys (survey_name) VALUES 
('Customer Satisfaction Survey'), 
('Product Feedback Survey'), 
('Employee Engagement Survey');

-- Insertar datos en la tabla questions
INSERT INTO questions (survey_id, question_text) VALUES
(1, 'How satisfied are you with our service?'),
(1, 'Would you recommend our service to others?'),
(2, 'How would you rate the quality of our product?'),
(2, 'How likely are you to buy our product again?'),
(3, 'How engaged do you feel at work?');

-- Insertar datos en la tabla users
INSERT INTO users (user_name, user_email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');

-- Insertar datos en la tabla responses
INSERT INTO responses (user_id, question_id, response_text) VALUES
(1, 1, 'Very satisfied'),
(1, 2, 'Yes'),
(2, 3, 'Good'),
(2, 4, 'Likely'),
(3, 5, 'Engaged'),
(1, 3, 'Excellent'),
(2, 1, 'Satisfied'),
(3, 2, 'Maybe'),
(1, 4, 'Unlikely'),
(2, 5, 'Somewhat engaged');
