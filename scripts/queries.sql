USE survey_db;

-- Consulta básica para recuperar todas las respuestas de una encuesta específica
SELECT s.survey_name, q.question_text, r.response_text
FROM responses r
JOIN questions q ON r.question_id = q.question_id
JOIN surveys s ON q.survey_id = s.survey_id
WHERE s.survey_id = 1;

-- Consulta avanzada para calcular el promedio de puntuación para cada encuesta
SELECT s.survey_name, AVG(CAST(r.response_text AS DECIMAL)) AS average_score
FROM responses r
JOIN questions q ON r.question_id = q.question_id
JOIN surveys s ON q.survey_id = s.survey_id
GROUP BY s.survey_name;

-- Consulta avanzada para encontrar los 3 usuarios con el mayor puntaje promedio de respuesta
SELECT u.user_name, AVG(CAST(r.response_text AS DECIMAL)) AS average_score
FROM responses r
JOIN users u ON r.user_id = u.user_id
GROUP BY u.user_name
ORDER BY average_score DESC
LIMIT 3;

-- Consulta avanzada para determinar la distribución de respuestas para cada pregunta en una encuesta específica
SELECT q.question_text, r.response_text, COUNT(*) AS response_count
FROM responses r
JOIN questions q ON r.question_id = q.question_id
WHERE q.survey_id = 1
GROUP BY q.question_text, r.response_text;
