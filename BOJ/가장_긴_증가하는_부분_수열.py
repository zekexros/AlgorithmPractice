progression_length = int(input())
progression = list(map(int, input().split()))
dp = [0] * progression_length

for i in range(0, progression_length):
    if i == 0:
        dp[0] = 1
    else:
        if progression[i] == min(progression[:i+1]):
            dp[i] = 1
        else:
            indicies = [index for (index, element) in enumerate(progression[:i]) if element < progression[i]]
            dp[i] = max([dp[j] for j in indicies]) + 1

print(max(dp))

