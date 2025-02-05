def solution(ingredient):
    answer = 0
    stack = []
    for i in ingredient:
        stack.append(i)
        if stack[-4:] == [1,2,3,1]:
            answer += 1
            for _ in range(0,4):
                stack.pop()
    return answer

print(solution([1, 3, 2, 1, 2, 1, 3, 1, 2]))