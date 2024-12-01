n = int(input())
climbing_table = {}

for i in range(0, n):
    player = list(map(int, input().split(' ')))
    climbing_table[player[0]] = player[1::]
result = sorted(climbing_table.items(), key=lambda x: (x[1][0] * x[1][1] * x[1][2], sum(x[1]), x[0]))
players = [player for player, scores in result]
print(' '.join(list(str(player) for player in players[0:3])))
