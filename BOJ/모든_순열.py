import itertools

value = int(input())

arr = list(i for i in range(1, value + 1))

nPr = list(itertools.permutations(arr, value))

for i in nPr:
    print(' '.join(map(str, i)))