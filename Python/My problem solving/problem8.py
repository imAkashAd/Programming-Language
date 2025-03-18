#	Write a program to find the euclidean distance between two coordinates.

import math

x1, y1 , x2, y2 = map(float, input("Enter the value of (x1,y1) and (x2, y2) separated by space: ").split())

print(f"(x1, y1) = ({x1}, {y1})")
print(f"(x2, y2) = ({x2}, {y2})")

euclidean_distance = math.sqrt((x1-y1)**2+(x2-y2)**2)

print(f"Euclidean distance = {euclidean_distance}")