from itertools import permutations

k = int(input())
inequalities = input().split()
arr = [i for i in range(10)]
results = []
for p in permutations(arr, k+1):
    #(1,2,3) # > <
    result = []
    arr_p = list(p)
    for i in range(1, len(arr_p)):
        if inequalities[i-1] == '>' and arr_p[i-1] > arr_p[i]:
            result.append(str(arr_p[i-1]))
            if i == len(arr_p) - 1:
                result.append(str(arr_p[i]))
        elif inequalities[i-1] == '<' and arr_p[i-1] < arr_p[i]:
            result.append(str(arr_p[i-1]))
            if i == len(arr_p) - 1:
                result.append(str(arr_p[i]))
        else:
            break
    
    if len(result) == k+1:
        results.append(''.join(result))

print(max(results))
print(min(results))