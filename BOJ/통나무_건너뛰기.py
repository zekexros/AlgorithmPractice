from collections import deque
T = int(input())

for _ in range(T):
    N = int(input())
    L = map(int, input().split())
    dq = deque()
    ascending = sorted(L)
    for i, e in enumerate(ascending):
        if i % 2 == 1:
            dq.appendleft(e)
        else:
            dq.append(e)
    
    level = -float('inf')
    for i in range(1, len(dq)):
        level = max(level, abs(dq[i] - dq[i-1]))
    
    level = max(level, abs(dq[0] - dq[len(dq) - 1]))
    print(level)