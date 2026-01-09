N, M = map(int, input().split())
r, c, d = map(int, input().split())

matrix = []

# 북, 동, 남, 서
dx = [0, 1, 0, -1]
dy = [-1, 0, 1, 0]

for _ in range(N):
    matrix.append(list(map(int, input().split())))

count = 0

while True:
    # 1. 현재 칸 청소
    if matrix[r][c] == 0:
        matrix[r][c] = 2   # 청소 완료 표시
        count += 1

    moved = False

    # 2. 네 방향 탐색 (왼쪽부터)
    for _ in range(4):
        d = (d + 3) % 4  # 왼쪽 회전
        nr = r + dy[d]
        nc = c + dx[d]

        if matrix[nr][nc] == 0:
            r, c = nr, nc
            moved = True
            break

    # 3. 네 방향 모두 실패 → 후진
    if not moved:
        back_d = (d + 2) % 4
        br = r + dy[back_d]
        bc = c + dx[back_d]

        if matrix[br][bc] == 1:  # 벽이면 종료
            break
        else:
            r, c = br, bc

print(count)