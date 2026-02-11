from collections import deque

case_num = int(input())

for _ in range(case_num):
    N, M = map(int, input().split())
    priorities = list(map(int, input().split()))

    queue = deque((priority, idx) for idx, priority in enumerate(priorities))
    printed_count = 0

    while queue:
        current = queue.popleft()

        # Check if there is any document with higher priority
        if any(current[0] < other[0] for other in queue):
            queue.append(current)
        else:
            printed_count += 1
            if current[1] == M:
                print(printed_count)
                break