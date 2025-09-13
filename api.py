from fastapi import FastAPI
from utils.calculator import calculate_stats
import json

app = FastAPI(title="AI Workout Tracker API")
DATA = "workouts/sample_data.json"

def load():
    try:
        with open(DATA, "r", encoding="utf-8") as f:
            return json.load(f)
    except FileNotFoundError:
        return []

@app.get("/workouts")
def get_workouts():
    return load()

@app.get("/stats")
def get_stats():
    return calculate_stats(load())
