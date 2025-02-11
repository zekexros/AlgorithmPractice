from collections import deque

def solution(priorities, location):
    q = deque()
    s = []
    for priority, pid in zip(priorities, range(0,len(priorities))):
        q.append((priority, pid))

    
    while q:
        process = q.popleft()

        if len([x for x in q if process[0] < x[0]]) == 0:
            s.append(process)
        else:
            q.append(process)

    return [(index, x) for index, x in enumerate(s) if x[1] == location][0][0] + 1

print(solution([2, 1, 3, 2], 2))