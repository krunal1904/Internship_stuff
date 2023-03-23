import random

level = 1
for i in range(1, 10):
    n1 = random.randint(10 ** (level - 1), (10 ** level) - 1)
    print(n1)
    n2 = random.randint(10 ** (level - 1), (10 ** level) - 1)
    print(n2)
    sum = n1 + n2
    print(sum)

    for k in range(1, 4):
        ans = int(input("enter sum of a+b:"))
        if ans != sum:
            print("incorrect")
            n1 = random.randint(10 ** (level - 1), (10 ** level) - 1)
            print(n1)
            n2 = random.randint(10 ** (level - 1), (10 ** level) - 1)
            print(n2)
            sum = n1 + n2
            if k == 3 and level >= 2:
                level -= 1
                print("level is downgrade to", level)
        else:
            print("answer is correct")
            level += 1
            print("level is", level)
            break

    if level == 5:
        print("game over")
        break

