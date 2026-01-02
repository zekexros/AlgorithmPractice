import heapq

N = int(input())
sorting = sorted([tuple(map(int, input().split()) ) for _ in range(N)])
pq = []
for d, w in sorting:
    heapq.heappush(pq, w)
    
    if len(pq) > d:
        heapq.heappop(pq)
    

print(sum(pq))