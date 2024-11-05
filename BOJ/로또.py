def recursive(level, index):
    if level == 6:
        print(' '.join(arr))
        return
    else:
        for i in range(index, len(S)):
            arr.append(S[i])
            recursive(level+1, i+1)
            arr.pop()

while True:
    t = input()
    if t == '0':
        break
    else:
        case = list(map(str, t.split()))
        k = case[:1]
        S = case[1:]
        arr = []
        recursive(0, 0)
        print()