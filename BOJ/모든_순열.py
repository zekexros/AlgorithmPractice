N = int(input())
elements = [i for i in range(1, N+1)]
array = [False] * N
answer = []

def permutation(level):
    if level == N:
        print(' '.join(map(str, answer)))
        return
    
    for i in range(0, N):
        if array[i]:
            continue

        answer.append(elements[i])
        array[i] = True

        permutation(level+1)

        answer.pop()
        array[i] = False
    
permutation(0)
