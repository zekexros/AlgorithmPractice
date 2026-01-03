from collections import deque

N = int(input())
matrix = []
visited = [[False] * N for _ in range(N)]
answers = []

def bfs(start):
    global matrix
    global visited
    global answers
    queue = deque()
    queue.append(start)
    visited[start[0]][start[1]] = True
    dx = [1, -1, 0, 0]
    dy = [0, 0, 1, -1]
    answer = 0
    while queue:
        popped = queue.popleft()
        answer += 1
        
        for i in range(4):
            newY = popped[0] + dy[i]
            newX = popped[1] + dx[i]

            if 0 <= newX < N and 0 <= newY < N and not visited[newY][newX] and matrix[newY][newX] == 1:
                queue.append((newY, newX))
                visited[newY][newX] = True
            
    answers.append(answer)

for i in range(N):
    col = input()
    matrix.append(list(map(int, list(col))))

for row in range(N):
    for col in range(N):
        if matrix[row][col] == 1 and not visited[row][col]:
            bfs((row, col))

print(len(answers))
for answer in sorted(answers):
    print(answer)

