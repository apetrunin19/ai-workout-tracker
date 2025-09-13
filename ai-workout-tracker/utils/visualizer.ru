import matplotlib.pyplot as plt

def plot_progress(workouts, show=True, save_path=None):
    if not workouts:
        return
    distances = [w.get("distance_km", 0) for w in workouts]
    labels = list(range(1, len(workouts) + 1))
    plt.figure()
    plt.plot(labels, distances, marker="o")
    plt.title("Distance Progress")
    plt.xlabel("Workout #"); plt.ylabel("Distance (km)"); plt.grid(True); plt.tight_layout()
    if save_path:
        plt.savefig(save_path)  # сохраняем картинку
    if show:
        plt.show()
