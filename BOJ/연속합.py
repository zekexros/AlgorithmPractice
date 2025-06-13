import sys
n = int(input())
sequence = list(map(int, (input().split())))
sequence.insert(0, 0)
dp = [-sys.maxsize for i in range(len(sequence))]
dp[1] = sequence[1]
answer = dp[1]

for i in range(2, len(sequence)):
    dp[i] = max(dp[i-1] + sequence[i], sequence[i])
    answer = max(answer, dp[i])

print(answer)