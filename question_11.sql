SELECT
    patient.first_name,
    patient.last_name,
    COALESCE(COUNT(DISTINCT visit.doctor_id), 0) AS doctors
FROM
    patient
LEFT JOIN
    visit ON patient.id = visit.patient_id
GROUP BY
    patient.id, patient.first_name, patient.last_name
ORDER BY
    patient.first_name ASC, patient.last_name ASC;
