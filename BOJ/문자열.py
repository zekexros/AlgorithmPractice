A, B = input().split()

window = (0, len(A) - 1)
standard = float('inf')

for i in range(len(B) - len(A) + 1):
    count = 0
    for i, j in zip(A, B[i: i+len(A): 1]):
        if i != j:
            count += 1
    
    standard = min(count, standard)


print(standard)