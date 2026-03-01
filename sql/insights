
-- SLA Breach by Department
SELECT department_to,
COUNT(*) AS total_tasks,
SUM(CASE WHEN delay_flag='Yes' THEN 1 ELSE 0 END) AS delayed_tasks
FROM task_tracker
JOIN workflow_master USING(workflow_id)
GROUP BY department_to;

-- Most Delayed Workflow
SELECT workflow_id, COUNT(*) AS delay_count
FROM task_tracker
WHERE delay_flag='Yes'
GROUP BY workflow_id
ORDER BY delay_count DESC;
