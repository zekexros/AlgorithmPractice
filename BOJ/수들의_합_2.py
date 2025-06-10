N, M = map(int, input().split())
sequence = list(map(int, input().split()))

start = 0
end = 0
answer = 0
current_sum = 0

while True:
    if M < current_sum:
        current_sum -= sequence[start]
        start += 1
    elif end == N:
        break
    else:
        current_sum += sequence[end]
        end += 1
    
    if current_sum == M:
        answer += 1
    
print(answer)