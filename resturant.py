menu={
    'rice':50,
    'roti':10,
    'dal':40,
    'buttermilk':10,
    'papad':10,}

print("menu of restaurant:-")
for i,j in menu.items():
  print(i,":",j)

def generate_bill():
  sum = 0
  print("your bill is:-")
  for i, j in menu.items():
      for x, y in order.items():
          if i == x:
              print(i, ":", j * y)
              sum = sum + (j * y)

  print("total amount is:-",sum)

a=True
while(a):
    a = int(input("1)place order \n2)confirm order \n3)add order \n4)remove order \n5)generate bill \n6)exit\nenter your choice:-"))
    if a==1:
        n=int(input("how many items you want to order:"))
        order={}
        for k in range(n):
          item=input("please enter your order:-")
          q=int(input("enter quantity:-"))
          order[item]=q
        print("order is placed.")
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
                break
            else:
                order[add_item]=add_q
                break
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



