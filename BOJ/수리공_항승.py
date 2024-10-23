# 입력 받기
hole_count, length = map(int, input().split())
places = list(map(int, input().split()))

# 물이 새는 위치 정렬
places.sort()

# 필요한 테이프 개수 초기화
count = 0

# 현재 위치 초기화
i = 0

# 모든 위치를 커버할 때까지 반복
while i < hole_count:
    # 현재 위치에서 테이프를 붙임
    count += 1
    # 테이프가 커버할 수 있는 범위 계산
    tape_end = places[i] + length - 1
    
    # 테이프가 커버할 수 있는 범위 내에 있는 모든 위치 건너뜀
    while i < hole_count and places[i] <= tape_end:
        i += 1

# 필요한 테이프 개수 출력
print(count)