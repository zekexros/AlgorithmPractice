M, N = list(map(int, input().split()))
graph = []
tomato = [] # (row, col)
dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]
day = 0
for y in range(N):
    one_row = list(map(int, input().split()))
    for x, is_ripped_tomato in enumerate(one_row):
        if is_ripped_tomato == 1:
            tomato.append((y, x))
    graph.append(one_row)

if 0 in [item for row in graph for item in row]:
    while tomato:
        coppied = tomato.copy()
        tomato = []
        day += 1
        print(graph)

        for (row, col) in coppied:
            for i in range(4):
                new_x = dx[i] + col
                new_y = dy[i] + row
                if 0 <= new_x < M and 0 <= new_y < N and graph[new_y][new_x] == 0:
                    graph[new_y][new_x] = 1
                    tomato.append((new_y, new_x))
                    
    if 0 in [item for row in graph for item in row]:
        print(-1)
    else:
        print(day)
else:
    print(day)
