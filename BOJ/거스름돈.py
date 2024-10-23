def min_coins(n):
    # 큰 값으로 초기화
    dp = [float('inf')] * (n + 1)
    dp[0] = 0  # 0원을 거슬러 주는 데 필요한 동전 개수는 0개

    for i in range(1, n + 1):
        if i >= 2:
            dp[i] = min(dp[i], dp[i - 2] + 1)
        if i >= 5:
            dp[i] = min(dp[i], dp[i - 5] + 1)

    return dp[n] if dp[n] != float('inf') else -1

# 입력 받기
n = int(input())

# 최소 동전 개수 출력
print(min_coins(n))