# import random
#
# point1 = 0
# point2 = 0
# for r in range(1, 3):
#     print("round", r)
#     for p in range(1, 3):
#         lst = ["Bahubali", "Kgf", "sersah", "gitagovindam"]
#         movie = random.choice(lst)
#         movie = list(movie.lower())
#         movie1 = ["*"] * len(movie)
#         chance = 3
#         print("player", p)
#         print("player", p, "has 3 chance")
#         while (movie != movie1 and chance > 0):
#            print(movie1)
#            a = input("enter character:")
#            if a in movie:
#                for i in range(len(movie)):
#                    if movie[i] == a:
#                         movie1[i] = a
#                if (movie == movie1):
#                   print("find succsesfully")
#                    print(movie)
#                    print("player", p, "get 5 points")
#                    if p == 1:
#                        point1 = point1 + 5
#                        print("point of player", p, "is", point1)
#                    else:
#                        point2 = point2 + 5
#                        print(point2)

           # else:
           #     chance = chance - 1
           #     print("wrong answer you have", chance, "chances left")


import random
score=[0]*2
for r in range(1,3):
  print("round",r)
  for p in range(1,3):
    lst=["Bahubali","Kgf","sersah","gitagovindam"]
    movie=random.choice(lst)
    movie=list(movie.lower())
    movie1=["*"]*len(movie)
    chance=3
    print("player",p)
    print("player",p,"has 3 chance")
    while(movie!=movie1 and chance>0):
        print(movie1)
        a=input("enter character:")
        if a in movie:
          for i in range(len(movie)):
            if movie[i]==a:
               movie1[i]=a
          if(movie==movie1):
            print("find succsesfully")
            print(movie)
            print("player",p,"get 5 points")
            score[p-1]=score[p-1]+5
            print("score is",score)
        else:
          chance=chance-1
          print("wrong answer you have",chance,"chances left")