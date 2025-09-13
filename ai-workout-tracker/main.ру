import json
from utils.calculator import calculate_stats
from utils.visualizer import plot_progress
from utils.exporter import export_csv

WORKOUT_FILE = "workouts/sample_data.json"

def load_workouts():
    try:
        with open(WORKOUT_FILE, "r", encoding="utf-8") as f:
            return json.load(f)
    except FileNotFoundError:
        return []

def save_workouts(data):
    with open(WORKOUT_FILE, "w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=4)

def add_workout(workouts, workout):
    workouts.append(workout)
    save_workouts(workouts)

if __name__ == "__main__":
    workouts = load_workouts()
    add_workout(workouts, {"type":"run","distance_km":5.2,"time_min":27,"calories":350})
    stats = calculate_stats(workouts)
    print("📊 Stats:", stats)
    plot_progress(workouts)             # покажет график локально
    export_csv(workouts, "workouts.csv")

## Install & Run
```bash
python3 -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt
python main.py
