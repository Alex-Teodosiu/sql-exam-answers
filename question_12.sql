SELECT
    patient.first_name AS patient_first_name,
    patient.last_name AS patient_last_name,
    doctor.first_name AS doctor_first_name,
    doctor.last_name AS doctor_last_name,
    doctor.specialization,
    COUNT(visit.id) AS visits
FROM
    visit
JOIN
    patient ON visit.patient_id = patient.id
JOIN
    doctor ON visit.doctor_id = doctor.id
GROUP BY
    patient.id, patient.first_name, patient.last_name,
    doctor.id, doctor.first_name, doctor.last_name, doctor.specialization
HAVING
    COUNT(visit.id) > 1
ORDER BY
    patient.last_name ASC,
    patient.first_name ASC,
    doctor.last_name ASC,
    doctor.first_name ASC;
