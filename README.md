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


## Быстрый финальный чек
- Перенеси/удали всё из папки `ai-workout-tracker/` → она пропадёт. :contentReference[oaicite:3]{index=3}  
- Убедись, что нет файлов с расширением `.ru` (в GitHub нажми `t` и найди `.ru`).  
- После пары минут GitHub обновит «Languages» на Python. :contentReference[oaicite:4]{index=4}  
- Issues закроются автоматически по сообщениям коммитов.

Хочешь — накину ещё небольшой CI (GitHub Actions) для проверки, что `main.py` запускается и что JSON валидный, плюс готовый релиз `v0.1.0`.
::contentReference[oaicite:5]{index=5}
