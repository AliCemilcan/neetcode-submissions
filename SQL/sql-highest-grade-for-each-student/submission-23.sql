-- Write your query below

-- WITH ranked_scores AS (
--     Select
--        MAX(score) as max_score,
--         student_id
--     From exam_results
--     Group by student_id
-- )

Select DISTINCT ON(student_id) student_id, exam_id,score
From exam_results
Order by
 student_id asc,
 score desc,
 exam_id asc
