USE survey_db;

DELIMITER //

CREATE PROCEDURE calculate_survey_score(IN survey_id INT)
BEGIN
    DECLARE total_score INT DEFAULT 0;
    DECLARE question_score INT;
    DECLARE done INT DEFAULT 0;
    DECLARE cur CURSOR FOR 
        SELECT CAST(response_text AS UNSIGNED) 
        FROM responses r
        JOIN questions q ON r.question_id = q.question_id
        WHERE q.survey_id = survey_id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
    OPEN cur;
    
    read_loop: LOOP
        FETCH cur INTO question_score;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SET total_score = total_score + question_score;
    END LOOP;
    
    CLOSE cur;
    
    SELECT total_score AS survey_score;
END //

DELIMITER ;
