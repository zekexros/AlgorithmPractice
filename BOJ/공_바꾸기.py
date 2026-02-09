N, M = map(int, input().split())
listA = [i for i in range(1, N+1)]
for i in range(M):
    i, j = map(int, input().split())
    listA[i-1], listA[j-1] = listA[j-1], listA[i-1]

print(" ".join(map(str, listA)))