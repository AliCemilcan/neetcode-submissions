-- Write your query below

WITH topStudents as (
    Select student_id, exam_id,score, 
ROW_NUMBER() over (partition by student_id order by score desc, exam_id asc) as rnk
From exam_results
)

Select student_id, exam_id, score from topStudents  WHERE rnk=1 order by student_id asc