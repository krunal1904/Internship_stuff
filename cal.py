num1=int(input("enter firsr number:"))
num2=int(input("enter second number"))
operator=(input("enter operator"))

if operator=="+":
     print(num1+num2)
elif operator == "*":
    print(num1 * num2)
elif operator == "-":
      print(num1 - num2)
elif operator == "/":
        print(num1 / num2)
elif operator == "**":
         print(num1 ** num2)
else:
    print("invalid")


