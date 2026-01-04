N, K = map(int, input().split())
table = list(input())
person_indicies = [i for i, char in enumerate(table) if char == "P"]
count = 0

for index in person_indicies:
    a = min(max(index - K, 0), N - 1)
    b = min(max(index + K, 0), N - 1)
    for i in range(a,b+1):
        if table[i] == "H":
            table[i] = "E"
            count += 1
            break
        
print(count)