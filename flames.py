x=input("Enter first name:")
y=input("Enter second name:")
x=x.replace(" ","")
y=y.replace(" ","")
x=list(x)
y=list(y)
for i in x[:]:
    if i in y:
        x.remove(i)
        y.remove(i)
count=len(x)+len(y)
result = ["Friends", "Love", "Affection", "Marriage", "Enemy", "Siblings"]
while len(result) > 1 :
	split_index = (count % len(result) - 1)
	if (split_index>=0) :
		right = result[split_index + 1 : ]
		left = result[ : split_index]
		result = right + left
	else :
		result = result[ : len(result) - 1]
print(result)