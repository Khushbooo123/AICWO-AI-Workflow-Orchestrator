
import pandas as pd

workflow = pd.read_csv("workflow_master.csv")
tasks = pd.read_csv("task_tracker.csv")

delayed_tasks = tasks[tasks['delay_flag'] == "Yes"]
merged = delayed_tasks.merge(workflow, on="workflow_id")

print("Delayed Cross-Department Tasks:")
print(merged[['workflow_id','department_from','department_to','assigned_to']])
