import csv

def export_csv(workouts, path="workouts.csv"):
    fields = ["type", "distance_km", "time_min", "calories"]
    with open(path, "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        w.writerows(workouts)
