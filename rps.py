import random
a=1
while(a):
  lst=["s","p","r"]
  default=random.choice(lst)
  print(default)
  a=input("enter your choice from s,p,r,q:")
  print(a)
  if (default=="s" and a=="p") or (default=="r" and a=="s") or (default=="p" and a=="r"):
    print("you are winner")
  elif (default=="p" and a=="s") or (default=="s" and a=="r") or (default=="r" and a=="p"):
    print("computer is winner")
  elif default==a:
    print("Draw")
  elif a=="q":
    print("game over")
    break
  else:
    print("invalid input")