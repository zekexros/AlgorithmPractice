M, N = map(int, input().split())
board = []
result = []
for _ in range(0, M):
    board.append([str(i) for i in input()])

for row in range(0, M):
    for column in range(0, N):
        if column + 7 < N and row + 7 < M:
            a = sum([
            sum(1 for a, b in zip(board[row][column:column+8], "WBWBWBWB") if a != b),            
            sum(1 for a, b in zip(board[row+1][column:column+8], "BWBWBWBW") if a != b),
            sum(1 for a, b in zip(board[row+2][column:column+8], "WBWBWBWB") if a != b),
            sum(1 for a, b in zip(board[row+3][column:column+8], "BWBWBWBW") if a != b),
            sum(1 for a, b in zip(board[row+4][column:column+8], "WBWBWBWB") if a != b),
            sum(1 for a, b in zip(board[row+5][column:column+8], "BWBWBWBW") if a != b),
            sum(1 for a, b in zip(board[row+6][column:column+8], "WBWBWBWB") if a != b),
            sum(1 for a, b in zip(board[row+7][column:column+8], "BWBWBWBW") if a != b)
            ])

            b = sum([
            sum(1 for a, b in zip(board[row][column:column+8], "BWBWBWBW") if a != b),            
            sum(1 for a, b in zip(board[row+1][column:column+8], "WBWBWBWB") if a != b),
            sum(1 for a, b in zip(board[row+2][column:column+8], "BWBWBWBW") if a != b),
            sum(1 for a, b in zip(board[row+3][column:column+8], "WBWBWBWB") if a != b),
            sum(1 for a, b in zip(board[row+4][column:column+8], "BWBWBWBW") if a != b),
            sum(1 for a, b in zip(board[row+5][column:column+8], "WBWBWBWB") if a != b),
            sum(1 for a, b in zip(board[row+6][column:column+8], "BWBWBWBW") if a != b),
            sum(1 for a, b in zip(board[row+7][column:column+8], "WBWBWBWB") if a != b)
            ])
            result.append(min(a, b))

print(min(result))

M, N = map(int, input().split())
board = [input() for _ in range(M)]

def check(x, y):
    patterns = ['WBWBWBWB', 'BWBWBWBW']
    white_start = sum(sum(a != b for a, b in zip(board[i][y:y+8], patterns[i % 2])) for i in range(x, x+8))
    black_start = sum(sum(a != b for a, b in zip(board[i][y:y+8], patterns[(i+1) % 2])) for i in range(x, x+8))
    return min(white_start, black_start)

result = min(check(i, j) for i in range(M-7) for j in range(N-7))
print(result)