n = int(input())
costs = []
for _ in range(n):
    costs.append(list(map(int, input().split())))

# dp[i][j]: i번째 집을 j색으로 칠했을 때의 최소 비용
dp = [[0]*3 for _ in range(n)]
dp[0] = costs[0]  # 첫 번째 집의 비용을 초기값으로 설정

# 두 번째 집부터 마지막 집까지
for i in range(1, n):
    # 빨강(0)으로 칠할 경우
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + costs[i][0]
    # 초록(1)으로 칠할 경우
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + costs[i][1]
    # 파랑(2)으로 칠할 경우
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + costs[i][2]

# 마지막 집까지 칠했을 때의 최소 비용
print(min(dp[n-1]))