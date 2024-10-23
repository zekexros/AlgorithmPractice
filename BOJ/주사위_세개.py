a, b, c = input().split()
reward = 0

if a == b == c:
    reward = 10000 + int(a) * 1000
    print(reward)
elif a != b and b != c and a != c:
     reward = max(int(a), int(b), int(c)) * 100
     print(reward)
else :
    if a == b or a == c:
        reward = 1000 + int(a) * 100
        print(reward)
    else:
        reward = 1000 + int(b) * 100
        print(reward)
    