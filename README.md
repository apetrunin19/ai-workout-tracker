# AI Workout Tracker

Simple open-source project to track workouts (run, bike, swim) with stats and charts. Built with Python.

## Install & Run
```bash
python3 -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt
python main.py

## API
```bash
uvicorn api:app --reload
# http://127.0.0.1:8000/workouts
# http://127.0.0.1:8000/stats



