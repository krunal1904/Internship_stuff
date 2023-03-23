import random

print("--snake-ledder game--")
ledder = {1: 38, 4: 14, 8: 30, 21: 42, 28: 76, 50: 67, 71: 92, 80: 99}
snake = {97: 78, 95: 56, 88: 24, 62: 18, 48: 26, 32: 10, 36: 6}
cur_pos = 0
new_pos = 0
while new_pos < 100:
    cur_pos = new_pos
    print("you are at-:", cur_pos)
    d = int(input("enter number:"))      # d=random.randint(1,6)
    print("your number is", d)
    new_pos = cur_pos + d

    # print("your position is", new_pos)
    for i, j in ledder.items():
        if i == new_pos:
            new_pos = j
    for i, j in snake.items():
        if i == new_pos:
            new_pos = j
    if cur_pos + d > 100:
        new_pos = cur_pos
    # print("again new position is:", new_pos)