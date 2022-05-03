SELECT assignments.id as id, assignments.name, assignments.day, assignments.chapter, count(completed_at) as total_requests
FROM assistance_requests
JOIN assignments on assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;