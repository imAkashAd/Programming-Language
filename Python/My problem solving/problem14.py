# Calculate the angle between the hour hand and minute hand.
'''There can be two angles between hands; 
we need to print a minimum of two. 
Also, we need to print the floor of the final result angle. 
For example, if the final angle is 10.61, we need to print 10.
'''
import math

def clock_angle(hour, minute):
    if hour < 0 or minute < 0 or hour > 12 or minute >= 60:
        return "Invalid input"
    
    if hour == 12:
        hour = 0
    
    hour_angle = (hour * 30) + (minute * 0.5)  # Each hour is 30 degrees, each minute adds 0.5 degrees
    minute_angle = minute * 6  # Each minute is 6 degrees
    
    angle = abs(hour_angle - minute_angle)
    
    min_angle = min(angle, 360 - angle)  # Minimum of two possible angles
    
    return math.floor(min_angle)

hour = 10
minute = 15
print(clock_angle(hour, minute))
