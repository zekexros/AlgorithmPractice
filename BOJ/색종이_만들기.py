N = int(input())
white_color_count = 0
blue_color_count = 0
matrix = []

for i in range(N):
    matrix.append(list(map(int, input().split())))

def is_same_color(x, y, size):
    color = matrix[x][y]
    for i in range(x, x + size):
        for j in range(y, y + size):
            if matrix[i][j] != color:
                return False
    return True

def divide(x, y, size):
    global white_color_count, blue_color_count

    if is_same_color(x, y, size):
        if matrix[x][y] == 0:
            white_color_count += 1
        else:
            blue_color_count += 1
        return

    half = size // 2

    divide(x, y, half)
    divide(x, y + half, half)
    divide(x + half, y, half)
    divide(x + half, y + half, half)

divide(0, 0, N)

print(white_color_count) 
print(blue_color_count)