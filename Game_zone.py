print("welcome to the game zone:")
input("press enter to continue:")
print()
print("you have 500 points to play games.")
print("game zone has various games to play select game to play:")
points=500
print("<------------------------------------->")
def movie_game():
    global points
    print("30 points required to play game.")
    points = points-30
    print("points after enter into game",points)
    import random
    score=[0]*2
    for r in range(1,3):
      print("round",r)
      lst=["Bahubali","Kgf","sersah","gitagovindam"]
      movie = random.choice(lst)
      movie = list(movie.lower())
      movie1 = ["*"] * len(movie)
      chance = 3
      while (movie != movie1 and chance > 0):
          print(movie1)
          a = input("enter character:")
          if a in movie:
              for i in range(len(movie)):
                  if movie[i] == a:
                      movie1[i] = a
              if (movie == movie1):
                  print("find succsesfully")
                  print(movie)
                  print("player get 20 points",)
                  points = points + 20
                  print("your points is",points)

          else:
              chance = chance - 1
              print("wrong answer you have", chance, "chances left")


def snake_ladder():
    global points
    print("30 points required to play game.")
    points = points - 30
    print(points)
    import random
    print("--snake-ledder game--")
    ledder = {1: 38, 4: 14, 8: 30, 21: 42, 28: 76, 50: 67, 71: 92, 80: 99}
    snake = {97: 78, 95: 56, 88: 24, 62: 18, 48: 26, 32: 10, 36: 6}
    cur_pos = 0
    new_pos = 0
    while new_pos < 100:
        cur_pos = new_pos
        print("you are at-:", cur_pos)
        d = int(input("enter number:"))  # d=random.randint(1,6)
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
    points=points+20
    print(points)

def rock_paper_scissor():
    global points
    print("30 points required to play game.")
    points = points - 30
    print(points)
    import random
    a = 1
    while (a):
        lst = ["s", "p", "r"]
        print("---------")
        default = random.choice(lst)
        # print(default)
        a = input("s=stone p=papaer r=scissor \nenter your choice from s,p,r,q:")
        print("your input is",a)
        if (default == "s" and a == "p") or (default == "r" and a == "s") or (default == "p" and a == "r"):
            print("you are winner")
            points=points+20
        elif (default == "p" and a == "s") or (default == "s" and a == "r") or (default == "r" and a == "p"):
            print("computer is winner")
            print(points)
        elif default == a:
            print("Draw")
        elif a == "q":
            print("game over")
            break
        else:
            print("invalid input")
    print("your points",points)


def tic_tac_toe():
    global points
    print("30 points required to play game.")
    points = points - 30
    print("your points after enter into game:-",points)
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    gameBoard = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    rows = 3

    def board():
        for x in range(rows):
            print(gameBoard[x], end='\n')

    def replace(num, change):
        num -= 1
        if (num == 0):
            gameBoard[0][0] = change
        elif (num == 1):
            gameBoard[0][1] = change
        elif (num == 2):
            gameBoard[0][2] = change
        elif (num == 3):
            gameBoard[1][0] = change
        elif (num == 4):
            gameBoard[1][1] = change
        elif (num == 5):
            gameBoard[1][2] = change
        elif (num == 6):
            gameBoard[2][0] = change
        elif (num == 7):
            gameBoard[2][1] = change
        elif (num == 8):
            gameBoard[2][2] = change

    def winner(gameBoard):
        if (gameBoard[0][0] == 'X' and gameBoard[0][1] == 'X' and gameBoard[0][2] == 'X') or (
                gameBoard[1][0] == 'X' and gameBoard[1][1] == 'X' and gameBoard[1][2] == 'X') or (
                gameBoard[2][0] == 'X' and gameBoard[2][1] == 'X' and gameBoard[2][2] == 'X') or (
                gameBoard[0][0] == 'X' and gameBoard[1][0] == 'X' and gameBoard[2][0] == 'X') or (
                gameBoard[0][1] == 'X' and gameBoard[1][1] == 'X' and gameBoard[2][1] == 'X') or (
                gameBoard[0][2] == 'X' and gameBoard[1][2] == 'X' and gameBoard[2][2] == 'X') or (
                gameBoard[0][0] == 'X' and gameBoard[1][1] == 'X' and gameBoard[2][2] == 'X') or (
                gameBoard[0][2] == 'X' and gameBoard[1][1] == 'X' and gameBoard[2][0] == 'X'):
            print("X has won!")
            points=points+20
            return "X"
        elif (gameBoard[0][0] == 'O' and gameBoard[0][1] == 'O' and gameBoard[0][2] == 'O') or \
                (gameBoard[1][0] == 'O' and gameBoard[1][1] == 'O' and gameBoard[1][2] == 'O') or \
                (gameBoard[2][0] == 'O' and gameBoard[2][1] == 'O' and gameBoard[2][2] == 'O') or \
                (gameBoard[0][0] == 'O' and gameBoard[1][0] == 'O' and gameBoard[2][0] == 'O') or \
                (gameBoard[0][1] == 'O' and gameBoard[1][1] == 'O' and gameBoard[2][1] == 'O') or \
                (gameBoard[0][2] == 'O' and gameBoard[1][2] == 'O' and gameBoard[2][2] == 'O') or \
                (gameBoard[0][0] == 'O' and gameBoard[1][1] == 'O' and gameBoard[2][2] == 'O') or \
                (gameBoard[0][2] == 'O' and gameBoard[1][1] == 'O' and gameBoard[2][0] == 'O'):
            print("O has won!")
            return "O"
        else:
            return "N"

    turn = 0
    while True:
        if (turn % 2 == 0):
            print("User is X")
            print("Computer is O")
            board()
            num = int(input("\nChoose a number [1-9]: "))
            if num in numbers:
                if (1 <= num <= 9):
                    replace(num, 'X')
                    numbers.remove(num)
                else:
                    print("Invalid input. Please try again.")
                turn += 1
            else:
                print("Invalid input. Please try again")
        else:
            while (True):
                computer = random.choice(numbers)
                print("\nCpu choice: ", computer)
                if (computer in numbers):
                    replace(computer, 'O')
                    numbers.remove(computer)
                    turn += 1
                    break

        win = winner(gameBoard)
        if win == "N" and len(numbers) == 0:
            print("Tie")
            break
        if (win != "N"):
            print("\nGame over! Thank you for playing :)")
            break
    print("your points is",points)
def flames():
    x = input("Enter first name:")
    y = input("Enter second name:")
    x = x.replace(" ", "")
    y = y.replace(" ", "")
    x = list(x)
    y = list(y)
    for i in x[:]:
        if i in y:
            x.remove(i)
            y.remove(i)
    count = len(x) + len(y)
    result = ["Friends", "Love", "Affection", "Marriage", "Enemy", "Siblings"]
    while len(result) > 1:
        split_index = (count % len(result) - 1)
        if (split_index >= 0):
            right = result[split_index + 1:]
            left = result[: split_index]
            result = right + left
        else:
            result = result[: len(result) - 1]
    print(result)

game=1
while(game and points>30):
    print("1)movie guess \n2)rock paper scissor \n3)snake and ladder \n4)tic-tak-toe  \n5)flames \n6)exit")
    game=int(input("select one game to play:-"))
    if game==1:
        movie_game()
    elif game==2:
        rock_paper_scissor()
    elif game == 3:
       snake_ladder()
    elif game == 4:
       tic_tac_toe()
    elif game == 5:
        flames()
    elif game == 6:
        print("thank you for playing.")
        print("you have total points",points)
        break
    else:
        print("invalid input")
else:
    print("not enough points to play")

print("<------------------------------------->")
print("you can puchase items from our restaurant using points.")
menu={
    'pizza':40,
    'burger':35,
    'meggi':40,
    'caca-cola':10,
    'sandwich':30,}

print("menu of restaurant:-")
for i,j in menu.items():
  print(i,":",j)

def generate_bill():
  global points
  sum = 0
  print("your bill is:-")
  for i, j in menu.items():
      for x, y in order.items():
          if i == x:
              print(i, ":", j * y)
              sum = sum + (j * y)
              points = points - sum
  print("total amount is:-",sum)
  print("total points left",points)

a=True
while(a and points>=50):
    print("<------------------------------------->")
    a = int(input("1)place order \n2)confirm order \n3)add order \n4)remove order \n5)generate bill \n6)exit\nenter your choice:-"))
    if a==1:
        n=int(input("how many items you want to order:"))
        order={}
        for k in range(n):
          item=input("please enter your order:-")
          q=int(input("enter quantity:-"))
          for i,j in menu.items():
              if i==item and points < (j * q):
                  print("not sufficient points.")
              else:
                  if i == item and points > (j * q):
                      order[item] = q
                      print("order is placed.")
                      break



    elif a==2:
        confirm =input("Confirm your order by pressing y/n:-")
        if (confirm == 'y'):
            print("dear customer, you have order", n, "items:=")
            print(order)
        else :
            print("order is not confirmed.")

    elif a==3:
        add_item=input("enter a item to add:")
        add_q=int(input("enter quantity:"))
        for i,j in order.items():
            if add_item in order.keys():
                add_q= j + add_q
                order[add_item] = add_q

            else:
                 order[add_item]=add_q

        print(order)

    elif a==4:
        print(order)
        print("remove an item:-")
        rm_item=input("enter item to remove:-")
        for i,j in order.items():
            if rm_item in order.keys():
                if j>1:
                    j=j-1
                    order[rm_item]=j
                else:
                    del order[rm_item]
            else:
                print("item not found.")
            break
        print(order)

    elif a==5:
        generate_bill()

    elif a==6:
        print("thank you")
        break


    else:
        print("invalid input")
else:
    print("not sufficient point")



