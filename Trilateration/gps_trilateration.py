import tkinter as tk
from math import sqrt

WIDTH = 950
HEIGHT = 950
RADIUS = 150

root = tk.Tk()
root.title("Trilateration Demo")

canvas = tk.Canvas(root, width=WIDTH, height=HEIGHT, bg="white")
canvas.pack()

# Define the three reference points
points = [(50, 50, "red"), (550, 50, "green"), (300, 500, "blue")]

# Create circles around each reference point
circles = []
for point in points:
    x, y, color = point
    circle = canvas.create_oval(x - RADIUS, y - RADIUS, x + RADIUS, y + RADIUS, outline=color, width=2)
    circles.append(circle)

# Create a dot for the person's location
dot = canvas.create_oval(0, 0, 0, 0, fill="black")

def update_location(event):
    # Update the location of the person's dot
    canvas.coords(dot, event.x - 5, event.y - 5, event.x + 5, event.y + 5)

    # Calculate the distances from the person's location to each reference point
    distances = []
    for point in points:
        x, y, _ = point
        distance = sqrt((event.x - x)**2 + (event.y - y)**2)
        distances.append(distance)

    # Draw circles around each reference point using the calculated distances
    for i, circle in enumerate(circles):
        canvas.coords(circle, points[i][0] - distances[i], points[i][1] - distances[i],
                      points[i][0] + distances[i], points[i][1] + distances[i])

# Bind the canvas to the mouse movement event
canvas.bind("<B1-Motion>", update_location)

root.mainloop()
