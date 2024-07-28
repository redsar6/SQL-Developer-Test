USE survey_db;

CREATE VIEW survey_response_scores AS
SELECT 
    s.survey_name, 
    q.question_text, 
    r.response_text, 
    CAST(r.response_text AS UNSIGNED) AS score
FROM 
    responses r
JOIN 
    questions q ON r.question_id = q.question_id
JOIN 
    surveys s ON q.survey_id = s.survey_id;
