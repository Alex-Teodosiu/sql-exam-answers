WITH SpecializationVisitCounts AS (
    SELECT
        doctor.specialization,
        doctor.id AS doctor_id,
        COUNT(visit.id) AS doctor_visits
    FROM
        doctor
    LEFT JOIN
        visit ON doctor.id = visit.doctor_id
    GROUP BY
        doctor.specialization, doctor.id
),
    
SpecializationAverages AS (
    SELECT
        specialization,
        AVG(doctor_visits) AS avg_visits
    FROM
        SpecializationVisitCounts
    GROUP BY
        specialization
)
    
SELECT
    doctor.first_name,
    doctor.last_name
FROM
    SpecializationVisitCounts
JOIN
    SpecializationAverages ON SpecializationVisitCounts.specialization = SpecializationAverages.specialization
JOIN
    doctor ON SpecializationVisitCounts.doctor_id = doctor.id
WHERE
    SpecializationVisitCounts.doctor_visits > SpecializationAverages.avg_visits
ORDER BY
    doctor.last_name;
