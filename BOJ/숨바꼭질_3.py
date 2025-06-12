import heapq

N, K = map(int, input().split())
distance = [float('inf')] * 100001  # 거리 배열
distance[N] = 0  # 시작점의 거리는 0
priority_queue = [(0, N)]  # (거리, 노드)

while priority_queue:
    dist, node = heapq.heappop(priority_queue)
    
    if node == K:
        print(dist)
        break
        
    if dist > distance[node]:
        continue

    if 0 <= 2 * node <= 100000 and dist < distance[2 * node]:
        distance[2 * node] = dist
        heapq.heappush(priority_queue, (dist, 2 * node))
    if 0 <= node + 1 <= 100000 and dist + 1 < distance[node + 1]:
        distance[node + 1] = dist + 1
        heapq.heappush(priority_queue, (dist + 1, node + 1))
    if 0 <= node - 1 <= 100000 and dist + 1 < distance[node - 1]:
        distance[node - 1] = dist + 1
        heapq.heappush(priority_queue, (dist + 1, node - 1))

