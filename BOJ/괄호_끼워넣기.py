from collections import deque

S = input()
stack = deque()

for char in S:
    last = stack[-1] if stack else None
    if last and last == '(' and char == ')':
        stack.pop()
    else:
        stack.append(char)

print(len(stack))