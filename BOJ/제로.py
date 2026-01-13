K = int(input())
arr = []
for _ in range(K):
    a = int(input())
    if a == 0:
        arr = arr[:-1]
    else:
        arr.append(a)

print(sum(arr))