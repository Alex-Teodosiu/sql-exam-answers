SELECT DISTINCT
    treatment.name AS name,
    treatment.type AS type,
    doctor.first_name AS first_name,
    doctor.last_name AS last_name
FROM
    treatment
LEFT JOIN
    visit ON treatment.id = visit.treatment_id
LEFT JOIN
    doctor ON visit.doctor_id = doctor.id;
