from datetime import datetime, timedelta

hour, minute = input().split()
duration = int(input())

initial_time = datetime.strptime(f"{hour}:{minute}", "%H:%M")
new_time = initial_time + timedelta(minutes=duration)
time = new_time.strftime("%H %M").replace("00", "0").replace("24", "0")
hour, minute = time.split()

if hour.startswith("0") and len(hour) > 1:
    hour = hour[1:]
if minute.startswith("0") and len(minute) > 1:
    minute = minute[1:]

print(f"{hour} {minute}")