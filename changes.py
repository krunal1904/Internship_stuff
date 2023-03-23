points=500
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
                  print(points)

          else:
              chance = chance - 1
              print("wrong answer you have", chance, "chances left")


movie_game()