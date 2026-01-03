import heapq

pq = []
N = int(input())
M = int(input())
total_cost = 0
graph = [[] for _ in range(N+1)]
visited = [False] * (N + 1)
for _ in range(M):
    a, b, c = tuple(map(int, input().split()))
    graph[a].append((b, c))
    graph[b].append((a, c))

heapq.heappush(pq, (0, 1)) # (비용, 노드)

while pq:
    cost, node = heapq.heappop(pq)

    if visited[node]:
        continue
    else:
        visited[node] = True
        total_cost += cost
        
        for node, cost in graph[node]:
            if not visited[node]:
                heapq.heappush(pq, (cost, node))

print(total_cost)