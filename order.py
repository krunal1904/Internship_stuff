menu={
    'rice':50,
    'roti':10,
    'dal':40,
    'buttermilk':10,
    'papad':10,}

print("menu of restaurant:-")
for i,j in menu.items():
  print(i,":",j)

n=int(input("how many items you want to order:"))
order={}
for k in range(n):
  item=input("please enter your order:-")
  q=int(input("enter quantity:-"))
  order[item]=q

print(order)

print("add new item:")
add_item=input("enter a item to add:")
add_q=int(input("enter quantity:"))
for i,j in order.items():
    if add_item in order.keys():
        add_q= j + add_q
        order[add_item] = add_q
        break
    else:
        order[add_item]=add_q
        break
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

confirm=int(input("please confirm your order by pressing 0:-"))
if(confirm==0):
  print("dear customer, you have order",n,"items:=")
  sum = 0
  print("your bill is:-")
  for i, j in menu.items():
      for x, y in order.items():
          if i == x:
              print(i, ":", j * y)
              sum = sum + (j * y)

  print("total amount is:-",sum)
