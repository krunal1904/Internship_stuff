import random

lst = ["Bahubali", "Kgf", "sersah", "gitagovindam"]
movie = random.choice(lst)
movie = list(movie.lower())
movie1 = ["*"] * len(movie)
chance = 5
while (movie != movie1 and chance > 0):
    print(movie1)
    a = input("enter character:")
    if a in movie:
        for i in range(len(movie)):
            if movie[i] == a:
                movie1[i] = a
    else:
        chance = chance - 1
        print("wrong answer you have", chance, "chances left")

print("find succsesfully")
print(movie)
