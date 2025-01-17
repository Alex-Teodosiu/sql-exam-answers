SELECT
    ROUND(AVG(COALESCE(LENGTH(biography), 0)), 2) AS average_character_count
FROM
    doctor;
