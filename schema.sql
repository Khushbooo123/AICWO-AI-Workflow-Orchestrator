
CREATE TABLE workflow_master (
    workflow_id VARCHAR(10),
    department_from VARCHAR(50),
    department_to VARCHAR(50),
    task_name VARCHAR(100),
    SLA_hours INT,
    priority VARCHAR(20),
    automation_flag VARCHAR(10)
);

CREATE TABLE task_tracker (
    task_id VARCHAR(10),
    workflow_id VARCHAR(10),
    assigned_to VARCHAR(50),
    start_time DATE,
    end_time DATE,
    status VARCHAR(50),
    delay_flag VARCHAR(10)
);
