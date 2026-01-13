import sys
from collections import deque

N = int(sys.stdin.readline())
dq = deque()
for _ in range(N):
    enter = sys.stdin.readline().rstrip()
    if ' ' in enter:
        a, b = enter.split()
        if a == 'push_front':
            dq.appendleft(int(b))
        elif a == 'push_back':
            dq.append(int(b))
    elif enter == 'pop_front':
        if dq:
            print(dq.popleft())
        else:
            print(-1)
    elif enter == 'pop_back':
        if dq:
            print(dq.pop())
        else:
            print(-1)
    elif enter == 'size':
        print(len(dq))
    elif enter == 'empty':
        if dq:
            print(0)
        else:
            print(1)
    elif enter == 'front':
        if dq:
            print(dq[0])
        else:
            print(-1)
    elif enter == 'back':
        if dq:
            print(dq[len(dq) - 1])
        else:
            print(-1)