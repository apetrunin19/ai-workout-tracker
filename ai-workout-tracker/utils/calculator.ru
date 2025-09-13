def calculate_stats(workouts):
    total_distance = sum(w.get("distance_km", 0) for w in workouts)
    total_time = sum(w.get("time_min", 0) for w in workouts)
    total_calories = sum(w.get("calories", 0) for w in workouts)
    avg_pace = round(total_time / total_distance, 2) if total_distance > 0 else None  # min/km
    return {
        "total_distance_km": round(total_distance, 2),
        "total_time_min": total_time,
        "total_calories": total_calories,
        "avg_pace_min_per_km": avg_pace
    }
