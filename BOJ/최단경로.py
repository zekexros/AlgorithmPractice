import heapq
import sys

input = sys.stdin.readline # 더 빠른 입력을 위해
INF = float('inf') # 무한대를 나타내는 값

V, E = map(int, input().split())
K = int(input())

graph = [[] for _ in range(V + 1)]
distances = [INF] * (V + 1) # 거리 배열 초기화

for _ in range(E):
    u, v, w = map(int, input().split())
    graph[u].append((v, w)) # (도착 정점, 가중치)

def dijkstra(start):
    pq = []
    heapq.heappush(pq, (0, start)) # (거리, 정점)
    distances[start] = 0

    while pq:
        dist, current_node = heapq.heappop(pq)

        # 이미 처리된 노드이거나, 더 짧은 경로가 이미 발견된 경우 무시
        if distances[current_node] < dist:
            continue

        for adjacent_node, weight in graph[current_node]:
            new_dist = dist + weight
            if new_dist < distances[adjacent_node]:
                distances[adjacent_node] = new_dist
                heapq.heappush(pq, (new_dist, adjacent_node))

dijkstra(K)

# 결과 출력
for i in range(1, V + 1):
    if distances[i] == INF:
        print("INF")
    else:
        print(distances[i])