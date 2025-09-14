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

## Visualizations

Run the project once to generate charts (they’ll be saved into `docs/`):

```bash
# deps
pip install -r requirements.txt

# generate images without opening windows
python - <<'PY'
import json, pathlib
from utils.visualizer import (
    plot_progress, plot_pace, plot_hist_distance, plot_by_type, plot_weekly_totals
)

workouts = json.load(open('workouts/sample_data.json','r',encoding='utf-8'))
pathlib.Path('docs').mkdir(exist_ok=True)

plot_progress(workouts, show=False, save_path='docs/progress.png')
plot_pace(workouts, rolling=3, show=False, save_path='docs/pace.png')
plot_hist_distance(workouts, bins=8, show=False, save_path='docs/dist_hist.png')
plot_by_type(workouts, metric='distance_km', show=False, save_path='docs/by_type.png')

# For weekly totals you need a "date" field in workouts (YYYY-MM-DD).
# If your data has dates, uncomment the next line:
# plot_weekly_totals(workouts, metric='distance_km', show=False, save_path='docs/weekly.png')
PY


