from itertools import permutations

N = int(input())
expected_candidate = [''.join(map(str, p)) for p in permutations(range(1, 10), 3)]

def custom_filter(input, target, strike, ball):
    local_strike = 0
    local_ball = 0
    # 스트라이크 체크
    for s1, s2 in zip(input, target):
        if s1 == s2:
            local_strike +=1
        elif s2 in input:
            local_ball += 1
    return strike == local_strike and ball == local_ball

for i in range(0, N):
    number, strike_num, ball_num = input().split(" ")
    expected_candidate = list(filter(
        lambda x: custom_filter(x, number, int(strike_num), int(ball_num)), 
        expected_candidate
    ))
    
print(len(expected_candidate))