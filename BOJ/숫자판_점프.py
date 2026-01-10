arr = [list(map(int, input().split())) for _ in range(5)]
set_arr = set()
dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]

def recursive(space, num, x, y):
    global dx
    global dy
    global arr
    global set_arr
    if space < 5:
        for i in range(4):
            new_x = x + dx[i]
            new_y = y + dy[i]
            if new_y in range(5) and new_x in range(5):
                recursive(space + 1, num + str(arr[new_y][new_x]), new_x, new_y)
    else:
        set_arr.add(num)


for y, row in enumerate(arr):
    for x, item in enumerate(row):
        recursive(0, str(item), x, y)



print(len(set_arr))