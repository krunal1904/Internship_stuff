import random

level = 1
for i in range(1, 10):
    n1 = random.randint(10 ** (level - 1), (10 ** level) - 1)
    print(n1)
    n2 = random.randint(10 ** (level - 1), (10 ** level) - 1)
    print(n2)
    sum = n1 + n2
    print(sum)
    ans = int(input("enter sum of a+b:"))

    if ans != sum:
        for k in range(1, 3):
            print("incorrect")
            n1 = random.randint(10 ** (level - 1), (10 ** level) - 1)
            print(n1)
            n2 = random.randint(10 ** (level - 1), (10 ** level) - 1)
            print(n2)
            sum = n1 + n2
            ans = int(input("enter sum of a+b:"))
            if k == 2 and level >= 2:
                level -= 1
                print("level is downgrade to", level)
    else:
        print("answer is correct")
        level += 1
        print("level is", level)


    if level == 5:
        print("game over")
        break

