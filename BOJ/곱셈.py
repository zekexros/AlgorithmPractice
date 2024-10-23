from datetime import datetime, timedelta

# 초기 시간 설정
initial_time = datetime.strptime("14:30", "%H:%M")

# 20분 추가
new_time = initial_time + timedelta(minutes=20)

# 결과 출력
print(new_time.strftime("%H:%M"))