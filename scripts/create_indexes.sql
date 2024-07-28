USE survey_db;

-- Crear índices para optimizar las consultas
CREATE INDEX idx_survey_id ON questions(survey_id);
CREATE INDEX idx_user_id ON responses(user_id);
CREATE INDEX idx_question_id ON responses(question_id);
